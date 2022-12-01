
TRUNCATE TABLE `Audit.HumanResourcesEmployeeTriggerHistory`;
TRUNCATE TABLE `HumanResources.Employee`;


INSERT INTO `HumanResources.Employee`
                         (EmployeeFullName, Salary,Note)
VALUES        ('Peter Heller',95000.00,'Initial record insert');

SELECT c.* FROM `HumanResources.Employee` AS c;

SELECT h.* FROM `Audit.HumanResourcesEmployeeTriggerHistory` AS h;

UPDATE `HumanResources.Employee`
SET `Salary` = 100000,
    `Note` = 'More money',
    `TransactionNumber` = `TransactionNumber` + 1,
    `SysStartTime` = now()
	WHERE `EmployeeId`=1;

SELECT c.* FROM `HumanResources.Employee` AS c;

SELECT h.* FROM `Audit.HumanResourcesEmployeeTriggerHistory` AS h;

UPDATE
	MySQLTrigger.`HumanResources.Employee`
SET `Salary` = 100000,
    `Note` = 'More money',
    `TransactionNumber` = `TransactionNumber` + 1,
    `SysStartTime` = now()
	WHERE `EmployeeId`=1;

	
UPDATE
	MySQLTrigger.`HumanResources.Employee`
SET
	`Department` = 'Philosophy',
	`Salary` = 100000,
	`Note` = NULL,
	`TransactionNumber` = `TransactionNumber` + 1,
	`SysStartTime` = now()
WHERE
	`EmployeeId` = 1;
	
UPDATE
	MySQLTrigger.`HumanResources.Employee`
SET
	`Department` = 'Computer Science',
	`Salary` = 100000,
	`Note` = 'Corrected wrong department',
	`TransactionNumber` = `TransactionNumber` + 1,
	`SysStartTime` = now()
WHERE
	`EmployeeId` = 1;		

	
select DISTINCT EmployeeId  from MySQLTrigger.`HumanResources.uvw_FindAllRowsByHumanResourcesEmployeeId`;

select
	DISTINCT 
	t.RecordType,
	t.Note,
	t.TransactionNumber,
	t.EmployeeId,
	t.EmployeeFullName,
	t.Department,
	t.Salary,
	t.DBAction,
	t.SysStartTime,
	t.SysEndTime,
	t.UserAuthenticatedKey,
	t.AuditDateTimeStamp
from
	MySQLTrigger.`HumanResources.uvw_GetTransactionHistoryByPKY` as t
inner join MySQLTrigger.`HumanResources.uvw_FindAllRowsByHumanResourcesEmployeeId` as pky 
on
	t.EmployeeId = pky.EmployeeId
order by
	t.EmployeeId,
	t.TransactionNumber desc;
	
INSERT
	INTO
	`HumanResources.Employee`
                         (`EmployeeFullName`,
	`Salary`,
	`Note`,
	`SysStartTime`)
VALUES ('          ',
15000.00,
'Initial record insert',
now());

INSERT
	INTO
	`HumanResources.Employee`
                         (`EmployeeFullName`,
	`Salary`,
	`Note`,
	`SysStartTime`)
VALUES ('Fred Flintstone',
15000.00,
'Initial record insert',
now());

INSERT
INTO
	`HumanResources.Employee`
                         (`EmployeeFullName`,
	`Salary`,
	`Note`,
	`SysStartTime`
	)
VALUES ('Wilma Flintstone',
15000.00,
'Initial record insert',
now());

INSERT
	INTO
		`HumanResources.Employee`
                         (`EmployeeFullName`,
		`Salary`,
		`Note`,
		`SysStartTime`)
	VALUES ('Snaggle Puss',
	15000.00,
	'Initial record insert',
	now());

	INSERT
		INTO
			`HumanResources.Employee`
                         (`EmployeeFullName`,
			`Salary`,
			`Note`,
			`SysStartTime`)
		VALUES ('Mutley',
		15000.00,
		'Initial record insert',
		now());

		INSERT
			INTO
				`HumanResources.Employee`
                         (`EmployeeFullName`,
				`Salary`,
				`Note`,
				`SysStartTime`)
			VALUES ('Dick Dastardly',
			15000.00,
			'Initial record insert',
			now());
			
UPDATE
	`HumanResources.Employee`
SET
	`EmployeeFullName` = 'Mutley the dog',
	`Note` = 'Fixed the name',
	`TransactionNumber` = `TransactionNumber` + 1,
	`SysStartTime` = now()
WHERE
	`EmployeeId` = 2;
			
select DISTINCT EmployeeId  from MySQLTrigger.`HumanResources.uvw_FindAllRowsByHumanResourcesEmployeeId`;

select
	DISTINCT 
	t.RecordType,
	t.Note,
	t.TransactionNumber,
	t.EmployeeId,
	t.EmployeeFullName,
	t.Department,
	t.Salary,
	t.DBAction,
	t.SysStartTime,
	t.SysEndTime,
	t.UserAuthenticatedKey,
	t.AuditDateTimeStamp
from
	MySQLTrigger.`HumanResources.uvw_GetTransactionHistoryByPKY` as t
inner join MySQLTrigger.`HumanResources.uvw_FindAllRowsByHumanResourcesEmployeeId` as pky 
on
	t.EmployeeId = pky.EmployeeId
order by
	t.EmployeeId,
	t.TransactionNumber desc;

UPDATE MySQLTrigger.`HumanResources.Employee`
SET `Department`='Slate Rock Quarry',  `Note`='Bulk load', `TransactionNumber`=`TransactionNumber` + 1,  SysStartTime=Now()
WHERE EmployeeId>1;
	
select
	DISTINCT 
	t.RecordType,
	t.Note,
	t.TransactionNumber,
	t.EmployeeId,
	t.EmployeeFullName,
	t.Department,
	t.Salary,
	t.DBAction,
	t.SysStartTime,
	t.SysEndTime,
	t.UserAuthenticatedKey,
	t.AuditDateTimeStamp
from
	MySQLTrigger.`HumanResources.uvw_GetTransactionHistoryByPKY` as t
inner join MySQLTrigger.`HumanResources.uvw_FindAllRowsByHumanResourcesEmployeeId` as pky 
on
	t.EmployeeId = pky.EmployeeId
order by
	t.EmployeeId,
	t.TransactionNumber desc;
	