USE SqlServer2019Trigger
GO

TRUNCATE TABLE [Audit].[HumanResourcesEmployeeTriggerHistory]
TRUNCATE TABLE [HumanResources].[Employee]


INSERT INTO [HumanResources].[Employee]
                         (EmployeeFullName, Salary,Note)
VALUES        ('Peter Heller',95000.00,'Initial record insert')

SELECT * FROM [HumanResources].[Employee] AS c
SELECT * FROM [Audit].[HumanResourcesEmployeeTriggerHistory] AS h

UPDATE [HumanResources].[Employee]
SET Salary = 100000,
    Note = 'More money',
    TransactionNumber += 1,
    SysStartTime = SYSDATETIME()
	WHERE EmployeeId=1

UPDATE [HumanResources].[Employee]
SET Department = 'Philosophy',
    Note = NULL,
    TransactionNumber += 1,
    SysStartTime = SYSDATETIME()
	WHERE EmployeeId=1

UPDATE [HumanResources].[Employee]
SET Department = 'Computer Science',
    Note = 'Corrected wrong department',
    TransactionNumber += 1,
    SysStartTime = SYSDATETIME()
	WHERE EmployeeId=1

INSERT INTO [HumanResources].[Employee]
                         (EmployeeFullName, Salary,Note)
VALUES        ('Fred Flintstone',15000.00,'Initial record insert')
INSERT INTO [HumanResources].[Employee]
                         (EmployeeFullName, Salary,Note)
VALUES        ('Wilma Flintstone',15000.00,'Initial record insert')
INSERT INTO [HumanResources].[Employee]
                         (EmployeeFullName, Salary,Note)
VALUES        ('Snaggle Puss',15000.00,'Initial record insert')
INSERT INTO [HumanResources].[Employee]
                         (EmployeeFullName, Salary,Note)
VALUES        ('Mutley',15000.00,'Initial record insert')
INSERT INTO [HumanResources].[Employee]
                         (EmployeeFullName, Salary,Note)
VALUES        ('Dick Dastardly',15000.00,'Initial record insert')

UPDATE [HumanResources].[Employee]
SET Department = 'Slate Rock Quarry',
    Note = 'Bulk load',
    TransactionNumber += 1,
    SysStartTime = SYSDATETIME()
	WHERE EmployeeId>2

	
SELECT * FROM [HumanResources].[Employee] AS c
SELECT * FROM [Audit].[HumanResourcesEmployeeTriggerHistory] AS h

	SELECT 
	   audit.RecordType,
       audit.AuditDateTimeStamp,
       audit.DBAction,
       audit.EmployeeId,
       audit.EmployeeFullName,
       audit.Department,
       audit.Salary,
       audit.Note,
       audit.TransactionNumber,
       audit.UserAuthenticatedKey,
       audit.SysStartTime,
       audit.SysEndTime
from [Triggered].[uvw_HumanResourcesEmployeeTransactionAuditTrail] as audit
order by audit.EmployeeId,audit.TransactionNumber desc

select Audit.RecordType,
       Audit.AuditDateTimeStamp,
       Audit.DBAction,
       Audit.EmployeeId,
       Audit.EmployeeFullName,
       Audit.Department,
       Audit.Salary,
       Audit.Note,
       Audit.TransactionNumber,
       Audit.UserAuthenticatedKey,
       Audit.SysStartTime,
       Audit.SysEndTime FROM Triggered.[uitvf_HumanResourcesEmployeeTransactionAuditTrail](2) AS Audit
ORDER BY Audit.EmployeeId,Audit.TransactionNumber DESC


DELETE FROM [HumanResources].[Employee]
WHERE EmployeeId > 2;

SELECT * FROM [HumanResources].[Employee] AS c
SELECT * FROM [Audit].[HumanResourcesEmployeeTriggerHistory] AS h


	SELECT TransactionAuditTrail.RecordType,
       TransactionAuditTrail.AuditDateTimeStamp,
       TransactionAuditTrail.DBAction,
       TransactionAuditTrail.EmployeeId,
       TransactionAuditTrail.EmployeeFullName,
       TransactionAuditTrail.Department,
       TransactionAuditTrail.Salary,
       TransactionAuditTrail.Note,
       TransactionAuditTrail.TransactionNumber,
       TransactionAuditTrail.UserAuthenticatedKey,
       TransactionAuditTrail.SysStartTime,
       TransactionAuditTrail.SysEndTime
       FROM [Triggered].[uvw_HumanResourcesEmployeeTransactionAuditTrail] AS TransactionAuditTrail
ORDER BY TransactionAuditTrail.EmployeeId,TransactionAuditTrail.TransactionNumber DESC

SELECT * FROM  [Triggered].[uvw_FindAllRowsByHumanResourcesEmployeeId] AS id

SELECT distinct Audit.RecordType,
       Audit.AuditDateTimeStamp,
       Audit.DBAction,
       Audit.EmployeeId,
       Audit.EmployeeFullName,
       Audit.Department,
       Audit.Salary,
       Audit.Note,
       Audit.TransactionNumber,
       Audit.UserAuthenticatedKey,
       Audit.SysStartTime,
       Audit.SysEndTime
FROM [Triggered].[uvw_FindAllRowsByHumanResourcesEmployeeId] AS AllPKY
CROSS APPLY
[Triggered].[uitvf_HumanResourcesEmployeeTransactionAuditTrail](AllPKY.EmployeeId) AS Audit
ORDER BY Audit.EmployeeId,Audit.TransactionNumber DESC
