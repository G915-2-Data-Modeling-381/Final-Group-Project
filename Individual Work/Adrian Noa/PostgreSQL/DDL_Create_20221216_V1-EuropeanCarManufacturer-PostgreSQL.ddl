
DROP TABLE IF EXISTS "Audit"."CustomerMarketingInformationHistory";

DROP TABLE IF EXISTS "Audit"."ManufacturerVehicleStockHistory";

DROP TABLE IF EXISTS "Audit"."ManufacturerVehicleMakeHistory";

DROP TABLE IF EXISTS "Audit"."CountryHistory";

DROP TABLE IF EXISTS "Audit"."CustomerHistory";

DROP TABLE IF EXISTS "Audit"."ManufacturerVehicleModelHistory";

DROP TABLE IF EXISTS "Audit"."SalesOrderVehicleDetailHistory";

DROP TABLE IF EXISTS "Audit"."SalesOrderVehicleHistory";

DROP TABLE IF EXISTS "Audit"."StaffHistory";

DROP TABLE IF EXISTS "Sales"."CustomerMarketingInformation";

DROP TABLE IF EXISTS "Sales"."SalesOrderVehicleDetail";

DROP TABLE IF EXISTS "Sales"."SalesOrderVehicle";

DROP TABLE IF EXISTS "HumanResources"."Staff";

DROP TABLE IF EXISTS "Sales"."Customer";

DROP TABLE IF EXISTS "Production"."ManufacturerVehicleStock";

DROP TABLE IF EXISTS "Production"."ManufacturerVehicleModel";

DROP TABLE IF EXISTS "Production"."ManufacturerVehicleMake";

DROP TABLE IF EXISTS "Sales"."Country";

DROP TABLE IF EXISTS "DbSecurity"."UserAuthorization";

DROP SCHEMA IF EXISTS "ApplicationDomains";

DROP SCHEMA IF EXISTS "Audit";

DROP SCHEMA IF EXISTS "dBitChar";

DROP SCHEMA IF EXISTS "dBlob";

DROP SCHEMA IF EXISTS "DbSecurity";

DROP SCHEMA IF EXISTS "dCheck";

DROP SCHEMA IF EXISTS "dDate";

DROP SCHEMA IF EXISTS "dDefault";

DROP SCHEMA IF EXISTS "dNumber";

DROP SCHEMA IF EXISTS "dString";

DROP SCHEMA IF EXISTS "HumanResources";

DROP SCHEMA IF EXISTS "Output";

DROP SCHEMA IF EXISTS "Production";

DROP SCHEMA IF EXISTS "Sales";

CREATE SCHEMA "ApplicationDomains";

CREATE SCHEMA "Audit";

CREATE SCHEMA "dBitChar";

CREATE SCHEMA "dBlob";

CREATE SCHEMA "DbSecurity";

CREATE SCHEMA "dCheck";

CREATE SCHEMA "dDate";

CREATE SCHEMA "dDefault";

CREATE SCHEMA "dNumber";

CREATE SCHEMA "dString";

CREATE SCHEMA "HumanResources";

CREATE SCHEMA "Output";

CREATE SCHEMA "Production";

CREATE SCHEMA "Sales";

CREATE TABLE "Sales"."Country"
( 
	"CountryId"          integer  NOT NULL ,
	"CountryName"        char(20)  NOT NULL ,
	"CountryISO2"        char(2)  NOT NULL   DEFAULT  'N/A',
	"CountryISO3"        char(3)  NOT NULL ,
	"SalesRegion"        varchar(20)  NOT NULL   DEFAULT  'N/A',
	"Note"               varchar(99)  NULL ,
	CONSTRAINT "CK_Template_ArbitraryText_1917532054" CHECK  ( "Note" LIKE '%' ) ,
	"SysStartTime"       timestamp  NULL   DEFAULT  CURRENT_TIMESTAMP,
	"SysEndTime"         timestamp  NULL   DEFAULT  CURRENT_TIMESTAMP,
	"UserAuthenticatedKey" integer  NULL 
);

CREATE UNIQUE INDEX "PKCountry" ON "Sales"."Country"
( 
	"CountryId"
);

CREATE UNIQUE INDEX "XAK1Country" ON "Sales"."Country"
( 
	"CountryName",
	"CountryISO2",
	"CountryISO3"
);

CREATE INDEX "XIF1Country" ON "Sales"."Country"
( 
	"UserAuthenticatedKey"
);

CREATE TABLE "Audit"."CountryHistory"
( 
	"CountryHistoryId"   integer  NOT NULL ,
	"TransactionNumber"  smallint  NOT NULL   DEFAULT  0,
	"IsDeleted"          char(1)  NOT NULL ,
	"DBAction"           char(1)  NOT NULL ,
	"Note"               varchar(99)  NULL ,
	CONSTRAINT "CK_Template_ArbitraryText_60381090" CHECK  ( "Note" LIKE '%' ) ,
	"SysStartTime"       timestamp  NOT NULL   DEFAULT  CURRENT_TIMESTAMP,
	"SysEndTime"         timestamp  NOT NULL   DEFAULT  CURRENT_TIMESTAMP,
	"CountryId"          integer  NOT NULL ,
	"CountryISO3"        char(3)  NULL ,
	"CountryName"        char(20)  NULL ,
	"CountryISO2"        char(2)  NULL ,
	"SalesRegion"        varchar(20)  NULL ,
	"UserAuthenticatedKey" integer  NULL 
);

CREATE UNIQUE INDEX "XPKCountryHistory" ON "Audit"."CountryHistory"
( 
	"CountryHistoryId"
);

CREATE TABLE "Sales"."Customer"
( 
	"CustomerId"         integer  NOT NULL ,
	"CustomerName"       varchar(100)  NOT NULL ,
	CONSTRAINT "CK_Template_ArbitraryText_1921144991" CHECK  ( "CustomerName" LIKE '%' ) ,
	"CustomerAddress1"   varchar(50)  NOT NULL ,
	"CustomerAddress2"   varchar(50)  NULL ,
	"CustomerPostalCode" varchar(50)  NULL   DEFAULT  'N/A',
	"CustomerTown"       varchar(50)  NULL   DEFAULT  'N/A',
	"CountryId"          integer  NOT NULL ,
	"Note"               varchar(99)  NULL ,
	CONSTRAINT "CK_Template_ArbitraryText_1196703570" CHECK  ( "Note" LIKE '%' ) ,
	"SysStartTime"       timestamp  NULL   DEFAULT  CURRENT_TIMESTAMP,
	"SysEndTime"         timestamp  NULL   DEFAULT  CURRENT_TIMESTAMP,
	"UserAuthenticatedKey" integer  NULL 
);

CREATE UNIQUE INDEX "PKCustomer" ON "Sales"."Customer"
( 
	"CustomerId"
);

CREATE UNIQUE INDEX "XAK1Customer" ON "Sales"."Customer"
( 
	"CustomerName",
	"CustomerAddress1",
	"CustomerAddress2"
);

CREATE INDEX "XIF1Customer" ON "Sales"."Customer"
( 
	"CountryId"
);

CREATE INDEX "XIF2Customer" ON "Sales"."Customer"
( 
	"UserAuthenticatedKey"
);

CREATE TABLE "Audit"."CustomerHistory"
( 
	"CustomerHistoryId"  integer  NOT NULL ,
	"TransactionNumber"  smallint  NOT NULL   DEFAULT  0,
	"IsDeleted"          char(1)  NOT NULL ,
	"DBAction"           char(1)  NOT NULL ,
	"Note"               varchar(99)  NULL ,
	CONSTRAINT "CK_Template_ArbitraryText_1083285335" CHECK  ( "Note" LIKE '%' ) ,
	"SysStartTime"       timestamp  NOT NULL   DEFAULT  CURRENT_TIMESTAMP,
	"SysEndTime"         timestamp  NOT NULL   DEFAULT  CURRENT_TIMESTAMP,
	"CustomerId"         integer  NOT NULL ,
	"CustomerName"       varchar(100)  NULL ,
	"CustomerAddress1"   varchar(50)  NULL ,
	"CustomerAddress2"   varchar(50)  NULL ,
	"CustomerTown"       varchar(50)  NULL ,
	"CustomerPostalCode" varchar(50)  NULL ,
	"CountryId"          integer  NULL ,
	"UserAuthenticatedKey" integer  NULL 
);

CREATE UNIQUE INDEX "XPKCustomerHistory" ON "Audit"."CustomerHistory"
( 
	"CustomerHistoryId"
);

CREATE TABLE "Sales"."CustomerMarketingInformation"
( 
	"CustomerMarketingInformationId" integer  NOT NULL ,
	"IsCustomerReseller" char(1)  NOT NULL ,
	"IsCustomerCreditRisk" char(1)  NOT NULL ,
	"CustomerSpendCapacity" varchar(25)  NOT NULL ,
	"Note"               varchar(99)  NULL ,
	CONSTRAINT "CK_Template_ArbitraryText_1278029652" CHECK  ( "Note" LIKE '%' ) ,
	"SysStartTime"       timestamp  NULL   DEFAULT  CURRENT_TIMESTAMP,
	"SysEndTime"         timestamp  NULL   DEFAULT  CURRENT_TIMESTAMP,
	"UserAuthenticatedKey" integer  NULL 
);

CREATE UNIQUE INDEX "XPKCustomerMarketingInformation" ON "Sales"."CustomerMarketingInformation"
( 
	"CustomerMarketingInformationId"
);

CREATE UNIQUE INDEX "XIF1CustomerMarketingInformation" ON "Sales"."CustomerMarketingInformation"
( 
	"CustomerMarketingInformationId"
);

CREATE INDEX "XIF2CustomerMarketingInformation" ON "Sales"."CustomerMarketingInformation"
( 
	"UserAuthenticatedKey"
);

CREATE TABLE "Audit"."CustomerMarketingInformationHistory"
( 
	"CustomerMarketingHistoryId" integer  NOT NULL ,
	"TransactionNumber"  smallint  NOT NULL   DEFAULT  0,
	"IsDeleted"          char(1)  NOT NULL ,
	"DBAction"           char(1)  NOT NULL ,
	"Note"               varchar(99)  NULL ,
	CONSTRAINT "CK_Template_ArbitraryText_1049413223" CHECK  ( "Note" LIKE '%' ) ,
	"SysStartTime"       timestamp  NOT NULL   DEFAULT  CURRENT_TIMESTAMP,
	"SysEndTime"         timestamp  NOT NULL   DEFAULT  CURRENT_TIMESTAMP,
	"CustomerMarketingInformationId" integer  NOT NULL ,
	"IsCustomerReseller" char(1)  NULL ,
	"IsCustomerCreditRisk" char(1)  NULL ,
	"CustomerSpendCapacity" varchar(25)  NULL ,
	"UserAuthenticatedKey" integer  NULL 
);

CREATE UNIQUE INDEX "XPKCustomerMarketingInformation" ON "Audit"."CustomerMarketingInformationHistory"
( 
	"CustomerMarketingHistoryId"
);

CREATE TABLE "Production"."ManufacturerVehicleMake"
( 
	"ManufacturerVehicleMakeId" integer  NOT NULL ,
	"ManufacturerVehicleMakeName" varchar(100)  NOT NULL ,
	"CountryId"          integer  NOT NULL ,
	"MarketingType"      varchar(80)  NOT NULL   DEFAULT  'N/A',
	"Note"               varchar(99)  NULL ,
	CONSTRAINT "CK_Template_ArbitraryText_440747023" CHECK  ( "Note" LIKE '%' ) ,
	"SysStartTime"       timestamp  NULL   DEFAULT  CURRENT_TIMESTAMP,
	"SysEndTime"         timestamp  NULL   DEFAULT  CURRENT_TIMESTAMP,
	"UserAuthenticatedKey" integer  NULL 
);

CREATE UNIQUE INDEX "PKMake" ON "Production"."ManufacturerVehicleMake"
( 
	"ManufacturerVehicleMakeId"
);

CREATE UNIQUE INDEX "XAK1ManufacturerVehicleMake" ON "Production"."ManufacturerVehicleMake"
( 
	"ManufacturerVehicleMakeName"
);

CREATE INDEX "XIF1ManufacturerVehicleMake" ON "Production"."ManufacturerVehicleMake"
( 
	"CountryId"
);

CREATE INDEX "XIF2ManufacturerVehicleMake" ON "Production"."ManufacturerVehicleMake"
( 
	"UserAuthenticatedKey"
);

CREATE TABLE "Audit"."ManufacturerVehicleMakeHistory"
( 
	"ManufacturerVehicleMakeHistoryId" integer  NOT NULL ,
	"TransactionNumber"  smallint  NOT NULL   DEFAULT  0,
	"IsDeleted"          char(1)  NOT NULL ,
	"DBAction"           char(1)  NOT NULL ,
	"Note"               varchar(99)  NULL ,
	CONSTRAINT "CK_Template_ArbitraryText_1594672934" CHECK  ( "Note" LIKE '%' ) ,
	"SysStartTime"       timestamp  NOT NULL   DEFAULT  CURRENT_TIMESTAMP,
	"SysEndTime"         timestamp  NOT NULL   DEFAULT  CURRENT_TIMESTAMP,
	"ManufacturerVehicleMakeId" integer  NOT NULL ,
	"ManufacturerVehicleMakeName" varchar(100)  NULL ,
	"CountryId"          integer  NULL ,
	"MarketingType"      varchar(80)  NULL ,
	"UserAuthenticatedKey" integer  NULL 
);

CREATE UNIQUE INDEX "XPKManufacturerVehicleMakeHistory" ON "Audit"."ManufacturerVehicleMakeHistory"
( 
	"ManufacturerVehicleMakeHistoryId"
);

CREATE TABLE "Production"."ManufacturerVehicleModel"
( 
	"ManufacturerVehicleModelId" integer  NOT NULL ,
	"ManufacturerVehicleMakeId" integer  NULL ,
	"ModelName"          varchar(100)  NOT NULL ,
	"ModelVariant"       char(3)  NULL ,
	"ManufacturerVehicleModelYear" smallint  NULL   DEFAULT  1999,
	CONSTRAINT "ValidationRule1561_1426325253" CHECK  ( "ManufacturerVehicleModelYear" BETWEEN 1801 AND 2051 ) ,
	"Note"               varchar(99)  NULL ,
	CONSTRAINT "CK_Template_ArbitraryText_1094539598" CHECK  ( "Note" LIKE '%' ) ,
	"SysStartTime"       timestamp  NULL   DEFAULT  CURRENT_TIMESTAMP,
	"SysEndTime"         timestamp  NULL   DEFAULT  CURRENT_TIMESTAMP,
	"UserAuthenticatedKey" integer  NULL 
);

CREATE UNIQUE INDEX "PKModel1" ON "Production"."ManufacturerVehicleModel"
( 
	"ManufacturerVehicleModelId"
);

CREATE UNIQUE INDEX "XAK1ManufacturerVehicleModel" ON "Production"."ManufacturerVehicleModel"
( 
	"ModelName",
	"ModelVariant",
	"ManufacturerVehicleModelYear"
);

CREATE INDEX "XIF1ManufacturerVehicleModel" ON "Production"."ManufacturerVehicleModel"
( 
	"ManufacturerVehicleMakeId"
);

CREATE INDEX "XIF2ManufacturerVehicleModel" ON "Production"."ManufacturerVehicleModel"
( 
	"UserAuthenticatedKey"
);

CREATE TABLE "Audit"."ManufacturerVehicleModelHistory"
( 
	"ManufacturerVehicleModelHistoryId" integer  NOT NULL ,
	"TransactionNumber"  smallint  NOT NULL   DEFAULT  0,
	"IsDeleted"          char(1)  NOT NULL ,
	"DBAction"           char(1)  NOT NULL ,
	"Note"               varchar(99)  NULL ,
	CONSTRAINT "CK_Template_ArbitraryText_535154449" CHECK  ( "Note" LIKE '%' ) ,
	"SysStartTime"       timestamp  NOT NULL   DEFAULT  CURRENT_TIMESTAMP,
	"SysEndTime"         timestamp  NOT NULL   DEFAULT  CURRENT_TIMESTAMP,
	"ManufacturerVehicleModelId" integer  NOT NULL ,
	"ModelName"          varchar(100)  NULL ,
	"ModelVariant"       char(3)  NULL ,
	"ManufacturerVehicleMakeId" integer  NULL ,
	"ManufacturerVehicleModelYear" smallint  NULL ,
	"UserAuthenticatedKey" integer  NULL 
);

CREATE UNIQUE INDEX "XPKManufacturerVehicleModelHistory" ON "Audit"."ManufacturerVehicleModelHistory"
( 
	"ManufacturerVehicleModelHistoryId"
);

CREATE TABLE "Production"."ManufacturerVehicleStock"
( 
	"ManufacturerVehicleStockId" integer  NOT NULL ,
	"VehicleStockCode"   varchar(50)  NOT NULL ,
	"IsAvailable"        smallint  NOT NULL   DEFAULT  0,
	"ManufacturerVehicleModelId" integer  NULL ,
	"IsPremiumRoadHandlingPackage" char(1)  NOT NULL ,
	"VehicleColor"       varchar(150)  NOT NULL   DEFAULT  'N/A',
	"VehicleCost"        numeric(18,2)  NOT NULL   DEFAULT  0,
	"VehicleRepairsCharge" numeric(18,2)  NOT NULL   DEFAULT  0,
	"VehiclePartsCharge" numeric(18,2)  NOT NULL   DEFAULT  0,
	"VehicleDeliveryCharge" numeric(18,2)  NOT NULL   DEFAULT  0,
	"CustomerComment"    varchar(499)  NULL ,
	CONSTRAINT "CK_Template_ArbitraryText_429234054" CHECK  ( "CustomerComment" LIKE '%' ) ,
	"Note"               varchar(99)  NULL ,
	CONSTRAINT "CK_Template_ArbitraryText_1278959187" CHECK  ( "Note" LIKE '%' ) ,
	"SysStartTime"       timestamp  NULL   DEFAULT  CURRENT_TIMESTAMP,
	"SysEndTime"         timestamp  NULL   DEFAULT  CURRENT_TIMESTAMP,
	"UserAuthenticatedKey" integer  NULL 
);

CREATE UNIQUE INDEX "PKStock" ON "Production"."ManufacturerVehicleStock"
( 
	"ManufacturerVehicleStockId"
);

CREATE UNIQUE INDEX "XAK1ManufacturerVehicleStock" ON "Production"."ManufacturerVehicleStock"
( 
	"VehicleStockCode"
);

CREATE INDEX "XIF1ManufacturerVehicleStock" ON "Production"."ManufacturerVehicleStock"
( 
	"ManufacturerVehicleModelId"
);

CREATE INDEX "XIF2ManufacturerVehicleStock" ON "Production"."ManufacturerVehicleStock"
( 
	"UserAuthenticatedKey"
);

CREATE TABLE "Audit"."ManufacturerVehicleStockHistory"
( 
	"ManufacturerVehicleStockHistoryId" integer  NOT NULL ,
	"TransactionNumber"  smallint  NOT NULL   DEFAULT  0,
	"IsDeleted"          char(1)  NOT NULL ,
	"DBAction"           char(1)  NOT NULL ,
	"Note"               varchar(99)  NULL ,
	CONSTRAINT "CK_Template_ArbitraryText_450547980" CHECK  ( "Note" LIKE '%' ) ,
	"SysStartTime"       timestamp  NOT NULL   DEFAULT  CURRENT_TIMESTAMP,
	"SysEndTime"         timestamp  NOT NULL   DEFAULT  CURRENT_TIMESTAMP,
	"ManufacturerVehicleStockId" integer  NOT NULL ,
	"VehicleStockCode"   varchar(50)  NULL ,
	"VehicleCost"        numeric(18,2)  NULL ,
	"VehicleRepairsCharge" numeric(18,2)  NULL ,
	"VehiclePartsCharge" numeric(18,2)  NULL ,
	"VehicleDeliveryCharge" numeric(18,2)  NULL ,
	"IsPremiumRoadHandlingPackage" char(1)  NULL ,
	"VehicleColor"       varchar(150)  NULL ,
	"ManufacturerVehicleModelId" integer  NULL ,
	"CustomerComment"    varchar(499)  NULL ,
	"IsAvailable"        smallint  NULL ,
	"UserAuthenticatedKey" integer  NULL 
);

CREATE UNIQUE INDEX "XPKManufacturerVehicleStockHistory" ON "Audit"."ManufacturerVehicleStockHistory"
( 
	"ManufacturerVehicleStockHistoryId"
);

CREATE TABLE "Sales"."SalesOrderVehicle"
( 
	"SalesOrderVehicleId" integer  NOT NULL ,
	"CustomerId"         integer  NOT NULL ,
	"StaffId"            integer  NOT NULL ,
	"InvoiceNumber"      char(8)  NOT NULL ,
	"SaleOrderDate"      date  NOT NULL   DEFAULT  '1900-01-01',
	"TotalSalePrice"     numeric(18,2)  NOT NULL   DEFAULT  0,
	"TotalCost"          numeric(18,2)  NOT NULL   DEFAULT  0,
	"SalesCategoryDescription" varchar(50)  NULL ,
	"Note"               varchar(99)  NULL ,
	CONSTRAINT "CK_Template_ArbitraryText_1852756872" CHECK  ( "Note" LIKE '%' ) ,
	"SysStartTime"       timestamp  NULL   DEFAULT  CURRENT_TIMESTAMP,
	"SysEndTime"         timestamp  NULL   DEFAULT  CURRENT_TIMESTAMP,
	"UserAuthenticatedKey" integer  NULL 
);

CREATE UNIQUE INDEX "XPKSalesOrderVehicle" ON "Sales"."SalesOrderVehicle"
( 
	"SalesOrderVehicleId"
);

CREATE UNIQUE INDEX "XAK1SalesOrderVehicle" ON "Sales"."SalesOrderVehicle"
( 
	"InvoiceNumber"
);

CREATE INDEX "XIF2SalesOrderVehicle" ON "Sales"."SalesOrderVehicle"
( 
	"StaffId"
);

CREATE INDEX "XIF1SalesOrderVehicle" ON "Sales"."SalesOrderVehicle"
( 
	"CustomerId"
);

CREATE INDEX "XIF3SalesOrderVehicle" ON "Sales"."SalesOrderVehicle"
( 
	"UserAuthenticatedKey"
);

CREATE TABLE "Sales"."SalesOrderVehicleDetail"
( 
	"SalesOrderVehicleDetailId" integer  NOT NULL ,
	"SalesOrderVehicleId" integer  NULL ,
	"LineItemNumber"     integer  NOT NULL   DEFAULT  0,
	"ManufacturerVehicleId" integer  NOT NULL ,
	"SalePrice"          numeric(18,2)  NOT NULL   DEFAULT  0,
	"LineItemDiscount"   numeric(18,2)  NULL   DEFAULT  0,
	"DiscountedSalePrice" numeric(18,2)  NULL ,
	"Note"               varchar(99)  NULL ,
	CONSTRAINT "CK_Template_ArbitraryText_822952972" CHECK  ( "Note" LIKE '%' ) ,
	"SysStartTime"       timestamp  NULL   DEFAULT  CURRENT_TIMESTAMP,
	"SysEndTime"         timestamp  NULL   DEFAULT  CURRENT_TIMESTAMP,
	"UserAuthenticatedKey" integer  NULL 
);

CREATE UNIQUE INDEX "PKSalesDetails" ON "Sales"."SalesOrderVehicleDetail"
( 
	"SalesOrderVehicleDetailId"
);

CREATE INDEX "XIF2SalesOrderVehicleDetail" ON "Sales"."SalesOrderVehicleDetail"
( 
	"ManufacturerVehicleId"
);

CREATE INDEX "XIF3SalesOrderVehicleDetail" ON "Sales"."SalesOrderVehicleDetail"
( 
	"SalesOrderVehicleId"
);

CREATE INDEX "XIF4SalesOrderVehicleDetail" ON "Sales"."SalesOrderVehicleDetail"
( 
	"UserAuthenticatedKey"
);

CREATE TABLE "Audit"."SalesOrderVehicleDetailHistory"
( 
	"SalesOrderVehicleDetailHistoryId" integer  NOT NULL ,
	"TransactionNumber"  smallint  NOT NULL   DEFAULT  0,
	"IsDeleted"          char(1)  NOT NULL ,
	"DBAction"           char(1)  NOT NULL ,
	"Note"               varchar(99)  NULL ,
	CONSTRAINT "CK_Template_ArbitraryText_1643511590" CHECK  ( "Note" LIKE '%' ) ,
	"SysStartTime"       timestamp  NOT NULL   DEFAULT  CURRENT_TIMESTAMP,
	"SysEndTime"         timestamp  NOT NULL   DEFAULT  CURRENT_TIMESTAMP,
	"SalesOrderVehicleDetailId" integer  NOT NULL ,
	"SalesOrderVehicleId" integer  NULL ,
	"LineItemNumber"     integer  NULL ,
	"ManufacturerVehicleId" integer  NULL ,
	"SalePrice"          numeric(18,2)  NULL ,
	"LineItemDiscount"   numeric(18,2)  NULL ,
	"DiscountedSalePrice" CHAR(18)  NULL ,
	"UserAuthenticatedKey" integer  NULL 
);

CREATE UNIQUE INDEX "XPKSalesOrderVehicleDetailHistory" ON "Audit"."SalesOrderVehicleDetailHistory"
( 
	"SalesOrderVehicleDetailHistoryId"
);

CREATE TABLE "Audit"."SalesOrderVehicleHistory"
( 
	"SalesOrderVehicleHistoryId" integer  NOT NULL ,
	"TransactionNumber"  smallint  NOT NULL   DEFAULT  0,
	"IsDeleted"          char(1)  NOT NULL ,
	"DBAction"           char(1)  NOT NULL ,
	"Note"               varchar(99)  NULL ,
	CONSTRAINT "CK_Template_ArbitraryText_440885866" CHECK  ( "Note" LIKE '%' ) ,
	"SysStartTime"       timestamp  NOT NULL   DEFAULT  CURRENT_TIMESTAMP,
	"SysEndTime"         timestamp  NOT NULL   DEFAULT  CURRENT_TIMESTAMP,
	"SalesOrderVehicleId" integer  NOT NULL ,
	"CustomerId"         integer  NULL ,
	"StaffId"            integer  NULL ,
	"InvoiceNumber"      char(8)  NULL ,
	"TotalSalePrice"     numeric(18,2)  NULL ,
	"SaleOrderDate"      date  NULL ,
	"SalesCategoryDescription" CHAR(18)  NULL ,
	"TotalCost"          numeric(18,2)  NULL ,
	"UserAuthenticatedKey" integer  NULL 
);

CREATE UNIQUE INDEX "XPKSalesOrderVehicleHistory" ON "Audit"."SalesOrderVehicleHistory"
( 
	"SalesOrderVehicleHistoryId"
);

CREATE TABLE "HumanResources"."Staff"
( 
	"StaffId"            integer  NOT NULL ,
	"ManagerId"          integer  NULL ,
	"StaffName"          varchar(50)  NOT NULL ,
	"DepartmentName"     varchar(50)  NOT NULL   DEFAULT  'N/A',
	"Note"               varchar(99)  NULL ,
	CONSTRAINT "CK_Template_ArbitraryText_926520176" CHECK  ( "Note" LIKE '%' ) ,
	"SysStartTime"       timestamp  NULL   DEFAULT  CURRENT_TIMESTAMP,
	"SysEndTime"         timestamp  NULL   DEFAULT  CURRENT_TIMESTAMP,
	"UserAuthenticatedKey" integer  NULL 
);

CREATE UNIQUE INDEX "XPKStaff" ON "HumanResources"."Staff"
( 
	"StaffId"
);

CREATE INDEX "XIF1Staff" ON "HumanResources"."Staff"
( 
	"StaffId"
);

CREATE INDEX "XIF2Staff" ON "HumanResources"."Staff"
( 
	"UserAuthenticatedKey"
);

CREATE TABLE "Audit"."StaffHistory"
( 
	"StaffHistoryId"     integer  NOT NULL ,
	"TransactionNumber"  smallint  NOT NULL   DEFAULT  0,
	"IsDeleted"          char(1)  NOT NULL ,
	"DBAction"           char(1)  NOT NULL ,
	"Note"               varchar(99)  NULL ,
	CONSTRAINT "CK_Template_ArbitraryText_34614570" CHECK  ( "Note" LIKE '%' ) ,
	"SysStartTime"       timestamp  NOT NULL   DEFAULT  CURRENT_TIMESTAMP,
	"SysEndTime"         timestamp  NOT NULL   DEFAULT  CURRENT_TIMESTAMP,
	"StaffId"            integer  NOT NULL ,
	"StaffName"          varchar(50)  NULL ,
	"ManagerId"          integer  NULL ,
	"DepartmentName"     varchar(50)  NULL ,
	"UserAuthenticatedKey" integer  NULL 
);

CREATE UNIQUE INDEX "XPKStaffHistory" ON "Audit"."StaffHistory"
( 
	"StaffHistoryId"
);

CREATE TABLE "DbSecurity"."UserAuthorization"
( 
	"UserAuthenticatedKey" integer  NOT NULL ,
	"ClassTime"          char(5)  NULL   DEFAULT  '9:15',
	"IndividualProject"  varchar(60)  NULL   DEFAULT  'CSCI381 Final Group Project',
	"GroupMemberLastName" varchar(50)  NOT NULL ,
	"GroupMemberFirstName" varchar(50)  NOT NULL ,
	"GroupName"          varchar(100)  NOT NULL ,
	"SysStartTime"       timestamp  NULL   DEFAULT  CURRENT_TIMESTAMP,
	"SysEndTime"         timestamp  NULL   DEFAULT  CURRENT_TIMESTAMP
);

CREATE UNIQUE INDEX "XPKUserAuthorization" ON "DbSecurity"."UserAuthorization"
( 
	"UserAuthenticatedKey"
);

CREATE UNIQUE INDEX "XAK1UserAuthorization" ON "DbSecurity"."UserAuthorization"
( 
	"ClassTime",
	"GroupName"
);

COMMENT ON TABLE "Sales"."Country" IS 'The political territory in which vehicles are manufactured, or the vehicle manufacturer is headquartered.';

COMMENT ON COLUMN "Sales"."Country"."CountryId" IS 'Unique identifier for countries.';

COMMENT ON COLUMN "Sales"."Country"."CountryName" IS 'The country name fully written out in english.';

COMMENT ON COLUMN "Sales"."Country"."CountryISO2" IS 'ISO2 format of a country, for example US. ';

COMMENT ON COLUMN "Sales"."Country"."CountryISO3" IS 'ISO3 format of a country, for example USA. ';

COMMENT ON COLUMN "Sales"."Country"."SalesRegion" IS 'The region that the sales were made in.';

COMMENT ON COLUMN "Sales"."Country"."Note" IS 'The note about the DML operation performed.';

COMMENT ON COLUMN "Sales"."Country"."SysStartTime" IS 'The start of time based on the system from DML.';

COMMENT ON COLUMN "Sales"."Country"."SysEndTime" IS 'The end of time based on the system from DML.';

COMMENT ON COLUMN "Sales"."Country"."UserAuthenticatedKey" IS 'The identification number of a user, authorizing them to edit entities.';

COMMENT ON COLUMN "Audit"."CountryHistory"."CountryHistoryId" IS 'Unique identifier for the history of a customer.';

COMMENT ON COLUMN "Audit"."CountryHistory"."TransactionNumber" IS 'The transaction number for the invoice.';

COMMENT ON COLUMN "Audit"."CountryHistory"."IsDeleted" IS 'A flag to check if a tuple is deleted.';

COMMENT ON COLUMN "Audit"."CountryHistory"."DBAction" IS 'The capitalized initial of the DML operation: I, U, D.';

COMMENT ON COLUMN "Audit"."CountryHistory"."Note" IS 'The note about the DML operation performed.';

COMMENT ON COLUMN "Audit"."CountryHistory"."SysStartTime" IS 'The start of time based on the system from DML.';

COMMENT ON COLUMN "Audit"."CountryHistory"."SysEndTime" IS 'The end of time based on the system from DML.';

COMMENT ON COLUMN "Audit"."CountryHistory"."CountryId" IS 'Unique identifier for countries.';

COMMENT ON COLUMN "Audit"."CountryHistory"."CountryISO3" IS 'ISO3 format of a country, for example USA. ';

COMMENT ON COLUMN "Audit"."CountryHistory"."CountryName" IS 'The country name fully written out in english.';

COMMENT ON COLUMN "Audit"."CountryHistory"."CountryISO2" IS 'ISO2 format of a country, for example US. ';

COMMENT ON COLUMN "Audit"."CountryHistory"."SalesRegion" IS 'The region that the sales were made in.';

COMMENT ON COLUMN "Audit"."CountryHistory"."UserAuthenticatedKey" IS 'The identification number of a user, authorizing them to edit entities.';

COMMENT ON COLUMN "Sales"."Customer"."CustomerId" IS 'Unique identifier for customers.';

COMMENT ON COLUMN "Sales"."Customer"."CustomerName" IS 'The name of a customer.';

COMMENT ON COLUMN "Sales"."Customer"."CustomerAddress1" IS 'The first line of a customer address, that includes the street name.';

COMMENT ON COLUMN "Sales"."Customer"."CustomerAddress2" IS 'The second line of a customer address, that includes a possible apartment number.';

COMMENT ON COLUMN "Sales"."Customer"."CustomerPostalCode" IS 'The postal code of the area that the customer lives in.';

COMMENT ON COLUMN "Sales"."Customer"."CustomerTown" IS 'The town that the customer is from.';

COMMENT ON COLUMN "Sales"."Customer"."CountryId" IS 'Unique identifier for countries.';

COMMENT ON COLUMN "Sales"."Customer"."Note" IS 'The note about the DML operation performed.';

COMMENT ON COLUMN "Sales"."Customer"."SysStartTime" IS 'The start of time based on the system from DML.';

COMMENT ON COLUMN "Sales"."Customer"."SysEndTime" IS 'The end of time based on the system from DML.';

COMMENT ON COLUMN "Sales"."Customer"."UserAuthenticatedKey" IS 'The identification number of a user, authorizing them to edit entities.';

COMMENT ON COLUMN "Audit"."CustomerHistory"."CustomerHistoryId" IS 'Unique identifier for the history of a customer.';

COMMENT ON COLUMN "Audit"."CustomerHistory"."TransactionNumber" IS 'The transaction number for the invoice.';

COMMENT ON COLUMN "Audit"."CustomerHistory"."IsDeleted" IS 'A flag to check if a tuple is deleted.';

COMMENT ON COLUMN "Audit"."CustomerHistory"."DBAction" IS 'The capitalized initial of the DML operation: I, U, D.';

COMMENT ON COLUMN "Audit"."CustomerHistory"."Note" IS 'The note about the DML operation performed.';

COMMENT ON COLUMN "Audit"."CustomerHistory"."SysStartTime" IS 'The start of time based on the system from DML.';

COMMENT ON COLUMN "Audit"."CustomerHistory"."SysEndTime" IS 'The end of time based on the system from DML.';

COMMENT ON COLUMN "Audit"."CustomerHistory"."CustomerId" IS 'Unique identifier for customers.';

COMMENT ON COLUMN "Audit"."CustomerHistory"."CustomerName" IS 'The name of a customer.';

COMMENT ON COLUMN "Audit"."CustomerHistory"."CustomerAddress1" IS 'The first line of a customer address, that includes the street name.';

COMMENT ON COLUMN "Audit"."CustomerHistory"."CustomerAddress2" IS 'The second line of a customer address, that includes a possible apartment number.';

COMMENT ON COLUMN "Audit"."CustomerHistory"."CustomerTown" IS 'The town that the customer is from.';

COMMENT ON COLUMN "Audit"."CustomerHistory"."CustomerPostalCode" IS 'The postal code of the area that the customer lives in.';

COMMENT ON COLUMN "Audit"."CustomerHistory"."CountryId" IS 'Unique identifier for countries.';

COMMENT ON COLUMN "Audit"."CustomerHistory"."UserAuthenticatedKey" IS 'The identification number of a user, authorizing them to edit entities.';

COMMENT ON TABLE "Sales"."CustomerMarketingInformation" IS 'The marketing information of a customer.';

COMMENT ON COLUMN "Sales"."CustomerMarketingInformation"."CustomerMarketingInformationId" IS 'Unique identifier for customers.';

COMMENT ON COLUMN "Sales"."CustomerMarketingInformation"."IsCustomerReseller" IS 'Flag for determining if a customer is a reseller.';

COMMENT ON COLUMN "Sales"."CustomerMarketingInformation"."IsCustomerCreditRisk" IS 'Flag for determining if a customer is a risk.';

COMMENT ON COLUMN "Sales"."CustomerMarketingInformation"."CustomerSpendCapacity" IS 'The spending capacity of a customer.';

COMMENT ON COLUMN "Sales"."CustomerMarketingInformation"."Note" IS 'The note about the DML operation performed.';

COMMENT ON COLUMN "Sales"."CustomerMarketingInformation"."SysStartTime" IS 'The start of time based on the system from DML.';

COMMENT ON COLUMN "Sales"."CustomerMarketingInformation"."SysEndTime" IS 'The end of time based on the system from DML.';

COMMENT ON COLUMN "Sales"."CustomerMarketingInformation"."UserAuthenticatedKey" IS 'The identification number of a user, authorizing them to edit entities.';

COMMENT ON TABLE "Audit"."CustomerMarketingInformationHistory" IS 'The marketing information of a customer.';

COMMENT ON COLUMN "Audit"."CustomerMarketingInformationHistory"."CustomerMarketingHistoryId" IS 'Unique identifier for the history of customer marketing.';

COMMENT ON COLUMN "Audit"."CustomerMarketingInformationHistory"."TransactionNumber" IS 'The transaction number for the invoice.';

COMMENT ON COLUMN "Audit"."CustomerMarketingInformationHistory"."IsDeleted" IS 'A flag to check if a tuple is deleted.';

COMMENT ON COLUMN "Audit"."CustomerMarketingInformationHistory"."DBAction" IS 'The capitalized initial of the DML operation: I, U, D.';

COMMENT ON COLUMN "Audit"."CustomerMarketingInformationHistory"."Note" IS 'The note about the DML operation performed.';

COMMENT ON COLUMN "Audit"."CustomerMarketingInformationHistory"."SysStartTime" IS 'The start of time based on the system from DML.';

COMMENT ON COLUMN "Audit"."CustomerMarketingInformationHistory"."SysEndTime" IS 'The end of time based on the system from DML.';

COMMENT ON COLUMN "Audit"."CustomerMarketingInformationHistory"."CustomerMarketingInformationId" IS 'Unique identifier for customers.';

COMMENT ON COLUMN "Audit"."CustomerMarketingInformationHistory"."IsCustomerReseller" IS 'Flag for determining if a customer is a reseller.';

COMMENT ON COLUMN "Audit"."CustomerMarketingInformationHistory"."IsCustomerCreditRisk" IS 'Flag for determining if a customer is a risk.';

COMMENT ON COLUMN "Audit"."CustomerMarketingInformationHistory"."CustomerSpendCapacity" IS 'The spending capacity of a customer.';

COMMENT ON COLUMN "Audit"."CustomerMarketingInformationHistory"."UserAuthenticatedKey" IS 'The identification number of a user, authorizing them to edit entities.';

COMMENT ON TABLE "Production"."ManufacturerVehicleMake" IS 'The brand of manufacturer who makes a vehicle.';

COMMENT ON COLUMN "Production"."ManufacturerVehicleMake"."ManufacturerVehicleMakeId" IS 'Unique identifier for the vehicle make.';

COMMENT ON COLUMN "Production"."ManufacturerVehicleMake"."ManufacturerVehicleMakeName" IS 'The name of the vehicles make.';

COMMENT ON COLUMN "Production"."ManufacturerVehicleMake"."CountryId" IS 'Unique identifier for countries.';

COMMENT ON COLUMN "Production"."ManufacturerVehicleMake"."MarketingType" IS 'The marketing type for a vehicle.';

COMMENT ON COLUMN "Production"."ManufacturerVehicleMake"."Note" IS 'The note about the DML operation performed.';

COMMENT ON COLUMN "Production"."ManufacturerVehicleMake"."SysStartTime" IS 'The start of time based on the system from DML.';

COMMENT ON COLUMN "Production"."ManufacturerVehicleMake"."SysEndTime" IS 'The end of time based on the system from DML.';

COMMENT ON COLUMN "Production"."ManufacturerVehicleMake"."UserAuthenticatedKey" IS 'The identification number of a user, authorizing them to edit entities.';

COMMENT ON COLUMN "Audit"."ManufacturerVehicleMakeHistory"."ManufacturerVehicleMakeHistoryId" IS 'Unique identifier for the history of a make.';

COMMENT ON COLUMN "Audit"."ManufacturerVehicleMakeHistory"."TransactionNumber" IS 'The transaction number for the invoice.';

COMMENT ON COLUMN "Audit"."ManufacturerVehicleMakeHistory"."IsDeleted" IS 'A flag to check if a tuple is deleted.';

COMMENT ON COLUMN "Audit"."ManufacturerVehicleMakeHistory"."DBAction" IS 'The capitalized initial of the DML operation: I, U, D.';

COMMENT ON COLUMN "Audit"."ManufacturerVehicleMakeHistory"."Note" IS 'The note about the DML operation performed.';

COMMENT ON COLUMN "Audit"."ManufacturerVehicleMakeHistory"."SysStartTime" IS 'The start of time based on the system from DML.';

COMMENT ON COLUMN "Audit"."ManufacturerVehicleMakeHistory"."SysEndTime" IS 'The end of time based on the system from DML.';

COMMENT ON COLUMN "Audit"."ManufacturerVehicleMakeHistory"."ManufacturerVehicleMakeId" IS 'Unique identifier for the vehicle make.';

COMMENT ON COLUMN "Audit"."ManufacturerVehicleMakeHistory"."ManufacturerVehicleMakeName" IS 'The name of the vehicles make.';

COMMENT ON COLUMN "Audit"."ManufacturerVehicleMakeHistory"."CountryId" IS 'Unique identifier for countries.';

COMMENT ON COLUMN "Audit"."ManufacturerVehicleMakeHistory"."MarketingType" IS 'The marketing type for a vehicle.';

COMMENT ON COLUMN "Audit"."ManufacturerVehicleMakeHistory"."UserAuthenticatedKey" IS 'The identification number of a user, authorizing them to edit entities.';

COMMENT ON TABLE "Production"."ManufacturerVehicleModel" IS 'The model of a vehicle, designed by the manufacturer.';

COMMENT ON COLUMN "Production"."ManufacturerVehicleModel"."ManufacturerVehicleModelId" IS 'Unique identifier for the vehicle model.';

COMMENT ON COLUMN "Production"."ManufacturerVehicleModel"."ManufacturerVehicleMakeId" IS 'Unique identifier for the vehicle make.';

COMMENT ON COLUMN "Production"."ManufacturerVehicleModel"."ModelName" IS 'The name of the vehicles model.';

COMMENT ON COLUMN "Production"."ManufacturerVehicleModel"."ModelVariant" IS 'The name of the vehicles variant.';

COMMENT ON COLUMN "Production"."ManufacturerVehicleModel"."ManufacturerVehicleModelYear" IS 'The year a vehicle make released the particular model.';

COMMENT ON COLUMN "Production"."ManufacturerVehicleModel"."Note" IS 'The note about the DML operation performed.';

COMMENT ON COLUMN "Production"."ManufacturerVehicleModel"."SysStartTime" IS 'The start of time based on the system from DML.';

COMMENT ON COLUMN "Production"."ManufacturerVehicleModel"."SysEndTime" IS 'The end of time based on the system from DML.';

COMMENT ON COLUMN "Production"."ManufacturerVehicleModel"."UserAuthenticatedKey" IS 'The identification number of a user, authorizing them to edit entities.';

COMMENT ON COLUMN "Audit"."ManufacturerVehicleModelHistory"."ManufacturerVehicleModelHistoryId" IS 'Unique identifier for the history of a vehicle.';

COMMENT ON COLUMN "Audit"."ManufacturerVehicleModelHistory"."TransactionNumber" IS 'The transaction number for the invoice.';

COMMENT ON COLUMN "Audit"."ManufacturerVehicleModelHistory"."IsDeleted" IS 'A flag to check if a tuple is deleted.';

COMMENT ON COLUMN "Audit"."ManufacturerVehicleModelHistory"."DBAction" IS 'The capitalized initial of the DML operation: I, U, D.';

COMMENT ON COLUMN "Audit"."ManufacturerVehicleModelHistory"."Note" IS 'The note about the DML operation performed.';

COMMENT ON COLUMN "Audit"."ManufacturerVehicleModelHistory"."SysStartTime" IS 'The start of time based on the system from DML.';

COMMENT ON COLUMN "Audit"."ManufacturerVehicleModelHistory"."SysEndTime" IS 'The end of time based on the system from DML.';

COMMENT ON COLUMN "Audit"."ManufacturerVehicleModelHistory"."ManufacturerVehicleModelId" IS 'Unique identifier for the vehicle model.';

COMMENT ON COLUMN "Audit"."ManufacturerVehicleModelHistory"."ModelName" IS 'The name of the vehicles model.';

COMMENT ON COLUMN "Audit"."ManufacturerVehicleModelHistory"."ModelVariant" IS 'The name of the vehicles variant.';

COMMENT ON COLUMN "Audit"."ManufacturerVehicleModelHistory"."ManufacturerVehicleMakeId" IS 'Unique identifier for the vehicle make.';

COMMENT ON COLUMN "Audit"."ManufacturerVehicleModelHistory"."ManufacturerVehicleModelYear" IS 'The year a vehicle make released the particular model.';

COMMENT ON COLUMN "Audit"."ManufacturerVehicleModelHistory"."UserAuthenticatedKey" IS 'The identification number of a user, authorizing them to edit entities.';

COMMENT ON TABLE "Production"."ManufacturerVehicleStock" IS 'A manufactured vehicle with a make & model, and other concrete characteristics; the vehicle a manufacturer has in stock.';

COMMENT ON COLUMN "Production"."ManufacturerVehicleStock"."ManufacturerVehicleStockId" IS 'Unique identifier for the total in stock.';

COMMENT ON COLUMN "Production"."ManufacturerVehicleStock"."VehicleStockCode" IS 'The stock code for a vehicle.';

COMMENT ON COLUMN "Production"."ManufacturerVehicleStock"."IsAvailable" IS 'Marks the car avaliable, unavailable or sold.';

COMMENT ON COLUMN "Production"."ManufacturerVehicleStock"."ManufacturerVehicleModelId" IS 'Unique identifier for the vehicle model.';

COMMENT ON COLUMN "Production"."ManufacturerVehicleStock"."IsPremiumRoadHandlingPackage" IS 'A flag to check if this is part of the premium road handling package.';

COMMENT ON COLUMN "Production"."ManufacturerVehicleStock"."VehicleColor" IS 'The color of the vehicle.';

COMMENT ON COLUMN "Production"."ManufacturerVehicleStock"."VehicleCost" IS 'The cost for a vehicle.';

COMMENT ON COLUMN "Production"."ManufacturerVehicleStock"."VehicleRepairsCharge" IS 'The charge for repairs for a vehicle.';

COMMENT ON COLUMN "Production"."ManufacturerVehicleStock"."VehiclePartsCharge" IS 'The charge for parts for a vehicle.';

COMMENT ON COLUMN "Production"."ManufacturerVehicleStock"."VehicleDeliveryCharge" IS 'The charge for delivering a vehicle.';

COMMENT ON COLUMN "Production"."ManufacturerVehicleStock"."CustomerComment" IS 'A comment that a customer adds to their order.';

COMMENT ON COLUMN "Production"."ManufacturerVehicleStock"."Note" IS 'The note about the DML operation performed.';

COMMENT ON COLUMN "Production"."ManufacturerVehicleStock"."SysStartTime" IS 'The start of time based on the system from DML.';

COMMENT ON COLUMN "Production"."ManufacturerVehicleStock"."SysEndTime" IS 'The end of time based on the system from DML.';

COMMENT ON COLUMN "Production"."ManufacturerVehicleStock"."UserAuthenticatedKey" IS 'The identification number of a user, authorizing them to edit entities.';

COMMENT ON COLUMN "Audit"."ManufacturerVehicleStockHistory"."ManufacturerVehicleStockHistoryId" IS 'Unique identifier for a Vehicle Stock history.';

COMMENT ON COLUMN "Audit"."ManufacturerVehicleStockHistory"."TransactionNumber" IS 'The transaction number for the invoice.';

COMMENT ON COLUMN "Audit"."ManufacturerVehicleStockHistory"."IsDeleted" IS 'A flag to check if a tuple is deleted.';

COMMENT ON COLUMN "Audit"."ManufacturerVehicleStockHistory"."DBAction" IS 'The capitalized initial of the DML operation: I, U, D.';

COMMENT ON COLUMN "Audit"."ManufacturerVehicleStockHistory"."Note" IS 'The note about the DML operation performed.';

COMMENT ON COLUMN "Audit"."ManufacturerVehicleStockHistory"."SysStartTime" IS 'The start of time based on the system from DML.';

COMMENT ON COLUMN "Audit"."ManufacturerVehicleStockHistory"."SysEndTime" IS 'The end of time based on the system from DML.';

COMMENT ON COLUMN "Audit"."ManufacturerVehicleStockHistory"."ManufacturerVehicleStockId" IS 'Unique identifier for the total in stock.';

COMMENT ON COLUMN "Audit"."ManufacturerVehicleStockHistory"."VehicleStockCode" IS 'The stock code for a vehicle.';

COMMENT ON COLUMN "Audit"."ManufacturerVehicleStockHistory"."VehicleCost" IS 'The cost for a vehicle.';

COMMENT ON COLUMN "Audit"."ManufacturerVehicleStockHistory"."VehicleRepairsCharge" IS 'The charge for repairs for a vehicle.';

COMMENT ON COLUMN "Audit"."ManufacturerVehicleStockHistory"."VehiclePartsCharge" IS 'The charge for parts for a vehicle.';

COMMENT ON COLUMN "Audit"."ManufacturerVehicleStockHistory"."VehicleDeliveryCharge" IS 'The charge for delivering a vehicle.';

COMMENT ON COLUMN "Audit"."ManufacturerVehicleStockHistory"."IsPremiumRoadHandlingPackage" IS 'A flag to check if this is part of the premium road handling package.';

COMMENT ON COLUMN "Audit"."ManufacturerVehicleStockHistory"."VehicleColor" IS 'The color of the vehicle.';

COMMENT ON COLUMN "Audit"."ManufacturerVehicleStockHistory"."ManufacturerVehicleModelId" IS 'Unique identifier for a manufacturer vehicle model.';

COMMENT ON COLUMN "Audit"."ManufacturerVehicleStockHistory"."CustomerComment" IS 'A comment that a customer adds to their order.';

COMMENT ON COLUMN "Audit"."ManufacturerVehicleStockHistory"."IsAvailable" IS 'Marks the car avaliable, unavailable or sold.';

COMMENT ON COLUMN "Audit"."ManufacturerVehicleStockHistory"."UserAuthenticatedKey" IS 'The identification number of a user, authorizing them to edit entities.';

COMMENT ON TABLE "Sales"."SalesOrderVehicle" IS 'A customers order of a vehicle, processed by staff.';

COMMENT ON COLUMN "Sales"."SalesOrderVehicle"."SalesOrderVehicleId" IS 'Unique identifier of the ordered vehicle.';

COMMENT ON COLUMN "Sales"."SalesOrderVehicle"."CustomerId" IS 'Unique identifier for customers.';

COMMENT ON COLUMN "Sales"."SalesOrderVehicle"."StaffId" IS 'Unique identifier for staff members.';

COMMENT ON COLUMN "Sales"."SalesOrderVehicle"."InvoiceNumber" IS 'The invoice number for an order.';

COMMENT ON COLUMN "Sales"."SalesOrderVehicle"."SaleOrderDate" IS 'The date that a vehicle was ordered.';

COMMENT ON COLUMN "Sales"."SalesOrderVehicle"."TotalSalePrice" IS 'The total sale price after tallying up the order details discounted sale price.';

COMMENT ON COLUMN "Sales"."SalesOrderVehicle"."TotalCost" IS 'The vehicle manufacturing cost.';

COMMENT ON COLUMN "Sales"."SalesOrderVehicle"."SalesCategoryDescription" IS 'The category description of an order.';

COMMENT ON COLUMN "Sales"."SalesOrderVehicle"."Note" IS 'The note about the DML operation performed.';

COMMENT ON COLUMN "Sales"."SalesOrderVehicle"."SysStartTime" IS 'The start of time based on the system from DML.';

COMMENT ON COLUMN "Sales"."SalesOrderVehicle"."SysEndTime" IS 'The end of time based on the system from DML.';

COMMENT ON COLUMN "Sales"."SalesOrderVehicle"."UserAuthenticatedKey" IS 'The identification number of a user, authorizing them to edit entities.';

COMMENT ON TABLE "Sales"."SalesOrderVehicleDetail" IS 'The details of a vehicle sales order.';

COMMENT ON COLUMN "Sales"."SalesOrderVehicleDetail"."SalesOrderVehicleDetailId" IS 'Unique identifier for the expanded details of the ordered vehicle.';

COMMENT ON COLUMN "Sales"."SalesOrderVehicleDetail"."SalesOrderVehicleId" IS 'Unique identifier of the ordered vehicle.';

COMMENT ON COLUMN "Sales"."SalesOrderVehicleDetail"."LineItemNumber" IS 'A line in the itemized Vehicle Sales Order Invoice.';

COMMENT ON COLUMN "Sales"."SalesOrderVehicleDetail"."ManufacturerVehicleId" IS 'Unique identifier for the total in stock.';

COMMENT ON COLUMN "Sales"."SalesOrderVehicleDetail"."SalePrice" IS 'The sale price for a vehicle. Includes delivery charge when applicable. Does not include cost of labor for vehicle repairs and parts.';

COMMENT ON COLUMN "Sales"."SalesOrderVehicleDetail"."LineItemDiscount" IS 'The discount given a line item.';

COMMENT ON COLUMN "Sales"."SalesOrderVehicleDetail"."DiscountedSalePrice" IS 'The discount given a sale price.';

COMMENT ON COLUMN "Sales"."SalesOrderVehicleDetail"."Note" IS 'The note about the DML operation performed.';

COMMENT ON COLUMN "Sales"."SalesOrderVehicleDetail"."SysStartTime" IS 'The start of time based on the system from DML.';

COMMENT ON COLUMN "Sales"."SalesOrderVehicleDetail"."SysEndTime" IS 'The end of time based on the system from DML.';

COMMENT ON COLUMN "Sales"."SalesOrderVehicleDetail"."UserAuthenticatedKey" IS 'The identification number of a user, authorizing them to edit entities.';

COMMENT ON COLUMN "Audit"."SalesOrderVehicleDetailHistory"."SalesOrderVehicleDetailHistoryId" IS 'Unique identifier for the history of a vehicle.';

COMMENT ON COLUMN "Audit"."SalesOrderVehicleDetailHistory"."TransactionNumber" IS 'The transaction number for the invoice.';

COMMENT ON COLUMN "Audit"."SalesOrderVehicleDetailHistory"."IsDeleted" IS 'A flag to check if a tuple is deleted.';

COMMENT ON COLUMN "Audit"."SalesOrderVehicleDetailHistory"."DBAction" IS 'The capitalized initial of the DML operation: I, U, D.';

COMMENT ON COLUMN "Audit"."SalesOrderVehicleDetailHistory"."Note" IS 'The note about the DML operation performed.';

COMMENT ON COLUMN "Audit"."SalesOrderVehicleDetailHistory"."SysStartTime" IS 'The start of time based on the system from DML.';

COMMENT ON COLUMN "Audit"."SalesOrderVehicleDetailHistory"."SysEndTime" IS 'The end of time based on the system from DML.';

COMMENT ON COLUMN "Audit"."SalesOrderVehicleDetailHistory"."SalesOrderVehicleDetailId" IS 'Unique identifier for the expanded details of the ordered vehicle.';

COMMENT ON COLUMN "Audit"."SalesOrderVehicleDetailHistory"."SalesOrderVehicleId" IS 'Unique identifier of the ordered vehicle.';

COMMENT ON COLUMN "Audit"."SalesOrderVehicleDetailHistory"."LineItemNumber" IS 'A line in the itemized Vehicle Sales Order Invoice.';

COMMENT ON COLUMN "Audit"."SalesOrderVehicleDetailHistory"."ManufacturerVehicleId" IS 'Unique identifier for the total in stock.';

COMMENT ON COLUMN "Audit"."SalesOrderVehicleDetailHistory"."SalePrice" IS 'The sale price for a vehicle. Includes delivery charge when applicable. Does not include cost of labor for vehicle repairs and parts.';

COMMENT ON COLUMN "Audit"."SalesOrderVehicleDetailHistory"."LineItemDiscount" IS 'The discount given a line item.';

COMMENT ON COLUMN "Audit"."SalesOrderVehicleDetailHistory"."DiscountedSalePrice" IS 'The discount given a sale price.';

COMMENT ON COLUMN "Audit"."SalesOrderVehicleDetailHistory"."UserAuthenticatedKey" IS 'The identification number of a user, authorizing them to edit entities.';

COMMENT ON COLUMN "Audit"."SalesOrderVehicleHistory"."SalesOrderVehicleHistoryId" IS 'Unique identifier for the total in stock.';

COMMENT ON COLUMN "Audit"."SalesOrderVehicleHistory"."TransactionNumber" IS 'The transaction number for the invoice.';

COMMENT ON COLUMN "Audit"."SalesOrderVehicleHistory"."IsDeleted" IS 'A flag to check if a tuple is deleted.';

COMMENT ON COLUMN "Audit"."SalesOrderVehicleHistory"."DBAction" IS 'The capitalized initial of the DML operation: I, U, D.';

COMMENT ON COLUMN "Audit"."SalesOrderVehicleHistory"."Note" IS 'The note about the DML operation performed.';

COMMENT ON COLUMN "Audit"."SalesOrderVehicleHistory"."SysStartTime" IS 'The start of time based on the system from DML.';

COMMENT ON COLUMN "Audit"."SalesOrderVehicleHistory"."SysEndTime" IS 'The end of time based on the system from DML.';

COMMENT ON COLUMN "Audit"."SalesOrderVehicleHistory"."SalesOrderVehicleId" IS 'Unique identifier of the ordered vehicle.';

COMMENT ON COLUMN "Audit"."SalesOrderVehicleHistory"."CustomerId" IS 'Unique identifier for a customer.';

COMMENT ON COLUMN "Audit"."SalesOrderVehicleHistory"."StaffId" IS 'Unique identifier for staff members.';

COMMENT ON COLUMN "Audit"."SalesOrderVehicleHistory"."InvoiceNumber" IS 'The invoice number for an order.';

COMMENT ON COLUMN "Audit"."SalesOrderVehicleHistory"."TotalSalePrice" IS 'The total sale price after tallying up the order details discounted sale price.';

COMMENT ON COLUMN "Audit"."SalesOrderVehicleHistory"."SaleOrderDate" IS 'The date that a vehicle was ordered.';

COMMENT ON COLUMN "Audit"."SalesOrderVehicleHistory"."SalesCategoryDescription" IS 'The category description of an order.';

COMMENT ON COLUMN "Audit"."SalesOrderVehicleHistory"."TotalCost" IS 'The vehicle manufacturing cost.';

COMMENT ON COLUMN "Audit"."SalesOrderVehicleHistory"."UserAuthenticatedKey" IS 'The identification number of a user, authorizing them to edit entities.';

COMMENT ON TABLE "HumanResources"."Staff" IS 'A member of staff, online or at a dealership, who sells vehicles to customers.';

COMMENT ON COLUMN "HumanResources"."Staff"."StaffId" IS 'Unique identifier for staff members.';

COMMENT ON COLUMN "HumanResources"."Staff"."ManagerId" IS 'Unique identifier of all managers.';

COMMENT ON COLUMN "HumanResources"."Staff"."StaffName" IS 'The full name of a staff member.';

COMMENT ON COLUMN "HumanResources"."Staff"."DepartmentName" IS 'The department name for a staff member.';

COMMENT ON COLUMN "HumanResources"."Staff"."Note" IS 'The note about the DML operation performed.';

COMMENT ON COLUMN "HumanResources"."Staff"."SysStartTime" IS 'The start of time based on the system from DML.';

COMMENT ON COLUMN "HumanResources"."Staff"."SysEndTime" IS 'The end of time based on the system from DML.';

COMMENT ON COLUMN "HumanResources"."Staff"."UserAuthenticatedKey" IS 'The identification number of a user, authorizing them to edit entities.';

COMMENT ON COLUMN "Audit"."StaffHistory"."StaffHistoryId" IS 'Unique identifier for the history of a staff member.';

COMMENT ON COLUMN "Audit"."StaffHistory"."TransactionNumber" IS 'The transaction number for the invoice.';

COMMENT ON COLUMN "Audit"."StaffHistory"."IsDeleted" IS 'A flag to check if a tuple is deleted.';

COMMENT ON COLUMN "Audit"."StaffHistory"."DBAction" IS 'The capitalized initial of the DML operation: I, U, D.';

COMMENT ON COLUMN "Audit"."StaffHistory"."Note" IS 'The note about the DML operation performed.';

COMMENT ON COLUMN "Audit"."StaffHistory"."SysStartTime" IS 'The start of time based on the system from DML.';

COMMENT ON COLUMN "Audit"."StaffHistory"."SysEndTime" IS 'The end of time based on the system from DML.';

COMMENT ON COLUMN "Audit"."StaffHistory"."StaffId" IS 'Unique identifier for staff members.';

COMMENT ON COLUMN "Audit"."StaffHistory"."StaffName" IS 'The full name of a staff member.';

COMMENT ON COLUMN "Audit"."StaffHistory"."ManagerId" IS 'Unique identifier of all managers.';

COMMENT ON COLUMN "Audit"."StaffHistory"."DepartmentName" IS 'The department name for a staff member.';

COMMENT ON COLUMN "Audit"."StaffHistory"."UserAuthenticatedKey" IS 'The identification number of a user, authorizing them to edit entities.';

COMMENT ON TABLE "DbSecurity"."UserAuthorization" IS 'The authorization of parties involved in the selling & buying of vehicles.';

COMMENT ON COLUMN "DbSecurity"."UserAuthorization"."UserAuthenticatedKey" IS 'The identification number of a user, authorizing them to edit entities.';

COMMENT ON COLUMN "DbSecurity"."UserAuthorization"."ClassTime" IS 'The class time that the team is a part of for CSCI381.';

COMMENT ON COLUMN "DbSecurity"."UserAuthorization"."IndividualProject" IS 'The project name that this model is for in CSCI381.';

COMMENT ON COLUMN "DbSecurity"."UserAuthorization"."GroupMemberLastName" IS 'The last name of a group member.';

COMMENT ON COLUMN "DbSecurity"."UserAuthorization"."GroupMemberFirstName" IS 'The firt name of a group member.';

COMMENT ON COLUMN "DbSecurity"."UserAuthorization"."GroupName" IS 'The group name, in other words the title.';

COMMENT ON COLUMN "DbSecurity"."UserAuthorization"."SysStartTime" IS 'The start of time based on the system from DML.';

COMMENT ON COLUMN "DbSecurity"."UserAuthorization"."SysEndTime" IS 'The end of time based on the system from DML.';
