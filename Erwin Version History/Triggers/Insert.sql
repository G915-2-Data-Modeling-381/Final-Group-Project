CREATE OR ALTER TRIGGER %ProcedureOwner.%TriggerName ON %TableOwner.%TableName
%SQLServerWithOptions %Fire %Actions(",")
%ProcedureProps
AS

BEGIN

set xact_abort OFF;

BEGIN TRY

    DECLARE @DateTime2Now DATETIME2 =  SYSDATETIME();

    DECLARE 
    @DBAction CHAR(1)
    ,@IsDeleted CHAR(1)
    ,@NumberOfRows INT

    DECLARE @id integer
    DECLARE @tnum integer

    IF (EXISTS (SELECT * FROM inserted))
    BEGIN
        SET @DBAction = 'I'
        SET @IsDeleted = 'N'

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

ENABLE TRIGGER %ProcedureOwner.%TriggerName ON %TableOwner(.)%TableName

%DBMSDelim