CREATE OR ALTER TRIGGER %ProcedureOwner.%TriggerName ON %TableOwner.%TableName
%SQLServerWithOptions %Fire %Actions(",")
%ProcedureProps
AS
/* Customized Erwin Builtin Trigger */
/* %Actions(",") trigger on %TableOwner(.)%TableName */
/* default body fox %ProcedureOwner(.)%TriggerName */

BEGIN
/*
	Update Trigger with upfront intialization for the variables to be inserted into
	the trigger history table
*/
--
--  https://stackoverflow.com/questions/884334/tsql-try-catch-transaction-in-trigger
--

set xact_abort OFF;

BEGIN TRY

    DECLARE @DateTime2Now DATETIME2 =  SYSDATETIME();

    DECLARE 
    @DBAction CHAR(1)
    ,@IsDeleted CHAR(1)
    -- ,@NoteDefault CHAR(200)
    -- ,@Note CHAR(200)
    -- ,@FinalNote CHAR(200)
    ,@NumberOfRows INT
    -- ,@nullcnt INT
    -- ,@validcnt INT
    -- ,@errno INT
    -- ,@severity INT
    -- ,@state INT
    -- ,@errmsg VARCHAR(255);
    
    --	The Trigger determines DBAction 
    --  The only actions that we will deal with are Update and Delete.  Inserts are ignored

    DECLARE @id integer
    DECLARE @tnum integer

    IF (EXISTS (SELECT * FROM inserted))
    BEGIN
        SET @DBAction = 'I'
        SET @IsDeleted = 'N'

        -- SET @NoteDefault = 'Database Row Added. Transaction: 1. '

        -- SELECT @id = %TableNameId, @Note = Note 
        -- FROM Inserted

        SELECT @NumberOfRows = @@rowcount

        ----------------------------------
        ---------- Trigger code ----------

        insert into Audit.%TableNameHistory
        (
            %ForEachColumn(Parent, ",") { %ColName }

            ,TransactionNumber
            ,IsDeleted
            ,DBAction

        )
        select
            %ForEachColumn(Parent, ", ") { %ColName }

            ,1
            ,@IsDeleted
            ,@DBAction

        from Inserted ORDER BY %TableNameId, SysStartTime

        PRINT @id
        -- PRINT(@Note)
        -- PRINT(@NoteDefault)
        -- SELECT @FinalNote = CONCAT(@NoteDefault, @Note)



        -- UPDATE  tbl SET tbl.Note = @FinalNote FROM Audit.%TableNameHistory tbl INNER JOIN inserted i ON tbl.%TableNameId = i.%TableNameId ORDER BY tbl.TransactionNumber DESC

        --------------- END --------------
        ----------------------------------














    END;

    


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

ENABLE TRIGGER %ProcedureOwner(.)%TriggerName ON %TableOwner(.)%TableName

%DBMSDelim