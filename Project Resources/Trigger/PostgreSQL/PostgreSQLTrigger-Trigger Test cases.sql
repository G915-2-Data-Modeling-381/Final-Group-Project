TRUNCATE "Audit"."HumanResourcesEmployeeTriggerHistory" RESTART identity;
TRUNCATE "HumanResources"."Employee" RESTART identity;

SELECT "EmployeeId", "EmployeeFullName", "Department", "Salary", "Note",  "TransactionNumber", "UserAuthenticatedKey", "SysStartTime", "SysEndTime"
FROM "HumanResources"."Employee";

SELECT "HumanResourcesEmployeeTriggerHistoryId", "AuditDateTimeStamp", "EmployeeId", "DBAction", "EmployeeFullName", "Department", "Salary", "Note", "TransactionNumber", "UserAuthenticatedKey", "SysStartTime", "SysEndTime"
FROM "Audit"."HumanResourcesEmployeeTriggerHistory";



INSERT INTO "HumanResources"."Employee"
("EmployeeFullName", "Department", "Salary", "Note",  "TransactionNumber", "UserAuthenticatedKey", "SysStartTime", "SysEndTime")
VALUES('Peter Heller', 'Computer Science'::character varying, 95000, 'Intial row insert',1, 1, now(), '9999-12-31 00:00:00'::timestamp without time zone);


UPDATE "HumanResources"."Employee"
SET "Salary"=100000, "Note"='Salery increase', "TransactionNumber"="TransactionNumber"+1,"Department" = 'Rock Climbing',"SysStartTime" =now()
WHERE "EmployeeId"=1;

UPDATE "HumanResources"."Employee"
SET "Salary"=100000, "Note"=null, "TransactionNumber"="TransactionNumber"+1,"Department" = 'Cs Department',"SysStartTime" =now()
WHERE "EmployeeId"=1;

UPDATE "HumanResources"."Employee"
SET "Salary"=100000, "Note"='Added a comment to replace the null', "TransactionNumber"="TransactionNumber"+1,"Department" = 'Cs Department',"SysStartTime" =now()
WHERE "EmployeeId"=1;

DELETE FROM "HumanResources"."Employee" WHERE "EmployeeId"=1;

INSERT INTO "HumanResources"."Employee"
("EmployeeFullName", "Department", "Salary", "Note", "TransactionNumber", "UserAuthenticatedKey", "SysStartTime", "SysEndTime")
VALUES('Barney Rubble', 'Yabba Dabba Du'::character varying, 95000, 'Intial row insert',  1, 1, now(), '9999-12-31 00:00:00'::timestamp without time zone);

UPDATE "HumanResources"."Employee"
SET "Salary"=100000, "Note"='Salery increase', "TransactionNumber"="TransactionNumber"+1,"Department" = 'Rock Climbing',"SysStartTime" =now()
WHERE "EmployeeId"=2;


SELECT "EmployeeId", "EmployeeFullName", "Department", "Salary", "Note",  "TransactionNumber", "UserAuthenticatedKey", "SysStartTime", "SysEndTime"
FROM "HumanResources"."Employee";

SELECT "HumanResourcesEmployeeTriggerHistoryId", "AuditDateTimeStamp", "EmployeeId", "DBAction", "EmployeeFullName", "Department", "Salary", "Note", "TransactionNumber", "UserAuthenticatedKey", "SysStartTime", "SysEndTime"
FROM "Audit"."HumanResourcesEmployeeTriggerHistory";

INSERT INTO "HumanResources"."Employee"
                         ("EmployeeFullName","Salary","Note","SysStartTime")
VALUES        ('Fred Flintstone',15000.00,'Initial record insert' ,now());

INSERT INTO "HumanResources"."Employee"
                         ("EmployeeFullName","Salary","Note","SysStartTime")
VALUES        ('Wilma Flintstone',15000.00,'Initial record insert' ,now());

INSERT INTO "HumanResources"."Employee"
                         ("EmployeeFullName","Salary","Note","SysStartTime")
VALUES        ('Snaggle Puss',15000.00,'Initial record insert' ,now());

INSERT INTO "HumanResources"."Employee"
                         ("EmployeeFullName","Salary","Note","SysStartTime")
VALUES        ('Mutley',15000.00,'Initial record insert' ,now());

INSERT INTO "HumanResources"."Employee"
                          ("EmployeeFullName","Salary","Note","SysStartTime")
VALUES        ('Dick Dastardly',15000.00,'Initial record insert' ,now());

UPDATE "HumanResources"."Employee"
SET "Department" = 'Slate Rock Quarry',
    "Note" = 'Bulk load',
    "TransactionNumber" = "TransactionNumber" + 1,
    "SysStartTime" = now()
	WHERE "EmployeeId" >2
	
SELECT h."EmployeeId", h."EmployeeFullName", h."Department", h."Salary", h."Note",  h."TransactionNumber", h."UserAuthenticatedKey", h."SysStartTime", "SysEndTime"
FROM "HumanResources"."Employee" as h;


select
	distinct 
	h."RecordType",
	h."Note",
	h."TransactionNumber",
	h."SysStartTime",
	h."SysEndTime",
	h."EmployeeId",
	h."EmployeeFullName",
	h."Department",
	h."Salary",
	h."UserAuthenticatedKey",
	h."HumanResourcesEmployeeTriggerHistoryId",
	h."AuditDateTimeStamp",
	h."DBAction"

from
	"HumanResources"."uvw_GetTransactionHistoryByPKY" as h
inner join "HumanResources"."uvw_FindAllUniquePkyForHumanResourcesEmployee" as pky
on
	pky."EmployeeId" = h."EmployeeId"
--where h."EmployeeId" =3	
order by "EmployeeId", "TransactionNumber" desc;	