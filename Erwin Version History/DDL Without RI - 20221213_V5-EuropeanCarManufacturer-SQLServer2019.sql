

set quoted_identifier on
go

CREATE SCHEMA "Output" AUTHORIZATION "dbo"
go

CREATE SCHEMA "HumanResources"
go

CREATE SCHEMA "Sales"
go

CREATE SCHEMA "Production"
go

CREATE SCHEMA "DbSecurity"
go

CREATE SCHEMA "sdAddressesString"
go

CREATE SCHEMA "sdBasicNumber"
go

CREATE SCHEMA "sdCharString"
go

CREATE SCHEMA "sdCostsNumber"
go

CREATE SCHEMA "sdCountryString"
go

CREATE SCHEMA "sdDepartmentalString"
go

CREATE SCHEMA "sdFlagsNumber"
go

CREATE SCHEMA "sdKeysNumber"
go

CREATE SCHEMA "sdTimeStampDateTime"
go

CREATE SCHEMA "Audit"
go

CREATE TYPE "dEuropeanCarManufacturer"
	FROM VARCHAR(MAX) NULL
go

CREATE TYPE "dString"
	FROM VARCHAR(MAX) NULL
go

CREATE TYPE "sdLongString"
	FROM NVARCHAR(200) NULL
go

CREATE TYPE "Comments"
	FROM NVARCHAR(4000) NULL
go

CREATE TYPE "sdCountryString"
	FROM NCHAR(10) NULL
go

CREATE TYPE "CountryISO2"
	FROM CHAR(2) NULL
go

CREATE TYPE "sdNamesString"
	FROM NVARCHAR(150) NULL
go

CREATE TYPE "CountryName"
	FROM NVARCHAR(150) NULL
go

CREATE TYPE "dDateTime"
	FROM DATETIME NULL
go

CREATE TYPE "Description"
	FROM NVARCHAR(50) NULL
go

CREATE TYPE "dNumber"
	FROM INTEGER NULL
go

CREATE TYPE "sdCostsNumber"
	FROM NUMERIC(18,2) NULL
go

CREATE TYPE "Discount"
	FROM NUMERIC(18,2) NULL
go

CREATE TYPE "PersonFullName"
	FROM NVARCHAR(150) NULL
go

CREATE TYPE "FirstName"
	FROM NVARCHAR(75) NULL
go

CREATE TYPE "LastName"
	FROM NVARCHAR(75) NULL
go

CREATE TYPE "LongString"
	FROM NVARCHAR(200) NOT NULL
go

CREATE TYPE "MakeName"
	FROM NVARCHAR(100) NULL
go

CREATE TYPE "Model"
	FROM NVARCHAR(150) NULL
go

CREATE TYPE "sdDate"
	FROM DATE NULL
go

CREATE TYPE "MonthDay"
	FROM CHAR(2) NULL
go

CREATE TYPE "sdAddressesString"
	FROM NVARCHAR(50) NULL
go

CREATE TYPE "Region"
	FROM NVARCHAR(20) NULL
go

CREATE TYPE "sdAddressesString"."Address"
	FROM NVARCHAR(50) NULL
go

CREATE TYPE "sdAddressesString"."PostalCode"
	FROM NVARCHAR(50) NULL
go

CREATE TYPE "sdAddressesString"."Town"
	FROM NVARCHAR(50) NULL
go

CREATE TYPE "sdBasicNumber"
	FROM INTEGER NULL
go

CREATE TYPE "sdBasicNumber"."BasicInt"
	FROM INTEGER NULL
go

CREATE TYPE "sdBasicNumber"."VersionInt"
	FROM INTEGER NOT NULL
go

CREATE TYPE "sdCharString"
	FROM CHAR(18) NULL
go

CREATE TYPE "sdCharString"."SingleChar"
	FROM CHAR(1) NOT NULL
go

CREATE TYPE "sdCostsNumber"."Charge"
	FROM NUMERIC(18,2) NULL
go

CREATE TYPE "sdCostsNumber"."Cost"
	FROM NUMERIC(18,2) NULL
go

CREATE TYPE "sdDepartmentalString"
	FROM NVARCHAR(50) NULL
go

CREATE TYPE "sdDepartmentalString"."Department"
	FROM NVARCHAR(50) NULL
go

CREATE TYPE "sdDepartmentalString"."StaffName"
	FROM NVARCHAR(50) NULL
go

CREATE TYPE "sdDepartmentalString"."StockCode"
	FROM NVARCHAR(50) NOT NULL
go

CREATE TYPE "sdFlagsNumber"
	FROM BIT NULL
go

CREATE TYPE "sdFlagsNumber"."IsTrueBit"
	FROM BIT NOT NULL
go

CREATE TYPE "sdFlagsString"
	FROM NCHAR(1) NULL
go

CREATE TYPE "sdKeysNumber"
	FROM INTEGER NULL
go

CREATE TYPE "sdKeysNumber"."SurrogateKeyIdentityInt"
	FROM INTEGER NOT NULL
go

CREATE TYPE "sdSequenceNumber"
	FROM SMALLINT NULL
go

CREATE TYPE "sdSpendCapacityString"
	FROM VARCHAR(25) NOT NULL
go

CREATE TYPE "sdTimeStampDateTime"
	FROM DATETIME NULL
go

CREATE TYPE "sdTimeStampDateTime"."CurrentTimeStamp"
	FROM DATETIME2(7) NULL
go

CREATE TYPE "SequenceSmallint"
	FROM SMALLINT NOT NULL
go

CREATE TYPE "SequenceTinyint"
	FROM SMALLINT NOT NULL
go

CREATE TYPE "SpendCapacity"
	FROM VARCHAR(25) NOT NULL
go

CREATE TYPE "SurrogateKeyIdentitySmallInt"
	FROM SMALLINT NOT NULL
go

CREATE TYPE "SurrogateKeyInt"
	FROM INTEGER NOT NULL
go

CREATE TYPE "VehicleColor"
	FROM NVARCHAR(150) NULL
go

CREATE TYPE "Year"
	FROM CHAR(4) NULL
go

CREATE TYPE "FullName"
	FROM NVARCHAR(300) NULL
go

CREATE TYPE "Invoice"
	FROM CHAR(8) NOT NULL
go

CREATE TYPE "sdRandomString"
	FROM VARCHAR(MAX) NULL
go

CREATE TYPE "MarketType"
	FROM NVARCHAR(200) NULL
go

CREATE TYPE "ClassTime"
	FROM NCHAR(5) NULL
go

CREATE TYPE "IndividualProject"
	FROM NVARCHAR(60) NULL
go

CREATE TYPE "CountryISO3"
	FROM NCHAR(3) NULL
go

CREATE TYPE "Country"
	FROM NCHAR(10) NULL
go

CREATE TYPE "YearMonthDay"
	FROM DATE NULL
go

CREATE TABLE "Sales"."Country"
( 
	"CountryId"          "sdKeysNumber"."SurrogateKeyIdentityInt"  IDENTITY ( 1,1 )  NOT NULL ,
	"CountryISO3"        "CountryISO3"  NOT NULL ,
	"CountryName"        "Country"  NOT NULL ,
	"CountryISO2"        "CountryISO2"  NOT NULL 
	CONSTRAINT "DF_Template_NA_505610211"
		 DEFAULT  'N/A',
	"SalesRegion"        "Region"  NOT NULL 
	CONSTRAINT "DF_Template_NotApplicable_139680078"
		 DEFAULT  'N/A',
	"UserAuthorizationId" "SurrogateKeyInt"  NULL ,
	"SysStartTime"       "sdTimeStampDateTime"."CurrentTimeStamp" 
	CONSTRAINT "DF_Template_TimeStamp_37293742"
		 DEFAULT  sysdatetime(),
	"SysEndTime"         "sdTimeStampDateTime"."CurrentTimeStamp" 
	CONSTRAINT "DF_Template_TimeStamp_1549668916"
		 DEFAULT  sysdatetime()
)
go

CREATE TABLE "Audit"."CountryHistory"
( 
	"CountryHistoryId"   "sdKeysNumber"."SurrogateKeyIdentityInt"  IDENTITY ( 1,1 ) ,
	"CountryId"          "SurrogateKeyInt" ,
	"CountryName"        "Country"  NOT NULL ,
	"CountryISO2"        "CountryISO2"  NOT NULL 
	CONSTRAINT "DF_Template_NA_1932206121"
		 DEFAULT  'N/A',
	"CountryISO3"        "CountryISO3"  NOT NULL ,
	"Note"               "Description"  NOT NULL ,
	"IsDeleted"          "sdCharString"."SingleChar"  NULL ,
	"TransactionNumber"  "SequenceSmallint"  NULL 
	CONSTRAINT "DF_Template_StartAtZero_1762621919"
		 DEFAULT  0,
	"SysStartTime"       "sdTimeStampDateTime"."CurrentTimeStamp" 
	CONSTRAINT "DF_Template_TimeStamp_1894444706"
		 DEFAULT  sysdatetime(),
	"SysEndTime"         "sdTimeStampDateTime"."CurrentTimeStamp" 
	CONSTRAINT "DF_Template_TimeStamp_2087297922"
		 DEFAULT  sysdatetime(),
	"UserAuthenticatedKey" "SurrogateKeyInt"  NULL 
)
go

CREATE TABLE "Sales"."Customer"
( 
	"CustomerId"         "sdKeysNumber"."SurrogateKeyIdentityInt"  IDENTITY ( 1,1 )  NOT NULL ,
	"CustomerName"       "FullName"  NOT NULL 
	CONSTRAINT "CK_Template_FullName_1395338788"
		CHECK  ( [CustomerName] like '[A-Z]% [A-Z]%' ),
	"CustomerAddress1"   "sdAddressesString"."Address"  NOT NULL ,
	"CustomerAddress2"   "sdAddressesString"."Address"  NULL ,
	"CustomerTown"       "sdAddressesString"."Town"  NULL 
	CONSTRAINT "DF_Template_NotApplicable_1633586356"
		 DEFAULT  'N/A',
	"CustomerPostalCode" "sdAddressesString"."PostalCode"  NULL 
	CONSTRAINT "DF_Template_NotApplicable_452214267"
		 DEFAULT  'N/A',
	"CountryId"          "sdKeysNumber"."SurrogateKeyIdentityInt"  NOT NULL ,
	"UserAuthorizationId" "SurrogateKeyInt"  NULL ,
	"SysStartTime"       "sdTimeStampDateTime"."CurrentTimeStamp" 
	CONSTRAINT "DF_Template_TimeStamp_758122226"
		 DEFAULT  sysdatetime(),
	"SysEndTime"         "sdTimeStampDateTime"."CurrentTimeStamp" 
	CONSTRAINT "DF_Template_TimeStamp_1679419197"
		 DEFAULT  sysdatetime()
)
go

CREATE TABLE "Sales"."CustomerComment"
( 
	"CustomerComment"    "Comments"  NOT NULL 
	CONSTRAINT "CK_Template_StartUpperEndPeriod_1595136306"
		CHECK  ( [CustomerComment] like '[A-Z]%.' ),
	"CustomerCommentId"  "sdKeysNumber"."SurrogateKeyIdentityInt"  IDENTITY ( 1,1 ) ,
	"ManufacturerVehicleStockId" "SurrogateKeyInt" ,
	"UserAuthorizationId" "SurrogateKeyInt"  NOT NULL ,
	"SysStartTime"       "sdTimeStampDateTime"."CurrentTimeStamp" 
	CONSTRAINT "DF_Template_TimeStamp_1508386157"
		 DEFAULT  sysdatetime(),
	"SysEndTime"         "sdTimeStampDateTime"."CurrentTimeStamp" 
	CONSTRAINT "DF_Template_TimeStamp_1871155627"
		 DEFAULT  sysdatetime()
)
go

CREATE TABLE "Audit"."CustomerHistory"
( 
	"CustomerHistoryId"  "sdKeysNumber"."SurrogateKeyIdentityInt"  IDENTITY ( 1,1 ) ,
	"CustomerId"         "SurrogateKeyInt" ,
	"CustomerAddress1"   "sdAddressesString"."Address"  NOT NULL ,
	"CustomerAddress2"   "sdAddressesString"."Address" ,
	"CountryId"          "SurrogateKeyInt" ,
	"CustomerPostalCode" "sdAddressesString"."PostalCode" 
	CONSTRAINT "DF_Template_NotApplicable_107166240"
		 DEFAULT  'N/A',
	"CustomerTown"       "sdAddressesString"."Town" 
	CONSTRAINT "DF_Template_NotApplicable_646402549"
		 DEFAULT  'N/A',
	"Note"               "Description"  NOT NULL ,
	"IsDeleted"          "sdCharString"."SingleChar"  NULL ,
	"TransactionNumber"  "SequenceSmallint"  NULL 
	CONSTRAINT "DF_Template_StartAtZero_1632871638"
		 DEFAULT  0,
	"SysStartTime"       "sdTimeStampDateTime"."CurrentTimeStamp" 
	CONSTRAINT "DF_Template_TimeStamp_1256856166"
		 DEFAULT  sysdatetime(),
	"SysEndTime"         "sdTimeStampDateTime"."CurrentTimeStamp" 
	CONSTRAINT "DF_Template_TimeStamp_2056167593"
		 DEFAULT  sysdatetime(),
	"CustomerName"       "FullName"  NOT NULL ,
	"UserAuthenticatedKey" "SurrogateKeyInt"  NULL 
)
go

CREATE TABLE "Sales"."CustomerMarketingInformation"
( 
	"IsCustomerReseller" "sdCharString"."SingleChar" ,
	"IsCustomerCreditRisk" "sdCharString"."SingleChar" ,
	"CustomerSpendCapacity" "SpendCapacity" ,
	"CustomerMarketingInfoId" "sdKeysNumber"."SurrogateKeyIdentityInt"  IDENTITY ( 1,1 ) ,
	"CustomerId"         "SurrogateKeyInt" ,
	"UserAuthorizationId" "SurrogateKeyInt"  NULL ,
	"SysStartTime"       "sdTimeStampDateTime"."CurrentTimeStamp" 
	CONSTRAINT "DF_Template_TimeStamp_676796144"
		 DEFAULT  sysdatetime(),
	"SysEndTime"         "sdTimeStampDateTime"."CurrentTimeStamp" 
	CONSTRAINT "DF_Template_TimeStamp_1411116054"
		 DEFAULT  sysdatetime()
)
go

CREATE TABLE "Production"."ManufacturerVehicleMake"
( 
	"ManufacturerVehicleMakeId" "sdKeysNumber"."SurrogateKeyIdentityInt"  IDENTITY ( 1,1 )  NOT NULL ,
	"ManufacturerVehicleMakeName" "MakeName"  NOT NULL 
	CONSTRAINT "CK_Template_StartUpper_725943074"
		CHECK  ( [ManufacturerVehicleMakeName] like '[A-Z]%' ),
	"CountryId"          "sdKeysNumber"."SurrogateKeyIdentityInt"  NOT NULL ,
	"ManufacturerVehicleMarketingType" "MarketType"  NOT NULL 
	CONSTRAINT "DF_Template_NotApplicable_171566771"
		 DEFAULT  'N/A',
	"SysStartTime"       "sdTimeStampDateTime"."CurrentTimeStamp" 
	CONSTRAINT "DF_Template_TimeStamp_1899394478"
		 DEFAULT  sysdatetime(),
	"SysEndTime"         "sdTimeStampDateTime"."CurrentTimeStamp" 
	CONSTRAINT "DF_Template_TimeStamp_524712541"
		 DEFAULT  sysdatetime(),
	"UserAuthorizationId" "SurrogateKeyInt"  NULL 
)
go

CREATE TABLE "Audit"."ManufacturerVehicleMakeHistory"
( 
	"ManufacturerVehicleMakeHistoryId" "sdKeysNumber"."SurrogateKeyIdentityInt"  IDENTITY ( 1,1 ) ,
	"ManufacturerVehicleMakeName" "MakeName"  NOT NULL ,
	"CountryId"          "SurrogateKeyInt" ,
	"ManufacturerVehicleMarketingType" "MarketType"  NOT NULL 
	CONSTRAINT "DF_Template_NotApplicable_1863853186"
		 DEFAULT  'N/A',
	"Note"               "Description"  NOT NULL ,
	"IsDeleted"          "sdCharString"."SingleChar"  NULL ,
	"TransactionNumber"  "SequenceSmallint"  NULL 
	CONSTRAINT "DF_Template_StartAtZero_457963921"
		 DEFAULT  0,
	"SysStartTime"       "sdTimeStampDateTime"."CurrentTimeStamp" 
	CONSTRAINT "DF_Template_TimeStamp_360152862"
		 DEFAULT  sysdatetime(),
	"SysEndTime"         "sdTimeStampDateTime"."CurrentTimeStamp" 
	CONSTRAINT "DF_Template_TimeStamp_336724235"
		 DEFAULT  sysdatetime(),
	"UserAuthenticatedKey" "SurrogateKeyInt"  NULL ,
	"ManufacturerVehicleMakeId" "SurrogateKeyInt" 
)
go

CREATE TABLE "Production"."ManufacturerVehicleModel"
( 
	"ManufacturerVehicleModelId" "sdKeysNumber"."SurrogateKeyIdentityInt"  IDENTITY ( 1,1 )  NOT NULL ,
	"ManufacturerVehicleModelName" "MakeName"  NOT NULL 
	CONSTRAINT "CK_Template_StartUpper_1231497889"
		CHECK  ( [ManufacturerVehicleModelName] like '[A-Z]%' ),
	"ManufacturerVehicleModelVariant" "Model"  NULL 
	CONSTRAINT "CK_Template_StartUpper_1380016187"
		CHECK  ( [ManufacturerVehicleModelVariant] like '[A-Z]%' ),
	"UserAuthorizationId" "SurrogateKeyInt"  NOT NULL ,
	"SysStartTime"       "sdTimeStampDateTime"."CurrentTimeStamp" 
	CONSTRAINT "DF_Template_TimeStamp_1245601903"
		 DEFAULT  sysdatetime(),
	"SysEndTime"         "sdTimeStampDateTime"."CurrentTimeStamp" 
	CONSTRAINT "DF_Template_TimeStamp_881172821"
		 DEFAULT  sysdatetime()
)
go

CREATE TABLE "Audit"."ManufacturerVehicleModelHistory"
( 
	"ManufacturerVehicleModelHistoryId" "sdKeysNumber"."SurrogateKeyIdentityInt"  IDENTITY ( 1,1 ) ,
	"ManufacturerVehicleModelName" "MakeName"  NOT NULL ,
	"ManufacturerVehicleModelVariant" "Model" ,
	"ManufacturerVehicleModelId" "SurrogateKeyInt" ,
	"Note"               "Description"  NOT NULL ,
	"IsDeleted"          "sdCharString"."SingleChar"  NULL ,
	"TransactionNumber"  "SequenceSmallint"  NULL 
	CONSTRAINT "DF_Template_StartAtZero_101503641"
		 DEFAULT  0,
	"SysStartTime"       "sdTimeStampDateTime"."CurrentTimeStamp" 
	CONSTRAINT "DF_Template_TimeStamp_1419671347"
		 DEFAULT  sysdatetime(),
	"SysEndTime"         "sdTimeStampDateTime"."CurrentTimeStamp" 
	CONSTRAINT "DF_Template_TimeStamp_203898930"
		 DEFAULT  sysdatetime(),
	"UserAuthenticatedKey" "SurrogateKeyInt" 
)
go

CREATE TABLE "Production"."ManufacturerVehicleStock"
( 
	"ManufacturerVehicleStockId" "sdKeysNumber"."SurrogateKeyIdentityInt"  IDENTITY ( 1,1 )  NOT NULL ,
	"VehicleStockCode"   "sdDepartmentalString"."StockCode"  NOT NULL ,
	"VehicleCost"        "sdCostsNumber"."Cost"  NOT NULL 
	CONSTRAINT "DF_Template_StartAtZero_1754672843"
		 DEFAULT  0,
	"VehicleRepairsCharge" "sdCostsNumber"."Charge"  NOT NULL 
	CONSTRAINT "DF_Template_StartAtZero_1686302396"
		 DEFAULT  0,
	"VehiclePartsCharge" "sdCostsNumber"."Charge"  NOT NULL 
	CONSTRAINT "DF_Template_StartAtZero_1967420567"
		 DEFAULT  0,
	"VehicleDeliveryCharge" "sdCostsNumber"."Charge"  NOT NULL 
	CONSTRAINT "DF_Template_StartAtZero_1765745715"
		 DEFAULT  0,
	"IsPremiumRoadHandlingPackage" "sdCharString"."SingleChar"  NOT NULL ,
	"VehicleColor"       "VehicleColor"  NOT NULL 
	CONSTRAINT "DF_Template_NotApplicable_505273107"
		 DEFAULT  'N/A',
	"ManufacturerVehicleModelId" "sdKeysNumber"."SurrogateKeyIdentityInt"  NOT NULL ,
	"ManufacturerVehicleMakeId" "SurrogateKeyInt"  NOT NULL ,
	"UserAuthorizationId" "SurrogateKeyInt"  NULL ,
	"SysStartTime"       "sdTimeStampDateTime"."CurrentTimeStamp" 
	CONSTRAINT "DF_Template_TimeStamp_1061182314"
		 DEFAULT  sysdatetime(),
	"SysEndTime"         "sdTimeStampDateTime"."CurrentTimeStamp" 
	CONSTRAINT "DF_Template_TimeStamp_965389395"
		 DEFAULT  sysdatetime()
)
go

CREATE TABLE "Audit"."ManufacturerVehicleStockHistory"
( 
	"ManufacturerVehicleStockHistoryId" "sdKeysNumber"."SurrogateKeyIdentityInt"  IDENTITY ( 1,1 ) ,
	"ManufacturerVehicleStockId" "SurrogateKeyInt" ,
	"ManufacturerVehicleMakeId" "SurrogateKeyInt" ,
	"ManufacturerVehicleModelId" "SurrogateKeyInt" ,
	"VehicleColor"       "VehicleColor"  NOT NULL 
	CONSTRAINT "DF_Template_NotApplicable_1224234060"
		 DEFAULT  'N/A',
	"VehicleCost"        "sdCostsNumber"."Cost"  NOT NULL 
	CONSTRAINT "DF_Template_StartAtZero_2126875954"
		 DEFAULT  0,
	"VehicleRepairsCharge" "sdCostsNumber"."Charge"  NOT NULL 
	CONSTRAINT "DF_Template_StartAtZero_891586470"
		 DEFAULT  0,
	"VehiclePartsCharge" "sdCostsNumber"."Charge"  NOT NULL 
	CONSTRAINT "DF_Template_StartAtZero_237913401"
		 DEFAULT  0,
	"VehicleDeliveryCharge" "sdCostsNumber"."Charge"  NOT NULL 
	CONSTRAINT "DF_Template_StartAtZero_945407390"
		 DEFAULT  0,
	"IsPremiumRoadHandlingPackage" "sdFlagsNumber"."IsTrueBit" ,
	"Note"               "Description"  NOT NULL ,
	"IsDeleted"          "sdCharString"."SingleChar"  NULL ,
	"TransactionNumber"  "SequenceSmallint"  NULL 
	CONSTRAINT "DF_Template_StartAtZero_17287067"
		 DEFAULT  0,
	"SysStartTime"       "sdTimeStampDateTime"."CurrentTimeStamp" 
	CONSTRAINT "DF_Template_TimeStamp_1504277816"
		 DEFAULT  sysdatetime(),
	"SysEndTime"         "sdTimeStampDateTime"."CurrentTimeStamp" 
	CONSTRAINT "DF_Template_TimeStamp_170673469"
		 DEFAULT  sysdatetime(),
	"UserAuthenticatedKey" "SurrogateKeyInt" 
)
go

CREATE TABLE "Sales"."SalesOrderVehicle"
( 
	"SalesOrderVehicleId" "sdKeysNumber"."SurrogateKeyIdentityInt"  IDENTITY ( 1,1 )  NOT NULL ,
	"CustomerId"         "SurrogateKeyInt"  NOT NULL ,
	"StaffId"            "SurrogateKeyInt"  NOT NULL ,
	"InvoiceNumber"      "Invoice"  NOT NULL ,
	"TotalSalePrice"     "sdCostsNumber"."Cost"  NOT NULL 
	CONSTRAINT "DF_Template_StartAtZero_31686257"
		 DEFAULT  0,
	"SaleOrderDate"      "YearMonthDay"  NOT NULL 
	CONSTRAINT "DF_Template_StartYearMonthDay_2045299427"
		 DEFAULT  '1900-01-01',
	"SalesCategoryDescription" AS (CASE WHEN TotalSalePrice >= 100 AND TotalSalePrice <= 25000 
           THEN 'Very Low' 
      WHEN TotalSalePrice >=25001 AND TotalSalePrice <=50000 
           THEN 'Low'
      WHEN TotalSalePrice >=50001 AND TotalSalePrice <=75000 
           THEN 'Medium'
      WHEN TotalSalePrice >=75001 AND TotalSalePrice <=100000 
           THEN 'High'
      WHEN TotalSalePrice >=100001 AND TotalSalePrice <=150000 
           THEN 'Very High'
      WHEN TotalSalePrice >=150001 AND TotalSalePrice <=250000 
           THEN 'Exceptional'
      ELSE 'Sales Category has no Description.' END) COLLATE SQL_Latin1_General_CP1_CI_AS PERSISTED NOT NULL 
	CONSTRAINT "CK_Template_StartUpperEndPeriod_2081353261"
		CHECK  ( [SalesCategoryDescription] like '[A-Z]%.' ),
	"UserAuthorizationId" "SurrogateKeyInt"  NULL ,
	"SysStartTime"       "sdTimeStampDateTime"."CurrentTimeStamp"  NULL 
	CONSTRAINT "DF_Template_TimeStamp_487384629"
		 DEFAULT  sysdatetime(),
	"SysEndTime"         "sdTimeStampDateTime"."CurrentTimeStamp"  NULL 
	CONSTRAINT "DF_Template_TimeStamp_1363161466"
		 DEFAULT  sysdatetime()
)
go

CREATE TABLE "Sales"."SalesOrderVehicleDetail"
( 
	"SalesOrderVehicleDetailId" "sdKeysNumber"."SurrogateKeyIdentityInt"  IDENTITY ( 1,1 )  NOT NULL ,
	"LineItemNumber"     "sdBasicNumber"."BasicInt"  NOT NULL 
	CONSTRAINT "DF_Template_StartAtZero_229896148"
		 DEFAULT  0,
	"SalePrice"          "sdCostsNumber"."Cost"  NOT NULL 
	CONSTRAINT "DF_Template_StartAtZero_107438253"
		 DEFAULT  0,
	"LineItemDiscount"   "Discount"  NULL 
	CONSTRAINT "DF_Template_StartAtZero_26372202"
		 DEFAULT  0,
	"DiscountedSalePrice" AS ("SalePrice"-"LineItemDiscount") PERSISTED NOT NULL ,
	"ManufacturerVehicleStockId" "SurrogateKeyInt"  NOT NULL ,
	"SalesOrderVehicleId" "SurrogateKeyInt" ,
	"UserAuthorizationId" "SurrogateKeyInt"  NOT NULL ,
	"SysStartTime"       "sdTimeStampDateTime"."CurrentTimeStamp" 
	CONSTRAINT "DF_Template_TimeStamp_1517188529"
		 DEFAULT  sysdatetime(),
	"SysEndTime"         "sdTimeStampDateTime"."CurrentTimeStamp" 
	CONSTRAINT "DF_Template_TimeStamp_524521765"
		 DEFAULT  sysdatetime()
)
go

CREATE TABLE "Audit"."SalesOrderVehicleDetailHistory"
( 
	"SalesOrderVehicleDetailHistoryId" "sdKeysNumber"."SurrogateKeyIdentityInt"  IDENTITY ( 1,1 ) ,
	"SalesOrderVehicleDetailId" "SurrogateKeyInt" ,
	"SalesOrderVehicleId" "SurrogateKeyInt" ,
	"ManufacturerVehicleStockId" "SurrogateKeyInt" ,
	"LineItemNumber"     "sdBasicNumber"."BasicInt"  NOT NULL 
	CONSTRAINT "DF_Template_StartAtZero_2058398882"
		 DEFAULT  0,
	"SalePrice"          "sdCostsNumber"."Cost"  NOT NULL 
	CONSTRAINT "DF_Template_StartAtZero_724279959"
		 DEFAULT  0,
	"LineItemDiscount"   "Discount" 
	CONSTRAINT "DF_Template_StartAtZero_1100950170"
		 DEFAULT  0,
	"DiscountedSalePrice" "sdCostsNumber"."Cost"  NOT NULL ,
	"Note"               "Description"  NOT NULL ,
	"TransactionNumber"  "SequenceSmallint"  NULL 
	CONSTRAINT "DF_Template_StartAtZero_458154697"
		 DEFAULT  0,
	"IsDeleted"          "sdCharString"."SingleChar"  NULL ,
	"SysStartTime"       "sdTimeStampDateTime"."CurrentTimeStamp" 
	CONSTRAINT "DF_Template_TimeStamp_311314206"
		 DEFAULT  sysdatetime(),
	"SysEndTime"         "sdTimeStampDateTime"."CurrentTimeStamp" 
	CONSTRAINT "DF_Template_TimeStamp_602800607"
		 DEFAULT  sysdatetime(),
	"UserAuthenticatedKey" "SurrogateKeyInt"  NULL 
)
go

CREATE TABLE "Audit"."SalesOrderVehicleHistory"
( 
	"Note"               "Description"  NOT NULL ,
	"IsDeleted"          "sdCharString"."SingleChar"  NULL ,
	"TransactionNumber"  "SequenceSmallint"  NULL 
	CONSTRAINT "DF_Template_StartAtZero_1949129369"
		 DEFAULT  0,
	"SysStartTime"       "sdTimeStampDateTime"."CurrentTimeStamp" 
	CONSTRAINT "DF_Template_TimeStamp_1899255635"
		 DEFAULT  sysdatetime(),
	"SysEndTime"         "sdTimeStampDateTime"."CurrentTimeStamp" 
	CONSTRAINT "DF_Template_TimeStamp_1033992799"
		 DEFAULT  sysdatetime(),
	"SalesOrderVehicleHistoryId" "sdKeysNumber"."SurrogateKeyIdentityInt"  IDENTITY ( 1,1 ) ,
	"CustomerId"         "SurrogateKeyInt" ,
	"StaffId"            "SurrogateKeyInt" ,
	"InvoiceNumber"      "Invoice" ,
	"SaleOrderDate"      "YearMonthDay" 
	CONSTRAINT "DF_Template_StartYearMonthDay_1383574671"
		 DEFAULT  '1900-01-01',
	"TotalSalePrice"     "sdCostsNumber"."Cost"  NOT NULL 
	CONSTRAINT "DF_Template_StartAtZero_1443557263"
		 DEFAULT  0,
	"SalesCategoryDescription" "Description"  NOT NULL ,
	"UserAuthenticatedKey" "SurrogateKeyInt" ,
	"SalesOrderVehicleId" "SurrogateKeyInt" 
)
go

CREATE TABLE "HumanResources"."Staff"
( 
	"StaffId"            "sdKeysNumber"."SurrogateKeyIdentityInt"  IDENTITY ( 1,1 )  NOT NULL ,
	"StaffName"          "FullName"  NOT NULL 
	CONSTRAINT "CK_Template_FullName_1020420988"
		CHECK  ( [StaffName] like '[A-Z]% [A-Z]%' ),
	"ManagerId"          "SurrogateKeyInt"  NULL ,
	"DepartmentName"     "sdDepartmentalString"."Department"  NOT NULL ,
	"UserAuthorizationId" "SurrogateKeyInt"  NOT NULL ,
	"SysStartTime"       "sdTimeStampDateTime"."CurrentTimeStamp"  NULL 
	CONSTRAINT "DF_Template_TimeStamp_1413621325"
		 DEFAULT  sysdatetime(),
	"SysEndTime"         "sdTimeStampDateTime"."CurrentTimeStamp"  NULL 
	CONSTRAINT "DF_Template_TimeStamp_1856477009"
		 DEFAULT  sysdatetime()
)
go

CREATE TABLE "Audit"."StaffHistory"
( 
	"StaffHistoryId"     "sdKeysNumber"."SurrogateKeyIdentityInt"  IDENTITY ( 1,1 ) ,
	"StaffName"          "FullName"  NOT NULL ,
	"DepartmentName"     "sdDepartmentalString"."Department"  NOT NULL ,
	"Note"               "Description"  NOT NULL ,
	"IsDeleted"          "sdCharString"."SingleChar"  NULL ,
	"TransactionNumber"  "SequenceSmallint"  NULL 
	CONSTRAINT "DF_Template_StartAtZero_873800548"
		 DEFAULT  0,
	"SysEndTime"         "sdTimeStampDateTime"."CurrentTimeStamp" 
	CONSTRAINT "DF_Template_TimeStamp_140599848"
		 DEFAULT  sysdatetime(),
	"SysStartTime"       "sdTimeStampDateTime"."CurrentTimeStamp" 
	CONSTRAINT "DF_Template_TimeStamp_1989440365"
		 DEFAULT  sysdatetime(),
	"ManagerId"          "SurrogateKeyInt"  NULL ,
	"UserAuthenticatedKey" "SurrogateKeyInt"  NULL ,
	"StaffId"            "SurrogateKeyInt" 
)
go

CREATE TABLE "DbSecurity"."UserAuthorization"
( 
	"UserAuthorizationId" "SurrogateKeyInt" ,
	"ClassTime"          "ClassTime"  NULL 
	CONSTRAINT "DF_Template_ClassTime_2025254036"
		 DEFAULT  '9:15',
	"IndividualProject"  "IndividualProject"  NULL 
	CONSTRAINT "DF_Template_IndividualProject_440314219"
		 DEFAULT  'CSCI381 Final Group Project',
	"GroupMemberLastName" "LastName"  NOT NULL 
	CONSTRAINT "CK_Template_StartUpper_1175942379"
		CHECK  ( [GroupMemberLastName] like '[A-Z]%' ),
	"GroupMemberFirstName" "FirstName"  NOT NULL 
	CONSTRAINT "CK_Template_StartUpper_203695858"
		CHECK  ( [GroupMemberFirstName] like '[A-Z]%' ),
	"GroupName"          "FullName"  NOT NULL 
	CONSTRAINT "CK_Template_FullName_211404766"
		CHECK  ( [GroupName] like '[A-Z]% [A-Z]%' ),
	"SysStartTime"       "sdTimeStampDateTime"."CurrentTimeStamp"  NULL 
	CONSTRAINT "DF_Template_TimeStamp_149162482"
		 DEFAULT  sysdatetime(),
	"SysEndTime"         "sdTimeStampDateTime"."CurrentTimeStamp"  NULL 
	CONSTRAINT "DF_Template_TimeStamp_1962745169"
		 DEFAULT  sysdatetime()
)
go
