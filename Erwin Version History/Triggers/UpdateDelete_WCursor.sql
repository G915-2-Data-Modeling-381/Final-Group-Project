

CREATE OR ALTER TRIGGER %ProcedureOwner.%TriggerName ON %TableOwner(.)%TableName
%SQLServerWithOptions %Fire %Actions(",")
%ProcedureProps
AS

BEGIN

set xact_abort OFF;

BEGIN TRY


    DECLARE TrigTempUpdateDelete_Cursor CURSOR FOR

    SELECT %TableNameId FROM Deleted

    DECLARE @cursorID int

    OPEN TrigTempUpdateDelete_Cursor;

    FETCH NEXT FROM TrigTempUpdateDelete_Cursor INTO @cursorID

    WHILE @@FETCH_STATUS = 0

    BEGIN

        ----------------------------------
        ----- Variable Declaration -------
        ----------------------------------

        DECLARE 
        @DBAction CHAR(1)
        ,@IsDeleted CHAR(1)
        ,@SysEnd_as_StartTime DATETIME2
        ,@NumberOfRows INT
        ,@Note1 NVARCHAR(99)
        ,@Note2 NVARCHAR(99)

        DECLARE @tnum integer

        DECLARE @DateTime2Now DATETIME2(7);
        SET @DateTime2Now = SYSDATETIME();

        IF (EXISTS (SELECT * FROM Inserted) AND EXISTS (SELECT * FROM Deleted))
        BEGIN
            SELECT TOP(1)
                @tnum = TransactionNumber + 1
                -- ,@SysEnd_as_StartTime = SysEndTime
                
            FROM Audit.%TableNameHistory WHERE %TableNameId = @cursorID ORDER BY TransactionNumber DESC

            SET @DBAction = 'U'
            SET @IsDeleted = 'N'

                            SELECT @Note1 = Inserted.Note, @Note2 = Deleted.Note FROM Inserted INNER JOIN Deleted ON Inserted.%TableNameId = Deleted.%TableNameId AND Inserted.%TableNameId = @cursorID

                            IF @Note1 = @Note2 
                            BEGIN 
                                SET @Note1 = NULL
                            END; 
                            -- ELSE 
                            -- BEGIN 
                            --     -- SET @Note1 = SELECT Note FROM INSERTED WHERE %TableNameId = @cursorID
                            -- END;

                            UPDATE 
                                %TableOwner.%TableName
                            SET 
                                SysStartTime = (SELECT SysEndTime from Deleted d where d.%TableNameId = @cursorID )
                                --,SysEndTime = SYSDATETIME()

                                ,SysEndTime = @DateTime2Now
                                ,Note = @Note1

                            FROM 
                                inserted
                            --     %TableOwner.%TableName c
                            -- INNER JOIN 
                            --     Inserted i 
                            -- ON c.%TableNameId = i.%TableNameId


        END;


        ELSE IF (EXISTS (SELECT * FROM Deleted))
        BEGIN
            SELECT TOP(1)
                @tnum = TransactionNumber + 1
                -- ,@SysEnd_as_StartTime = SysEndTime
                
                
            FROM Audit.%TableNameHistory WHERE %TableNameId = @cursorID ORDER BY TransactionNumber DESC

            -- SET @Note = CONCAT('Row Deleted. Transaction number: ', @tnum)
            SET @DBAction = 'D'
            SET @IsDeleted = 'Y'
        END;

        SELECT @NumberOfRows = @@rowcount

                ----------------------------------
                -------- Trigger code ------------
                ----------------------------------

                    insert into Audit.%TableNameHistory
                    (
                        %ForEachColumn(Parent, ",") { %ColName }

                        ,TransactionNumber
                        ,IsDeleted
                        ,DBAction
                    )
                    select
                        %ForEachColumn(Parent, ", ") { %ColName }

                        ,@tnum
                        ,@IsDeleted
                        ,@DBAction

                    from Deleted where %TableNameId = @cursorID
                ----------------------------------
                -------- Trigger  End ------------
                ----------------------------------

        FETCH NEXT FROM TrigTempUpdateDelete_Cursor INTO @cursorID


    END;

    CLOSE TrigTempUpdateDelete_Cursor;

    DEALLOCATE TrigTempUpdateDelete_Cursor;


END TRY
BEGIN CATCH
   SELECT ERROR_MESSAGE() AS [Error Message]
         ,ERROR_LINE() AS ErrorLine
         ,ERROR_NUMBER() AS [Error Number]  
         ,ERROR_SEVERITY() AS [Error Severity]  
         ,ERROR_STATE() AS [Error State]  
END CATCH

END;

%DBMSDelim

ENABLE TRIGGER %ProcedureOwner.%TriggerName ON %TableOwner(.)%TableName
%DBMSDelim