

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

ALTER TABLE "Sales"."Country"
	ADD CONSTRAINT "PK_Country" PRIMARY KEY  CLUSTERED ("CountryId" ASC)
go

ALTER TABLE "Sales"."Country"
	ADD CONSTRAINT "XAK1Country" UNIQUE ("CountryName"  ASC)
go

ALTER TABLE "Sales"."Country"
	ADD CONSTRAINT "XAK2Country" UNIQUE ("CountryISO2"  ASC)
go

ALTER TABLE "Sales"."Country"
	ADD CONSTRAINT "XAK3Country" UNIQUE ("CountryISO3"  ASC)
go

ALTER TABLE "Audit"."CountryHistory"
	ADD CONSTRAINT "XPKCountryHistory" PRIMARY KEY  CLUSTERED ("CountryHistoryId" ASC)
go

ALTER TABLE "Audit"."CountryHistory"
	ADD CONSTRAINT "XAK1CountryHistory" UNIQUE ("CountryId"  ASC,"SysStartTime"  ASC,"SysEndTime"  ASC,"CountryHistoryId"  ASC)
go

ALTER TABLE "Sales"."Customer"
	ADD CONSTRAINT "PK_Customer" PRIMARY KEY  CLUSTERED ("CustomerId" ASC)
go

ALTER TABLE "Sales"."Customer"
	ADD CONSTRAINT "XAK1Customer" UNIQUE ("CustomerName"  ASC,"CustomerAddress1"  ASC,"CustomerAddress2"  ASC)
go

CREATE NONCLUSTERED INDEX "XIE1Customer" ON "Sales"."Customer"
( 
	"CustomerName"        ASC
)
go

ALTER TABLE "Sales"."CustomerComment"
	ADD CONSTRAINT "XPKCustomerComment" PRIMARY KEY  CLUSTERED ("CustomerCommentId" ASC,"ManufacturerVehicleStockId" ASC)
go

ALTER TABLE "Audit"."CustomerHistory"
	ADD CONSTRAINT "XPKCustomerHistory" PRIMARY KEY  CLUSTERED ("CustomerHistoryId" ASC)
go

ALTER TABLE "Audit"."CustomerHistory"
	ADD CONSTRAINT "XAK1CustomerHistory" UNIQUE ("CustomerId"  ASC,"SysStartTime"  ASC,"SysEndTime"  ASC,"CustomerHistoryId"  ASC)
go

ALTER TABLE "Sales"."CustomerMarketingInformation"
	ADD CONSTRAINT "XPKCustomerMarketingInformation" PRIMARY KEY  CLUSTERED ("CustomerMarketingInfoId" ASC,"CustomerId" ASC)
go

CREATE NONCLUSTERED INDEX "XIE1CustomerMarketingInformation" ON "Sales"."CustomerMarketingInformation"
( 
	"CustomerSpendCapacity"  ASC
)
go

ALTER TABLE "Production"."ManufacturerVehicleMake"
	ADD CONSTRAINT "PK_Make" PRIMARY KEY  CLUSTERED ("ManufacturerVehicleMakeId" ASC)
go

ALTER TABLE "Production"."ManufacturerVehicleMake"
	ADD CONSTRAINT "XAK1ManufacturerVehicleMake" UNIQUE ("ManufacturerVehicleMakeName"  ASC)
go

ALTER TABLE "Audit"."ManufacturerVehicleMakeHistory"
	ADD CONSTRAINT "XPKManufacturerVehicleMakeHistory" PRIMARY KEY  CLUSTERED ("ManufacturerVehicleMakeHistoryId" ASC)
go

ALTER TABLE "Audit"."ManufacturerVehicleMakeHistory"
	ADD CONSTRAINT "XAK1ManufacturerVehicleMakeHistory" UNIQUE ("ManufacturerVehicleMakeId"  ASC,"SysStartTime"  ASC,"SysEndTime"  ASC,"ManufacturerVehicleMakeHistoryId"  ASC)
go

ALTER TABLE "Production"."ManufacturerVehicleModel"
	ADD CONSTRAINT "PK_Model_1" PRIMARY KEY  CLUSTERED ("ManufacturerVehicleModelId" ASC)
go

ALTER TABLE "Production"."ManufacturerVehicleModel"
	ADD CONSTRAINT "XAK1ManufacturerVehicleModel" UNIQUE ("ManufacturerVehicleModelName"  ASC,"ManufacturerVehicleModelVariant"  ASC)
go

ALTER TABLE "Audit"."ManufacturerVehicleModelHistory"
	ADD CONSTRAINT "XPKManufacturerVehicleModelHistory" PRIMARY KEY  CLUSTERED ("ManufacturerVehicleModelHistoryId" ASC)
go

ALTER TABLE "Audit"."ManufacturerVehicleModelHistory"
	ADD CONSTRAINT "XAK1ManufacturerVehicleModelHistory" UNIQUE ("ManufacturerVehicleModelId"  ASC,"SysStartTime"  ASC,"SysEndTime"  ASC,"ManufacturerVehicleModelHistoryId"  ASC)
go

ALTER TABLE "Production"."ManufacturerVehicleStock"
	ADD CONSTRAINT "PK_Stock" PRIMARY KEY  CLUSTERED ("ManufacturerVehicleStockId" ASC)
go

ALTER TABLE "Production"."ManufacturerVehicleStock"
	ADD CONSTRAINT "XAK1ManufacturerVehicleStock" UNIQUE ("VehicleStockCode"  ASC)
go

ALTER TABLE "Production"."ManufacturerVehicleStock"
	ADD CONSTRAINT "XAK2ManufacturerVehicleStock" UNIQUE ("ManufacturerVehicleModelId"  ASC,"ManufacturerVehicleMakeId"  ASC)
go

ALTER TABLE "Audit"."ManufacturerVehicleStockHistory"
	ADD CONSTRAINT "XPKManufacturerVehicleStockHistory" PRIMARY KEY  CLUSTERED ("ManufacturerVehicleStockHistoryId" ASC)
go

ALTER TABLE "Audit"."ManufacturerVehicleStockHistory"
	ADD CONSTRAINT "XAK1ManufacturerVehicleStockHistory" UNIQUE ("ManufacturerVehicleStockId"  ASC,"SysStartTime"  ASC,"SysEndTime"  ASC,"ManufacturerVehicleStockHistoryId"  ASC)
go

ALTER TABLE "Sales"."SalesOrderVehicle"
	ADD CONSTRAINT "XPKSalesOrderVehicle" PRIMARY KEY  CLUSTERED ("SalesOrderVehicleId" ASC)
go

ALTER TABLE "Sales"."SalesOrderVehicle"
	ADD CONSTRAINT "XAK1SalesOrderVehicle" UNIQUE ("InvoiceNumber"  ASC)
go

ALTER TABLE "Sales"."SalesOrderVehicleDetail"
	ADD CONSTRAINT "PK_SalesDetails" PRIMARY KEY  CLUSTERED ("SalesOrderVehicleDetailId" ASC,"SalesOrderVehicleId" ASC)
go

ALTER TABLE "Audit"."SalesOrderVehicleDetailHistory"
	ADD CONSTRAINT "XPKSalesOrderVehicleDetailHistory" PRIMARY KEY  CLUSTERED ("SalesOrderVehicleDetailHistoryId" ASC)
go

ALTER TABLE "Audit"."SalesOrderVehicleDetailHistory"
	ADD CONSTRAINT "XAK1SalesOrderVehicleDetailHistory" UNIQUE ("SalesOrderVehicleDetailId"  ASC,"SysStartTime"  ASC,"SysEndTime"  ASC,"SalesOrderVehicleDetailHistoryId"  ASC)
go

ALTER TABLE "Audit"."SalesOrderVehicleHistory"
	ADD CONSTRAINT "XPKSalesOrderVehicleHistory" PRIMARY KEY  CLUSTERED ("SalesOrderVehicleHistoryId" ASC)
go

ALTER TABLE "Audit"."SalesOrderVehicleHistory"
	ADD CONSTRAINT "XAK1SalesOrderVehicleHistory" UNIQUE ("SalesOrderVehicleId"  ASC,"SysStartTime"  ASC,"SysEndTime"  ASC,"SalesOrderVehicleHistoryId"  ASC)
go

ALTER TABLE "HumanResources"."Staff"
	ADD CONSTRAINT "XPKStaff" PRIMARY KEY  CLUSTERED ("StaffId" ASC)
go

CREATE NONCLUSTERED INDEX "XIE1Staff" ON "HumanResources"."Staff"
( 
	"StaffName"           ASC
)
go

ALTER TABLE "Audit"."StaffHistory"
	ADD CONSTRAINT "XPKStaffHistory" PRIMARY KEY  CLUSTERED ("StaffHistoryId" ASC)
go

ALTER TABLE "Audit"."StaffHistory"
	ADD CONSTRAINT "XAK1StaffHistory" UNIQUE ("StaffId"  ASC,"SysStartTime"  ASC,"SysEndTime"  ASC,"StaffHistoryId"  ASC)
go

ALTER TABLE "DbSecurity"."UserAuthorization"
	ADD CONSTRAINT "XPKUserAuthorization" PRIMARY KEY  CLUSTERED ("UserAuthorizationId" ASC)
go

ALTER TABLE "DbSecurity"."UserAuthorization"
	ADD CONSTRAINT "XAK1UserAuthorization" UNIQUE ("ClassTime"  ASC,"GroupName"  ASC)
go


ALTER TABLE "Sales"."Country"
	ADD CONSTRAINT "FK_Country_UserAuthorization" FOREIGN KEY ("UserAuthorizationId") REFERENCES "DbSecurity"."UserAuthorization"("UserAuthorizationId")
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE "Sales"."Customer"
	ADD CONSTRAINT "FK_Customer_Country" FOREIGN KEY ("CountryId") REFERENCES "Sales"."Country"("CountryId")
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE "Sales"."Customer"
	ADD CONSTRAINT "FK_Customer_UserAuthorization" FOREIGN KEY ("UserAuthorizationId") REFERENCES "DbSecurity"."UserAuthorization"("UserAuthorizationId")
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE "Sales"."CustomerComment"
	ADD CONSTRAINT "FK_CustomerComments_ManufacturerVehicleStock" FOREIGN KEY ("ManufacturerVehicleStockId") REFERENCES "Production"."ManufacturerVehicleStock"("ManufacturerVehicleStockId")
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE "Sales"."CustomerComment"
	ADD CONSTRAINT "FK_CustomerComments_UserAuthorization" FOREIGN KEY ("UserAuthorizationId") REFERENCES "DbSecurity"."UserAuthorization"("UserAuthorizationId")
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE "Sales"."CustomerMarketingInformation"
	ADD CONSTRAINT "FK_CustomerMarketingInformation_Customer" FOREIGN KEY ("CustomerId") REFERENCES "Sales"."Customer"("CustomerId")
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE "Sales"."CustomerMarketingInformation"
	ADD CONSTRAINT "FK_CustomerMarketingInformation_UserAuthorization" FOREIGN KEY ("UserAuthorizationId") REFERENCES "DbSecurity"."UserAuthorization"("UserAuthorizationId")
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE "Production"."ManufacturerVehicleMake"
	ADD CONSTRAINT "FK_ManufacturerVehicleMake_Country" FOREIGN KEY ("CountryId") REFERENCES "Sales"."Country"("CountryId")
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE "Production"."ManufacturerVehicleMake"
	ADD CONSTRAINT "FK_ManufacturerVehicleMake_UserAuthorization" FOREIGN KEY ("UserAuthorizationId") REFERENCES "DbSecurity"."UserAuthorization"("UserAuthorizationId")
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE "Production"."ManufacturerVehicleModel"
	ADD CONSTRAINT "FK_ManufacturerVehicleModel_UserAuthorization" FOREIGN KEY ("UserAuthorizationId") REFERENCES "DbSecurity"."UserAuthorization"("UserAuthorizationId")
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE "Production"."ManufacturerVehicleStock"
	ADD CONSTRAINT "FK_ManufacturerVehicleStock_ManufacturerVehicleModel" FOREIGN KEY ("ManufacturerVehicleModelId") REFERENCES "Production"."ManufacturerVehicleModel"("ManufacturerVehicleModelId")
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE "Production"."ManufacturerVehicleStock"
	ADD CONSTRAINT "FK_ManufacturerVehicleStock_ManufacturerVehicleMake" FOREIGN KEY ("ManufacturerVehicleMakeId") REFERENCES "Production"."ManufacturerVehicleMake"("ManufacturerVehicleMakeId")
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE "Production"."ManufacturerVehicleStock"
	ADD CONSTRAINT "FK_ManufacturerVehicleStock_UserAuthorization" FOREIGN KEY ("UserAuthorizationId") REFERENCES "DbSecurity"."UserAuthorization"("UserAuthorizationId")
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE "Sales"."SalesOrderVehicle"
	ADD CONSTRAINT "FK_SalesOrderVehicle_Staff" FOREIGN KEY ("StaffId") REFERENCES "HumanResources"."Staff"("StaffId")
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE "Sales"."SalesOrderVehicle"
	ADD CONSTRAINT "FK_SalesOrderVehicle_Customer" FOREIGN KEY ("CustomerId") REFERENCES "Sales"."Customer"("CustomerId")
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE "Sales"."SalesOrderVehicle"
	ADD CONSTRAINT "FK_SalesOrderVehicle_UserAuthorization" FOREIGN KEY ("UserAuthorizationId") REFERENCES "DbSecurity"."UserAuthorization"("UserAuthorizationId")
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE "Sales"."SalesOrderVehicleDetail"
	ADD CONSTRAINT "FK_SalesOrderVehicleDetail_ManufacturerVehicleStock" FOREIGN KEY ("ManufacturerVehicleStockId") REFERENCES "Production"."ManufacturerVehicleStock"("ManufacturerVehicleStockId")
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE "Sales"."SalesOrderVehicleDetail"
	ADD CONSTRAINT "FK_SalesOrderVehicleDetail_SalesOrderVehicle" FOREIGN KEY ("SalesOrderVehicleId") REFERENCES "Sales"."SalesOrderVehicle"("SalesOrderVehicleId")
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE "Sales"."SalesOrderVehicleDetail"
	ADD CONSTRAINT "FK_SalesOrderVehicleDetail_UserAuthorization" FOREIGN KEY ("UserAuthorizationId") REFERENCES "DbSecurity"."UserAuthorization"("UserAuthorizationId")
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


ALTER TABLE "HumanResources"."Staff"
	ADD CONSTRAINT "FK_Staff_UserAuthorization" FOREIGN KEY ("UserAuthorizationId") REFERENCES "DbSecurity"."UserAuthorization"("UserAuthorizationId")
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

ALTER TABLE "HumanResources"."Staff"
	ADD CONSTRAINT "FK_Staff_Staff" FOREIGN KEY ("StaffId") REFERENCES "HumanResources"."Staff"("StaffId")
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go

CREATE FUNCTION "dbo"."DatabaseObjects" (@ListOfObjectIDs varchar(max) )  
  RETURNS TABLE
 
  
as RETURN
(
    select object_id
         , schema_name(schema_id) + '.' + coalesce(object_name(parent_object_id) + '.', '') + name as name
    from sys.objects as ob
        inner join openjson(N'[' + @ListOfObjectIDs + N']')
            on convert(int, Value) = ob.object_id
);





go

CREATE FUNCTION "dbo"."fn_diagramobjects" ()  
  RETURNS int 
 WITH 
 EXECUTE AS 'dbo' 
AS BEGIN
		declare @id_upgraddiagrams		int
		declare @id_sysdiagrams			int
		declare @id_helpdiagrams		int
		declare @id_helpdiagramdefinition	int
		declare @id_creatediagram	int
		declare @id_renamediagram	int
		declare @id_alterdiagram 	int 
		declare @id_dropdiagram		int
		declare @InstalledObjects	int

		select @InstalledObjects = 0

		select 	@id_upgraddiagrams = object_id(N'dbo.sp_upgraddiagrams'),
			@id_sysdiagrams = object_id(N'dbo.sysdiagrams'),
			@id_helpdiagrams = object_id(N'dbo.sp_helpdiagrams'),
			@id_helpdiagramdefinition = object_id(N'dbo.sp_helpdiagramdefinition'),
			@id_creatediagram = object_id(N'dbo.sp_creatediagram'),
			@id_renamediagram = object_id(N'dbo.sp_renamediagram'),
			@id_alterdiagram = object_id(N'dbo.sp_alterdiagram'), 
			@id_dropdiagram = object_id(N'dbo.sp_dropdiagram')

		if @id_upgraddiagrams is not null
			select @InstalledObjects = @InstalledObjects + 1
		if @id_sysdiagrams is not null
			select @InstalledObjects = @InstalledObjects + 2
		if @id_helpdiagrams is not null
			select @InstalledObjects = @InstalledObjects + 4
		if @id_helpdiagramdefinition is not null
			select @InstalledObjects = @InstalledObjects + 8
		if @id_creatediagram is not null
			select @InstalledObjects = @InstalledObjects + 16
		if @id_renamediagram is not null
			select @InstalledObjects = @InstalledObjects + 32
		if @id_alterdiagram  is not null
			select @InstalledObjects = @InstalledObjects + 64
		if @id_dropdiagram is not null
			select @InstalledObjects = @InstalledObjects + 128
		
		return @InstalledObjects 
	END
go

CREATE TRIGGER Sales.tD_Country ON Sales.Country FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on Country */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* Sales.Country makes Production.ManufacturerVehicleMake on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00044753", PARENT_OWNER="Sales", PARENT_TABLE="Country"
    CHILD_OWNER="Production", CHILD_TABLE="ManufacturerVehicleMake"
    P2C_VERB_PHRASE="makes", C2P_VERB_PHRASE="made in", 
    FK_CONSTRAINT="FK_ManufacturerVehicleMake_Country", FK_COLUMNS="CountryId" */
    IF EXISTS (
      SELECT * FROM deleted,Production.ManufacturerVehicleMake
      WHERE
        /*  %JoinFKPK(Production.ManufacturerVehicleMake,deleted," = "," AND") */
        Production.ManufacturerVehicleMake.CountryId = deleted.CountryId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Sales.Country because Production.ManufacturerVehicleMake exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Sales.Country resided in by Sales.Customer on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Sales", PARENT_TABLE="Country"
    CHILD_OWNER="Sales", CHILD_TABLE="Customer"
    P2C_VERB_PHRASE="resided in by", C2P_VERB_PHRASE="resides in", 
    FK_CONSTRAINT="FK_Customer_Country", FK_COLUMNS="CountryId" */
    IF EXISTS (
      SELECT * FROM deleted,Sales.Customer
      WHERE
        /*  %JoinFKPK(Sales.Customer,deleted," = "," AND") */
        Sales.Customer.CountryId = deleted.CountryId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Sales.Country because Sales.Customer exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* DbSecurity.UserAuthorization authorizes Sales.Country on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="DbSecurity", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="Sales", CHILD_TABLE="Country"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_Country_UserAuthorization", FK_COLUMNS="UserAuthorizationId" */
    IF EXISTS (SELECT * FROM deleted,DbSecurity.UserAuthorization
      WHERE
        /* %JoinFKPK(deleted,DbSecurity.UserAuthorization," = "," AND") */
        deleted.UserAuthorizationId = DbSecurity.UserAuthorization.UserAuthorizationId AND
        NOT EXISTS (
          SELECT * FROM Sales.Country
          WHERE
            /* %JoinFKPK(Sales.Country,DbSecurity.UserAuthorization," = "," AND") */
            Sales.Country.UserAuthorizationId = DbSecurity.UserAuthorization.UserAuthorizationId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Sales.Country because DbSecurity.UserAuthorization exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Sales.tU_Country ON Sales.Country FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on Country */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insCountryId sdKeysNumber.SurrogateKeyIdentityInt,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Sales.Country makes Production.ManufacturerVehicleMake on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00049407", PARENT_OWNER="Sales", PARENT_TABLE="Country"
    CHILD_OWNER="Production", CHILD_TABLE="ManufacturerVehicleMake"
    P2C_VERB_PHRASE="makes", C2P_VERB_PHRASE="made in", 
    FK_CONSTRAINT="FK_ManufacturerVehicleMake_Country", FK_COLUMNS="CountryId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(CountryId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Production.ManufacturerVehicleMake
      WHERE
        /*  %JoinFKPK(Production.ManufacturerVehicleMake,deleted," = "," AND") */
        Production.ManufacturerVehicleMake.CountryId = deleted.CountryId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Sales.Country because Production.ManufacturerVehicleMake exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Sales.Country resided in by Sales.Customer on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Sales", PARENT_TABLE="Country"
    CHILD_OWNER="Sales", CHILD_TABLE="Customer"
    P2C_VERB_PHRASE="resided in by", C2P_VERB_PHRASE="resides in", 
    FK_CONSTRAINT="FK_Customer_Country", FK_COLUMNS="CountryId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(CountryId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Sales.Customer
      WHERE
        /*  %JoinFKPK(Sales.Customer,deleted," = "," AND") */
        Sales.Customer.CountryId = deleted.CountryId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Sales.Country because Sales.Customer exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* DbSecurity.UserAuthorization authorizes Sales.Country on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="DbSecurity", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="Sales", CHILD_TABLE="Country"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_Country_UserAuthorization", FK_COLUMNS="UserAuthorizationId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(UserAuthorizationId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,DbSecurity.UserAuthorization
        WHERE
          /* %JoinFKPK(inserted,DbSecurity.UserAuthorization) */
          inserted.UserAuthorizationId = DbSecurity.UserAuthorization.UserAuthorizationId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.UserAuthorizationId IS NULL
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Sales.Country because DbSecurity.UserAuthorization does not exist.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Production.tD_ManufacturerModel ON Production.ManufacturerVehicleModel FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on ManufacturerVehicleModel */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* Production.ManufacturerVehicleModel has Production.ManufacturerVehicleStock on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="0003a36b", PARENT_OWNER="Production", PARENT_TABLE="ManufacturerVehicleModel"
    CHILD_OWNER="Production", CHILD_TABLE="ManufacturerVehicleStock"
    P2C_VERB_PHRASE="has", C2P_VERB_PHRASE="belongs to", 
    FK_CONSTRAINT="FK_ManufacturerVehicleStock_ManufacturerVehicleModel", FK_COLUMNS="ManufacturerVehicleModelId" */
    IF EXISTS (
      SELECT * FROM deleted,Production.ManufacturerVehicleStock
      WHERE
        /*  %JoinFKPK(Production.ManufacturerVehicleStock,deleted," = "," AND") */
        Production.ManufacturerVehicleStock.ManufacturerVehicleModelId = deleted.ManufacturerVehicleModelId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Production.ManufacturerVehicleModel because Production.ManufacturerVehicleStock exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* DbSecurity.UserAuthorization authorizes Production.ManufacturerVehicleModel on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="DbSecurity", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="Production", CHILD_TABLE="ManufacturerVehicleModel"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_ManufacturerVehicleModel_UserAuthorization", FK_COLUMNS="UserAuthorizationId" */
    IF EXISTS (SELECT * FROM deleted,DbSecurity.UserAuthorization
      WHERE
        /* %JoinFKPK(deleted,DbSecurity.UserAuthorization," = "," AND") */
        deleted.UserAuthorizationId = DbSecurity.UserAuthorization.UserAuthorizationId AND
        NOT EXISTS (
          SELECT * FROM Production.ManufacturerVehicleModel
          WHERE
            /* %JoinFKPK(Production.ManufacturerVehicleModel,DbSecurity.UserAuthorization," = "," AND") */
            Production.ManufacturerVehicleModel.UserAuthorizationId = DbSecurity.UserAuthorization.UserAuthorizationId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Production.ManufacturerVehicleModel because DbSecurity.UserAuthorization exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Production.tU_ManufacturerModel ON Production.ManufacturerVehicleModel FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on ManufacturerVehicleModel */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insManufacturerVehicleModelId sdKeysNumber.SurrogateKeyIdentityInt,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Production.ManufacturerVehicleModel has Production.ManufacturerVehicleStock on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="0003d1c1", PARENT_OWNER="Production", PARENT_TABLE="ManufacturerVehicleModel"
    CHILD_OWNER="Production", CHILD_TABLE="ManufacturerVehicleStock"
    P2C_VERB_PHRASE="has", C2P_VERB_PHRASE="belongs to", 
    FK_CONSTRAINT="FK_ManufacturerVehicleStock_ManufacturerVehicleModel", FK_COLUMNS="ManufacturerVehicleModelId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(ManufacturerVehicleModelId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Production.ManufacturerVehicleStock
      WHERE
        /*  %JoinFKPK(Production.ManufacturerVehicleStock,deleted," = "," AND") */
        Production.ManufacturerVehicleStock.ManufacturerVehicleModelId = deleted.ManufacturerVehicleModelId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Production.ManufacturerVehicleModel because Production.ManufacturerVehicleStock exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* DbSecurity.UserAuthorization authorizes Production.ManufacturerVehicleModel on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="DbSecurity", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="Production", CHILD_TABLE="ManufacturerVehicleModel"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_ManufacturerVehicleModel_UserAuthorization", FK_COLUMNS="UserAuthorizationId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(UserAuthorizationId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,DbSecurity.UserAuthorization
        WHERE
          /* %JoinFKPK(inserted,DbSecurity.UserAuthorization) */
          inserted.UserAuthorizationId = DbSecurity.UserAuthorization.UserAuthorizationId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.UserAuthorizationId IS NULL
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Production.ManufacturerVehicleModel because DbSecurity.UserAuthorization does not exist.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Production.tD_ManufacturerVehicleMake ON Production.ManufacturerVehicleMake FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on ManufacturerVehicleMake */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* Production.ManufacturerVehicleMake makes a Production.ManufacturerVehicleStock on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="000528a4", PARENT_OWNER="Production", PARENT_TABLE="ManufacturerVehicleMake"
    CHILD_OWNER="Production", CHILD_TABLE="ManufacturerVehicleStock"
    P2C_VERB_PHRASE="makes a", C2P_VERB_PHRASE="made by", 
    FK_CONSTRAINT="FK_ManufacturerVehicleStock_ManufacturerVehicleMake", FK_COLUMNS="ManufacturerVehicleMakeId" */
    IF EXISTS (
      SELECT * FROM deleted,Production.ManufacturerVehicleStock
      WHERE
        /*  %JoinFKPK(Production.ManufacturerVehicleStock,deleted," = "," AND") */
        Production.ManufacturerVehicleStock.ManufacturerVehicleMakeId = deleted.ManufacturerVehicleMakeId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Production.ManufacturerVehicleMake because Production.ManufacturerVehicleStock exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* DbSecurity.UserAuthorization authorizes Production.ManufacturerVehicleMake on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="DbSecurity", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="Production", CHILD_TABLE="ManufacturerVehicleMake"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_ManufacturerVehicleMake_UserAuthorization", FK_COLUMNS="UserAuthorizationId" */
    IF EXISTS (SELECT * FROM deleted,DbSecurity.UserAuthorization
      WHERE
        /* %JoinFKPK(deleted,DbSecurity.UserAuthorization," = "," AND") */
        deleted.UserAuthorizationId = DbSecurity.UserAuthorization.UserAuthorizationId AND
        NOT EXISTS (
          SELECT * FROM Production.ManufacturerVehicleMake
          WHERE
            /* %JoinFKPK(Production.ManufacturerVehicleMake,DbSecurity.UserAuthorization," = "," AND") */
            Production.ManufacturerVehicleMake.UserAuthorizationId = DbSecurity.UserAuthorization.UserAuthorizationId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Production.ManufacturerVehicleMake because DbSecurity.UserAuthorization exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Sales.Country makes Production.ManufacturerVehicleMake on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Sales", PARENT_TABLE="Country"
    CHILD_OWNER="Production", CHILD_TABLE="ManufacturerVehicleMake"
    P2C_VERB_PHRASE="makes", C2P_VERB_PHRASE="made in", 
    FK_CONSTRAINT="FK_ManufacturerVehicleMake_Country", FK_COLUMNS="CountryId" */
    IF EXISTS (SELECT * FROM deleted,Sales.Country
      WHERE
        /* %JoinFKPK(deleted,Sales.Country," = "," AND") */
        deleted.CountryId = Sales.Country.CountryId AND
        NOT EXISTS (
          SELECT * FROM Production.ManufacturerVehicleMake
          WHERE
            /* %JoinFKPK(Production.ManufacturerVehicleMake,Sales.Country," = "," AND") */
            Production.ManufacturerVehicleMake.CountryId = Sales.Country.CountryId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Production.ManufacturerVehicleMake because Sales.Country exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Production.tU_ManufacturerVehicleMake ON Production.ManufacturerVehicleMake FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on ManufacturerVehicleMake */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insManufacturerVehicleMakeId sdKeysNumber.SurrogateKeyIdentityInt,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Production.ManufacturerVehicleMake makes a Production.ManufacturerVehicleStock on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00056fe4", PARENT_OWNER="Production", PARENT_TABLE="ManufacturerVehicleMake"
    CHILD_OWNER="Production", CHILD_TABLE="ManufacturerVehicleStock"
    P2C_VERB_PHRASE="makes a", C2P_VERB_PHRASE="made by", 
    FK_CONSTRAINT="FK_ManufacturerVehicleStock_ManufacturerVehicleMake", FK_COLUMNS="ManufacturerVehicleMakeId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(ManufacturerVehicleMakeId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Production.ManufacturerVehicleStock
      WHERE
        /*  %JoinFKPK(Production.ManufacturerVehicleStock,deleted," = "," AND") */
        Production.ManufacturerVehicleStock.ManufacturerVehicleMakeId = deleted.ManufacturerVehicleMakeId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Production.ManufacturerVehicleMake because Production.ManufacturerVehicleStock exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* DbSecurity.UserAuthorization authorizes Production.ManufacturerVehicleMake on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="DbSecurity", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="Production", CHILD_TABLE="ManufacturerVehicleMake"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_ManufacturerVehicleMake_UserAuthorization", FK_COLUMNS="UserAuthorizationId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(UserAuthorizationId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,DbSecurity.UserAuthorization
        WHERE
          /* %JoinFKPK(inserted,DbSecurity.UserAuthorization) */
          inserted.UserAuthorizationId = DbSecurity.UserAuthorization.UserAuthorizationId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.UserAuthorizationId IS NULL
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Production.ManufacturerVehicleMake because DbSecurity.UserAuthorization does not exist.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Sales.Country makes Production.ManufacturerVehicleMake on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Sales", PARENT_TABLE="Country"
    CHILD_OWNER="Production", CHILD_TABLE="ManufacturerVehicleMake"
    P2C_VERB_PHRASE="makes", C2P_VERB_PHRASE="made in", 
    FK_CONSTRAINT="FK_ManufacturerVehicleMake_Country", FK_COLUMNS="CountryId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(CountryId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Sales.Country
        WHERE
          /* %JoinFKPK(inserted,Sales.Country) */
          inserted.CountryId = Sales.Country.CountryId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.CountryId IS NULL
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Production.ManufacturerVehicleMake because Sales.Country does not exist.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Production.tD_ManufacturerVehicleStock ON Production.ManufacturerVehicleStock FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on ManufacturerVehicleStock */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* Production.ManufacturerVehicleStock can have Sales.CustomerComment on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00095d16", PARENT_OWNER="Production", PARENT_TABLE="ManufacturerVehicleStock"
    CHILD_OWNER="Sales", CHILD_TABLE="CustomerComment"
    P2C_VERB_PHRASE="can have", C2P_VERB_PHRASE="made on", 
    FK_CONSTRAINT="FK_CustomerComments_ManufacturerVehicleStock", FK_COLUMNS="ManufacturerVehicleStockId" */
    IF EXISTS (
      SELECT * FROM deleted,Sales.CustomerComment
      WHERE
        /*  %JoinFKPK(Sales.CustomerComment,deleted," = "," AND") */
        Sales.CustomerComment.ManufacturerVehicleStockId = deleted.ManufacturerVehicleStockId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Production.ManufacturerVehicleStock because Sales.CustomerComment exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Production.ManufacturerVehicleStock can have Sales.SalesOrderVehicleDetail on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Production", PARENT_TABLE="ManufacturerVehicleStock"
    CHILD_OWNER="Sales", CHILD_TABLE="SalesOrderVehicleDetail"
    P2C_VERB_PHRASE="can have", C2P_VERB_PHRASE="contains", 
    FK_CONSTRAINT="FK_SalesOrderVehicleDetail_ManufacturerVehicleStock", FK_COLUMNS="ManufacturerVehicleStockId" */
    IF EXISTS (
      SELECT * FROM deleted,Sales.SalesOrderVehicleDetail
      WHERE
        /*  %JoinFKPK(Sales.SalesOrderVehicleDetail,deleted," = "," AND") */
        Sales.SalesOrderVehicleDetail.ManufacturerVehicleStockId = deleted.ManufacturerVehicleStockId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Production.ManufacturerVehicleStock because Sales.SalesOrderVehicleDetail exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* DbSecurity.UserAuthorization authorizes Production.ManufacturerVehicleStock on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="DbSecurity", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="Production", CHILD_TABLE="ManufacturerVehicleStock"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_ManufacturerVehicleStock_UserAuthorization", FK_COLUMNS="UserAuthorizationId" */
    IF EXISTS (SELECT * FROM deleted,DbSecurity.UserAuthorization
      WHERE
        /* %JoinFKPK(deleted,DbSecurity.UserAuthorization," = "," AND") */
        deleted.UserAuthorizationId = DbSecurity.UserAuthorization.UserAuthorizationId AND
        NOT EXISTS (
          SELECT * FROM Production.ManufacturerVehicleStock
          WHERE
            /* %JoinFKPK(Production.ManufacturerVehicleStock,DbSecurity.UserAuthorization," = "," AND") */
            Production.ManufacturerVehicleStock.UserAuthorizationId = DbSecurity.UserAuthorization.UserAuthorizationId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Production.ManufacturerVehicleStock because DbSecurity.UserAuthorization exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Production.ManufacturerVehicleMake makes a Production.ManufacturerVehicleStock on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Production", PARENT_TABLE="ManufacturerVehicleMake"
    CHILD_OWNER="Production", CHILD_TABLE="ManufacturerVehicleStock"
    P2C_VERB_PHRASE="makes a", C2P_VERB_PHRASE="made by", 
    FK_CONSTRAINT="FK_ManufacturerVehicleStock_ManufacturerVehicleMake", FK_COLUMNS="ManufacturerVehicleMakeId" */
    IF EXISTS (SELECT * FROM deleted,Production.ManufacturerVehicleMake
      WHERE
        /* %JoinFKPK(deleted,Production.ManufacturerVehicleMake," = "," AND") */
        deleted.ManufacturerVehicleMakeId = Production.ManufacturerVehicleMake.ManufacturerVehicleMakeId AND
        NOT EXISTS (
          SELECT * FROM Production.ManufacturerVehicleStock
          WHERE
            /* %JoinFKPK(Production.ManufacturerVehicleStock,Production.ManufacturerVehicleMake," = "," AND") */
            Production.ManufacturerVehicleStock.ManufacturerVehicleMakeId = Production.ManufacturerVehicleMake.ManufacturerVehicleMakeId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Production.ManufacturerVehicleStock because Production.ManufacturerVehicleMake exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Production.ManufacturerVehicleModel has Production.ManufacturerVehicleStock on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Production", PARENT_TABLE="ManufacturerVehicleModel"
    CHILD_OWNER="Production", CHILD_TABLE="ManufacturerVehicleStock"
    P2C_VERB_PHRASE="has", C2P_VERB_PHRASE="belongs to", 
    FK_CONSTRAINT="FK_ManufacturerVehicleStock_ManufacturerVehicleModel", FK_COLUMNS="ManufacturerVehicleModelId" */
    IF EXISTS (SELECT * FROM deleted,Production.ManufacturerVehicleModel
      WHERE
        /* %JoinFKPK(deleted,Production.ManufacturerVehicleModel," = "," AND") */
        deleted.ManufacturerVehicleModelId = Production.ManufacturerVehicleModel.ManufacturerVehicleModelId AND
        NOT EXISTS (
          SELECT * FROM Production.ManufacturerVehicleStock
          WHERE
            /* %JoinFKPK(Production.ManufacturerVehicleStock,Production.ManufacturerVehicleModel," = "," AND") */
            Production.ManufacturerVehicleStock.ManufacturerVehicleModelId = Production.ManufacturerVehicleModel.ManufacturerVehicleModelId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Production.ManufacturerVehicleStock because Production.ManufacturerVehicleModel exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Production.tU_ManufacturerVehicleStock ON Production.ManufacturerVehicleStock FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on ManufacturerVehicleStock */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insManufacturerVehicleStockId sdKeysNumber.SurrogateKeyIdentityInt,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Production.ManufacturerVehicleStock can have Sales.CustomerComment on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="0009b6a6", PARENT_OWNER="Production", PARENT_TABLE="ManufacturerVehicleStock"
    CHILD_OWNER="Sales", CHILD_TABLE="CustomerComment"
    P2C_VERB_PHRASE="can have", C2P_VERB_PHRASE="made on", 
    FK_CONSTRAINT="FK_CustomerComments_ManufacturerVehicleStock", FK_COLUMNS="ManufacturerVehicleStockId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(ManufacturerVehicleStockId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Sales.CustomerComment
      WHERE
        /*  %JoinFKPK(Sales.CustomerComment,deleted," = "," AND") */
        Sales.CustomerComment.ManufacturerVehicleStockId = deleted.ManufacturerVehicleStockId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Production.ManufacturerVehicleStock because Sales.CustomerComment exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Production.ManufacturerVehicleStock can have Sales.SalesOrderVehicleDetail on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Production", PARENT_TABLE="ManufacturerVehicleStock"
    CHILD_OWNER="Sales", CHILD_TABLE="SalesOrderVehicleDetail"
    P2C_VERB_PHRASE="can have", C2P_VERB_PHRASE="contains", 
    FK_CONSTRAINT="FK_SalesOrderVehicleDetail_ManufacturerVehicleStock", FK_COLUMNS="ManufacturerVehicleStockId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(ManufacturerVehicleStockId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Sales.SalesOrderVehicleDetail
      WHERE
        /*  %JoinFKPK(Sales.SalesOrderVehicleDetail,deleted," = "," AND") */
        Sales.SalesOrderVehicleDetail.ManufacturerVehicleStockId = deleted.ManufacturerVehicleStockId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Production.ManufacturerVehicleStock because Sales.SalesOrderVehicleDetail exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* DbSecurity.UserAuthorization authorizes Production.ManufacturerVehicleStock on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="DbSecurity", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="Production", CHILD_TABLE="ManufacturerVehicleStock"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_ManufacturerVehicleStock_UserAuthorization", FK_COLUMNS="UserAuthorizationId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(UserAuthorizationId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,DbSecurity.UserAuthorization
        WHERE
          /* %JoinFKPK(inserted,DbSecurity.UserAuthorization) */
          inserted.UserAuthorizationId = DbSecurity.UserAuthorization.UserAuthorizationId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.UserAuthorizationId IS NULL
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Production.ManufacturerVehicleStock because DbSecurity.UserAuthorization does not exist.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Production.ManufacturerVehicleMake makes a Production.ManufacturerVehicleStock on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Production", PARENT_TABLE="ManufacturerVehicleMake"
    CHILD_OWNER="Production", CHILD_TABLE="ManufacturerVehicleStock"
    P2C_VERB_PHRASE="makes a", C2P_VERB_PHRASE="made by", 
    FK_CONSTRAINT="FK_ManufacturerVehicleStock_ManufacturerVehicleMake", FK_COLUMNS="ManufacturerVehicleMakeId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(ManufacturerVehicleMakeId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Production.ManufacturerVehicleMake
        WHERE
          /* %JoinFKPK(inserted,Production.ManufacturerVehicleMake) */
          inserted.ManufacturerVehicleMakeId = Production.ManufacturerVehicleMake.ManufacturerVehicleMakeId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.ManufacturerVehicleMakeId IS NULL
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Production.ManufacturerVehicleStock because Production.ManufacturerVehicleMake does not exist.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Production.ManufacturerVehicleModel has Production.ManufacturerVehicleStock on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Production", PARENT_TABLE="ManufacturerVehicleModel"
    CHILD_OWNER="Production", CHILD_TABLE="ManufacturerVehicleStock"
    P2C_VERB_PHRASE="has", C2P_VERB_PHRASE="belongs to", 
    FK_CONSTRAINT="FK_ManufacturerVehicleStock_ManufacturerVehicleModel", FK_COLUMNS="ManufacturerVehicleModelId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(ManufacturerVehicleModelId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Production.ManufacturerVehicleModel
        WHERE
          /* %JoinFKPK(inserted,Production.ManufacturerVehicleModel) */
          inserted.ManufacturerVehicleModelId = Production.ManufacturerVehicleModel.ManufacturerVehicleModelId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.ManufacturerVehicleModelId IS NULL
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Production.ManufacturerVehicleStock because Production.ManufacturerVehicleModel does not exist.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Sales.tD_SalesOrderVehicle ON Sales.SalesOrderVehicle FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on SalesOrderVehicle */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* Sales.SalesOrderVehicle has Sales.SalesOrderVehicleDetail on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00065809", PARENT_OWNER="Sales", PARENT_TABLE="SalesOrderVehicle"
    CHILD_OWNER="Sales", CHILD_TABLE="SalesOrderVehicleDetail"
    P2C_VERB_PHRASE="has", C2P_VERB_PHRASE="belongs to", 
    FK_CONSTRAINT="FK_SalesOrderVehicleDetail_SalesOrderVehicle", FK_COLUMNS="SalesOrderVehicleId" */
    IF EXISTS (
      SELECT * FROM deleted,Sales.SalesOrderVehicleDetail
      WHERE
        /*  %JoinFKPK(Sales.SalesOrderVehicleDetail,deleted," = "," AND") */
        Sales.SalesOrderVehicleDetail.SalesOrderVehicleId = deleted.SalesOrderVehicleId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Sales.SalesOrderVehicle because Sales.SalesOrderVehicleDetail exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* DbSecurity.UserAuthorization authorizes Sales.SalesOrderVehicle on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="DbSecurity", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="Sales", CHILD_TABLE="SalesOrderVehicle"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_SalesOrderVehicle_UserAuthorization", FK_COLUMNS="UserAuthorizationId" */
    IF EXISTS (SELECT * FROM deleted,DbSecurity.UserAuthorization
      WHERE
        /* %JoinFKPK(deleted,DbSecurity.UserAuthorization," = "," AND") */
        deleted.UserAuthorizationId = DbSecurity.UserAuthorization.UserAuthorizationId AND
        NOT EXISTS (
          SELECT * FROM Sales.SalesOrderVehicle
          WHERE
            /* %JoinFKPK(Sales.SalesOrderVehicle,DbSecurity.UserAuthorization," = "," AND") */
            Sales.SalesOrderVehicle.UserAuthorizationId = DbSecurity.UserAuthorization.UserAuthorizationId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Sales.SalesOrderVehicle because DbSecurity.UserAuthorization exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* HumanResources.Staff produces Sales.SalesOrderVehicle on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="HumanResources", PARENT_TABLE="Staff"
    CHILD_OWNER="Sales", CHILD_TABLE="SalesOrderVehicle"
    P2C_VERB_PHRASE="produces", C2P_VERB_PHRASE="produced by", 
    FK_CONSTRAINT="FK_SalesOrderVehicle_Staff", FK_COLUMNS="StaffId" */
    IF EXISTS (SELECT * FROM deleted,HumanResources.Staff
      WHERE
        /* %JoinFKPK(deleted,HumanResources.Staff," = "," AND") */
        deleted.StaffId = HumanResources.Staff.StaffId AND
        NOT EXISTS (
          SELECT * FROM Sales.SalesOrderVehicle
          WHERE
            /* %JoinFKPK(Sales.SalesOrderVehicle,HumanResources.Staff," = "," AND") */
            Sales.SalesOrderVehicle.StaffId = HumanResources.Staff.StaffId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Sales.SalesOrderVehicle because HumanResources.Staff exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Sales.Customer has Sales.SalesOrderVehicle on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Sales", PARENT_TABLE="Customer"
    CHILD_OWNER="Sales", CHILD_TABLE="SalesOrderVehicle"
    P2C_VERB_PHRASE="has", C2P_VERB_PHRASE="belongs to", 
    FK_CONSTRAINT="FK_SalesOrderVehicle_Customer", FK_COLUMNS="CustomerId" */
    IF EXISTS (SELECT * FROM deleted,Sales.Customer
      WHERE
        /* %JoinFKPK(deleted,Sales.Customer," = "," AND") */
        deleted.CustomerId = Sales.Customer.CustomerId AND
        NOT EXISTS (
          SELECT * FROM Sales.SalesOrderVehicle
          WHERE
            /* %JoinFKPK(Sales.SalesOrderVehicle,Sales.Customer," = "," AND") */
            Sales.SalesOrderVehicle.CustomerId = Sales.Customer.CustomerId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Sales.SalesOrderVehicle because Sales.Customer exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Sales.tU_SalesOrderVehicle ON Sales.SalesOrderVehicle FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on SalesOrderVehicle */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insSalesOrderVehicleId sdKeysNumber.SurrogateKeyIdentityInt,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Sales.SalesOrderVehicle has Sales.SalesOrderVehicleDetail on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="0006eecd", PARENT_OWNER="Sales", PARENT_TABLE="SalesOrderVehicle"
    CHILD_OWNER="Sales", CHILD_TABLE="SalesOrderVehicleDetail"
    P2C_VERB_PHRASE="has", C2P_VERB_PHRASE="belongs to", 
    FK_CONSTRAINT="FK_SalesOrderVehicleDetail_SalesOrderVehicle", FK_COLUMNS="SalesOrderVehicleId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(SalesOrderVehicleId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Sales.SalesOrderVehicleDetail
      WHERE
        /*  %JoinFKPK(Sales.SalesOrderVehicleDetail,deleted," = "," AND") */
        Sales.SalesOrderVehicleDetail.SalesOrderVehicleId = deleted.SalesOrderVehicleId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Sales.SalesOrderVehicle because Sales.SalesOrderVehicleDetail exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* DbSecurity.UserAuthorization authorizes Sales.SalesOrderVehicle on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="DbSecurity", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="Sales", CHILD_TABLE="SalesOrderVehicle"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_SalesOrderVehicle_UserAuthorization", FK_COLUMNS="UserAuthorizationId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(UserAuthorizationId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,DbSecurity.UserAuthorization
        WHERE
          /* %JoinFKPK(inserted,DbSecurity.UserAuthorization) */
          inserted.UserAuthorizationId = DbSecurity.UserAuthorization.UserAuthorizationId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.UserAuthorizationId IS NULL
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Sales.SalesOrderVehicle because DbSecurity.UserAuthorization does not exist.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* HumanResources.Staff produces Sales.SalesOrderVehicle on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="HumanResources", PARENT_TABLE="Staff"
    CHILD_OWNER="Sales", CHILD_TABLE="SalesOrderVehicle"
    P2C_VERB_PHRASE="produces", C2P_VERB_PHRASE="produced by", 
    FK_CONSTRAINT="FK_SalesOrderVehicle_Staff", FK_COLUMNS="StaffId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(StaffId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,HumanResources.Staff
        WHERE
          /* %JoinFKPK(inserted,HumanResources.Staff) */
          inserted.StaffId = HumanResources.Staff.StaffId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.StaffId IS NULL
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Sales.SalesOrderVehicle because HumanResources.Staff does not exist.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Sales.Customer has Sales.SalesOrderVehicle on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Sales", PARENT_TABLE="Customer"
    CHILD_OWNER="Sales", CHILD_TABLE="SalesOrderVehicle"
    P2C_VERB_PHRASE="has", C2P_VERB_PHRASE="belongs to", 
    FK_CONSTRAINT="FK_SalesOrderVehicle_Customer", FK_COLUMNS="CustomerId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(CustomerId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Sales.Customer
        WHERE
          /* %JoinFKPK(inserted,Sales.Customer) */
          inserted.CustomerId = Sales.Customer.CustomerId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.CustomerId IS NULL
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Sales.SalesOrderVehicle because Sales.Customer does not exist.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Sales.tD_SalesOrderVehicleDetail ON Sales.SalesOrderVehicleDetail FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on SalesOrderVehicleDetail */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* DbSecurity.UserAuthorization authorizes Sales.SalesOrderVehicleDetail on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="0005f0a1", PARENT_OWNER="DbSecurity", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="Sales", CHILD_TABLE="SalesOrderVehicleDetail"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_SalesOrderVehicleDetail_UserAuthorization", FK_COLUMNS="UserAuthorizationId" */
    IF EXISTS (SELECT * FROM deleted,DbSecurity.UserAuthorization
      WHERE
        /* %JoinFKPK(deleted,DbSecurity.UserAuthorization," = "," AND") */
        deleted.UserAuthorizationId = DbSecurity.UserAuthorization.UserAuthorizationId AND
        NOT EXISTS (
          SELECT * FROM Sales.SalesOrderVehicleDetail
          WHERE
            /* %JoinFKPK(Sales.SalesOrderVehicleDetail,DbSecurity.UserAuthorization," = "," AND") */
            Sales.SalesOrderVehicleDetail.UserAuthorizationId = DbSecurity.UserAuthorization.UserAuthorizationId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Sales.SalesOrderVehicleDetail because DbSecurity.UserAuthorization exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Sales.SalesOrderVehicle has Sales.SalesOrderVehicleDetail on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Sales", PARENT_TABLE="SalesOrderVehicle"
    CHILD_OWNER="Sales", CHILD_TABLE="SalesOrderVehicleDetail"
    P2C_VERB_PHRASE="has", C2P_VERB_PHRASE="belongs to", 
    FK_CONSTRAINT="FK_SalesOrderVehicleDetail_SalesOrderVehicle", FK_COLUMNS="SalesOrderVehicleId" */
    IF EXISTS (SELECT * FROM deleted,Sales.SalesOrderVehicle
      WHERE
        /* %JoinFKPK(deleted,Sales.SalesOrderVehicle," = "," AND") */
        deleted.SalesOrderVehicleId = Sales.SalesOrderVehicle.SalesOrderVehicleId AND
        NOT EXISTS (
          SELECT * FROM Sales.SalesOrderVehicleDetail
          WHERE
            /* %JoinFKPK(Sales.SalesOrderVehicleDetail,Sales.SalesOrderVehicle," = "," AND") */
            Sales.SalesOrderVehicleDetail.SalesOrderVehicleId = Sales.SalesOrderVehicle.SalesOrderVehicleId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Sales.SalesOrderVehicleDetail because Sales.SalesOrderVehicle exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Production.ManufacturerVehicleStock can have Sales.SalesOrderVehicleDetail on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Production", PARENT_TABLE="ManufacturerVehicleStock"
    CHILD_OWNER="Sales", CHILD_TABLE="SalesOrderVehicleDetail"
    P2C_VERB_PHRASE="can have", C2P_VERB_PHRASE="contains", 
    FK_CONSTRAINT="FK_SalesOrderVehicleDetail_ManufacturerVehicleStock", FK_COLUMNS="ManufacturerVehicleStockId" */
    IF EXISTS (SELECT * FROM deleted,Production.ManufacturerVehicleStock
      WHERE
        /* %JoinFKPK(deleted,Production.ManufacturerVehicleStock," = "," AND") */
        deleted.ManufacturerVehicleStockId = Production.ManufacturerVehicleStock.ManufacturerVehicleStockId AND
        NOT EXISTS (
          SELECT * FROM Sales.SalesOrderVehicleDetail
          WHERE
            /* %JoinFKPK(Sales.SalesOrderVehicleDetail,Production.ManufacturerVehicleStock," = "," AND") */
            Sales.SalesOrderVehicleDetail.ManufacturerVehicleStockId = Production.ManufacturerVehicleStock.ManufacturerVehicleStockId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Sales.SalesOrderVehicleDetail because Production.ManufacturerVehicleStock exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Sales.tU_SalesOrderVehicleDetail ON Sales.SalesOrderVehicleDetail FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on SalesOrderVehicleDetail */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insSalesOrderVehicleDetailId sdKeysNumber.SurrogateKeyIdentityInt, 
           @insSalesOrderVehicleId SurrogateKeyInt,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* DbSecurity.UserAuthorization authorizes Sales.SalesOrderVehicleDetail on child update no action */
  /* ERWIN_RELATION:CHECKSUM="0005fbf0", PARENT_OWNER="DbSecurity", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="Sales", CHILD_TABLE="SalesOrderVehicleDetail"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_SalesOrderVehicleDetail_UserAuthorization", FK_COLUMNS="UserAuthorizationId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(UserAuthorizationId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,DbSecurity.UserAuthorization
        WHERE
          /* %JoinFKPK(inserted,DbSecurity.UserAuthorization) */
          inserted.UserAuthorizationId = DbSecurity.UserAuthorization.UserAuthorizationId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.UserAuthorizationId IS NULL
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Sales.SalesOrderVehicleDetail because DbSecurity.UserAuthorization does not exist.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Sales.SalesOrderVehicle has Sales.SalesOrderVehicleDetail on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Sales", PARENT_TABLE="SalesOrderVehicle"
    CHILD_OWNER="Sales", CHILD_TABLE="SalesOrderVehicleDetail"
    P2C_VERB_PHRASE="has", C2P_VERB_PHRASE="belongs to", 
    FK_CONSTRAINT="FK_SalesOrderVehicleDetail_SalesOrderVehicle", FK_COLUMNS="SalesOrderVehicleId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(SalesOrderVehicleId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Sales.SalesOrderVehicle
        WHERE
          /* %JoinFKPK(inserted,Sales.SalesOrderVehicle) */
          inserted.SalesOrderVehicleId = Sales.SalesOrderVehicle.SalesOrderVehicleId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Sales.SalesOrderVehicleDetail because Sales.SalesOrderVehicle does not exist.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Production.ManufacturerVehicleStock can have Sales.SalesOrderVehicleDetail on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Production", PARENT_TABLE="ManufacturerVehicleStock"
    CHILD_OWNER="Sales", CHILD_TABLE="SalesOrderVehicleDetail"
    P2C_VERB_PHRASE="can have", C2P_VERB_PHRASE="contains", 
    FK_CONSTRAINT="FK_SalesOrderVehicleDetail_ManufacturerVehicleStock", FK_COLUMNS="ManufacturerVehicleStockId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(ManufacturerVehicleStockId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Production.ManufacturerVehicleStock
        WHERE
          /* %JoinFKPK(inserted,Production.ManufacturerVehicleStock) */
          inserted.ManufacturerVehicleStockId = Production.ManufacturerVehicleStock.ManufacturerVehicleStockId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.ManufacturerVehicleStockId IS NULL
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Sales.SalesOrderVehicleDetail because Production.ManufacturerVehicleStock does not exist.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER HumanResources.tD_Staff ON HumanResources.Staff FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on Staff */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* HumanResources.Staff produces Sales.SalesOrderVehicle on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="0005b3a2", PARENT_OWNER="HumanResources", PARENT_TABLE="Staff"
    CHILD_OWNER="Sales", CHILD_TABLE="SalesOrderVehicle"
    P2C_VERB_PHRASE="produces", C2P_VERB_PHRASE="produced by", 
    FK_CONSTRAINT="FK_SalesOrderVehicle_Staff", FK_COLUMNS="StaffId" */
    IF EXISTS (
      SELECT * FROM deleted,Sales.SalesOrderVehicle
      WHERE
        /*  %JoinFKPK(Sales.SalesOrderVehicle,deleted," = "," AND") */
        Sales.SalesOrderVehicle.StaffId = deleted.StaffId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete HumanResources.Staff because Sales.SalesOrderVehicle exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* HumanResources.Staff manages HumanResources.Staff on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="HumanResources", PARENT_TABLE="Staff"
    CHILD_OWNER="HumanResources", CHILD_TABLE="Staff"
    P2C_VERB_PHRASE="manages", C2P_VERB_PHRASE="managed by", 
    FK_CONSTRAINT="FK_Staff_Staff", FK_COLUMNS="StaffId" */
    IF EXISTS (
      SELECT * FROM deleted,HumanResources.Staff
      WHERE
        /*  %JoinFKPK(HumanResources.Staff,deleted," = "," AND") */
        HumanResources.Staff.StaffId = deleted.StaffId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete HumanResources.Staff because HumanResources.Staff exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* DbSecurity.UserAuthorization authorizes HumanResources.Staff on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="DbSecurity", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="HumanResources", CHILD_TABLE="Staff"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_Staff_UserAuthorization", FK_COLUMNS="UserAuthorizationId" */
    IF EXISTS (SELECT * FROM deleted,DbSecurity.UserAuthorization
      WHERE
        /* %JoinFKPK(deleted,DbSecurity.UserAuthorization," = "," AND") */
        deleted.UserAuthorizationId = DbSecurity.UserAuthorization.UserAuthorizationId AND
        NOT EXISTS (
          SELECT * FROM HumanResources.Staff
          WHERE
            /* %JoinFKPK(HumanResources.Staff,DbSecurity.UserAuthorization," = "," AND") */
            HumanResources.Staff.UserAuthorizationId = DbSecurity.UserAuthorization.UserAuthorizationId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last HumanResources.Staff because DbSecurity.UserAuthorization exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* HumanResources.Staff manages HumanResources.Staff on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="HumanResources", PARENT_TABLE="Staff"
    CHILD_OWNER="HumanResources", CHILD_TABLE="Staff"
    P2C_VERB_PHRASE="manages", C2P_VERB_PHRASE="managed by", 
    FK_CONSTRAINT="FK_Staff_Staff", FK_COLUMNS="StaffId" */
    IF EXISTS (SELECT * FROM deleted,HumanResources.Staff
      WHERE
        /* %JoinFKPK(deleted,HumanResources.Staff," = "," AND") */
        deleted.StaffId = HumanResources.Staff.StaffId AND
        NOT EXISTS (
          SELECT * FROM HumanResources.Staff
          WHERE
            /* %JoinFKPK(HumanResources.Staff,HumanResources.Staff," = "," AND") */
            HumanResources.Staff.StaffId = HumanResources.Staff.StaffId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last HumanResources.Staff because HumanResources.Staff exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER HumanResources.tU_Staff ON HumanResources.Staff FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on Staff */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insStaffId sdKeysNumber.SurrogateKeyIdentityInt,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* HumanResources.Staff produces Sales.SalesOrderVehicle on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00064625", PARENT_OWNER="HumanResources", PARENT_TABLE="Staff"
    CHILD_OWNER="Sales", CHILD_TABLE="SalesOrderVehicle"
    P2C_VERB_PHRASE="produces", C2P_VERB_PHRASE="produced by", 
    FK_CONSTRAINT="FK_SalesOrderVehicle_Staff", FK_COLUMNS="StaffId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(StaffId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Sales.SalesOrderVehicle
      WHERE
        /*  %JoinFKPK(Sales.SalesOrderVehicle,deleted," = "," AND") */
        Sales.SalesOrderVehicle.StaffId = deleted.StaffId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update HumanResources.Staff because Sales.SalesOrderVehicle exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* HumanResources.Staff manages HumanResources.Staff on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="HumanResources", PARENT_TABLE="Staff"
    CHILD_OWNER="HumanResources", CHILD_TABLE="Staff"
    P2C_VERB_PHRASE="manages", C2P_VERB_PHRASE="managed by", 
    FK_CONSTRAINT="FK_Staff_Staff", FK_COLUMNS="StaffId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(StaffId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,HumanResources.Staff
      WHERE
        /*  %JoinFKPK(HumanResources.Staff,deleted," = "," AND") */
        HumanResources.Staff.StaffId = deleted.StaffId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update HumanResources.Staff because HumanResources.Staff exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* DbSecurity.UserAuthorization authorizes HumanResources.Staff on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="DbSecurity", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="HumanResources", CHILD_TABLE="Staff"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_Staff_UserAuthorization", FK_COLUMNS="UserAuthorizationId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(UserAuthorizationId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,DbSecurity.UserAuthorization
        WHERE
          /* %JoinFKPK(inserted,DbSecurity.UserAuthorization) */
          inserted.UserAuthorizationId = DbSecurity.UserAuthorization.UserAuthorizationId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.UserAuthorizationId IS NULL
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update HumanResources.Staff because DbSecurity.UserAuthorization does not exist.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* HumanResources.Staff manages HumanResources.Staff on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="HumanResources", PARENT_TABLE="Staff"
    CHILD_OWNER="HumanResources", CHILD_TABLE="Staff"
    P2C_VERB_PHRASE="manages", C2P_VERB_PHRASE="managed by", 
    FK_CONSTRAINT="FK_Staff_Staff", FK_COLUMNS="StaffId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(StaffId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,HumanResources.Staff
        WHERE
          /* %JoinFKPK(inserted,HumanResources.Staff) */
          inserted.StaffId = HumanResources.Staff.StaffId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.StaffId IS NULL
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update HumanResources.Staff because HumanResources.Staff does not exist.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Sales.tD_CustomerMarketingInformation ON Sales.CustomerMarketingInformation FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on CustomerMarketingInformation */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* DbSecurity.UserAuthorization authorizes Sales.CustomerMarketingInformation on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="0003aa59", PARENT_OWNER="DbSecurity", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="Sales", CHILD_TABLE="CustomerMarketingInformation"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_CustomerMarketingInformation_UserAuthorization", FK_COLUMNS="UserAuthorizationId" */
    IF EXISTS (SELECT * FROM deleted,DbSecurity.UserAuthorization
      WHERE
        /* %JoinFKPK(deleted,DbSecurity.UserAuthorization," = "," AND") */
        deleted.UserAuthorizationId = DbSecurity.UserAuthorization.UserAuthorizationId AND
        NOT EXISTS (
          SELECT * FROM Sales.CustomerMarketingInformation
          WHERE
            /* %JoinFKPK(Sales.CustomerMarketingInformation,DbSecurity.UserAuthorization," = "," AND") */
            Sales.CustomerMarketingInformation.UserAuthorizationId = DbSecurity.UserAuthorization.UserAuthorizationId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Sales.CustomerMarketingInformation because DbSecurity.UserAuthorization exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Sales.Customer has Sales.CustomerMarketingInformation on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Sales", PARENT_TABLE="Customer"
    CHILD_OWNER="Sales", CHILD_TABLE="CustomerMarketingInformation"
    P2C_VERB_PHRASE="has", C2P_VERB_PHRASE="belongs to", 
    FK_CONSTRAINT="FK_CustomerMarketingInformation_Customer", FK_COLUMNS="CustomerId" */
    IF EXISTS (SELECT * FROM deleted,Sales.Customer
      WHERE
        /* %JoinFKPK(deleted,Sales.Customer," = "," AND") */
        deleted.CustomerId = Sales.Customer.CustomerId AND
        NOT EXISTS (
          SELECT * FROM Sales.CustomerMarketingInformation
          WHERE
            /* %JoinFKPK(Sales.CustomerMarketingInformation,Sales.Customer," = "," AND") */
            Sales.CustomerMarketingInformation.CustomerId = Sales.Customer.CustomerId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Sales.CustomerMarketingInformation because Sales.Customer exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Sales.tU_CustomerMarketingInformation ON Sales.CustomerMarketingInformation FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on CustomerMarketingInformation */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insCustomerMarketingInfoId sdKeysNumber.SurrogateKeyIdentityInt, 
           @insCustomerId SurrogateKeyInt,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* DbSecurity.UserAuthorization authorizes Sales.CustomerMarketingInformation on child update no action */
  /* ERWIN_RELATION:CHECKSUM="0003a4d7", PARENT_OWNER="DbSecurity", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="Sales", CHILD_TABLE="CustomerMarketingInformation"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_CustomerMarketingInformation_UserAuthorization", FK_COLUMNS="UserAuthorizationId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(UserAuthorizationId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,DbSecurity.UserAuthorization
        WHERE
          /* %JoinFKPK(inserted,DbSecurity.UserAuthorization) */
          inserted.UserAuthorizationId = DbSecurity.UserAuthorization.UserAuthorizationId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.UserAuthorizationId IS NULL
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Sales.CustomerMarketingInformation because DbSecurity.UserAuthorization does not exist.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Sales.Customer has Sales.CustomerMarketingInformation on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Sales", PARENT_TABLE="Customer"
    CHILD_OWNER="Sales", CHILD_TABLE="CustomerMarketingInformation"
    P2C_VERB_PHRASE="has", C2P_VERB_PHRASE="belongs to", 
    FK_CONSTRAINT="FK_CustomerMarketingInformation_Customer", FK_COLUMNS="CustomerId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(CustomerId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Sales.Customer
        WHERE
          /* %JoinFKPK(inserted,Sales.Customer) */
          inserted.CustomerId = Sales.Customer.CustomerId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Sales.CustomerMarketingInformation because Sales.Customer does not exist.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Sales.tD_Customer ON Sales.Customer FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on Customer */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* Sales.Customer has Sales.CustomerMarketingInformation on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="0005b938", PARENT_OWNER="Sales", PARENT_TABLE="Customer"
    CHILD_OWNER="Sales", CHILD_TABLE="CustomerMarketingInformation"
    P2C_VERB_PHRASE="has", C2P_VERB_PHRASE="belongs to", 
    FK_CONSTRAINT="FK_CustomerMarketingInformation_Customer", FK_COLUMNS="CustomerId" */
    IF EXISTS (
      SELECT * FROM deleted,Sales.CustomerMarketingInformation
      WHERE
        /*  %JoinFKPK(Sales.CustomerMarketingInformation,deleted," = "," AND") */
        Sales.CustomerMarketingInformation.CustomerId = deleted.CustomerId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Sales.Customer because Sales.CustomerMarketingInformation exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Sales.Customer has Sales.SalesOrderVehicle on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Sales", PARENT_TABLE="Customer"
    CHILD_OWNER="Sales", CHILD_TABLE="SalesOrderVehicle"
    P2C_VERB_PHRASE="has", C2P_VERB_PHRASE="belongs to", 
    FK_CONSTRAINT="FK_SalesOrderVehicle_Customer", FK_COLUMNS="CustomerId" */
    IF EXISTS (
      SELECT * FROM deleted,Sales.SalesOrderVehicle
      WHERE
        /*  %JoinFKPK(Sales.SalesOrderVehicle,deleted," = "," AND") */
        Sales.SalesOrderVehicle.CustomerId = deleted.CustomerId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Sales.Customer because Sales.SalesOrderVehicle exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* DbSecurity.UserAuthorization authorizes Sales.Customer on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="DbSecurity", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="Sales", CHILD_TABLE="Customer"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_Customer_UserAuthorization", FK_COLUMNS="UserAuthorizationId" */
    IF EXISTS (SELECT * FROM deleted,DbSecurity.UserAuthorization
      WHERE
        /* %JoinFKPK(deleted,DbSecurity.UserAuthorization," = "," AND") */
        deleted.UserAuthorizationId = DbSecurity.UserAuthorization.UserAuthorizationId AND
        NOT EXISTS (
          SELECT * FROM Sales.Customer
          WHERE
            /* %JoinFKPK(Sales.Customer,DbSecurity.UserAuthorization," = "," AND") */
            Sales.Customer.UserAuthorizationId = DbSecurity.UserAuthorization.UserAuthorizationId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Sales.Customer because DbSecurity.UserAuthorization exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Sales.Country resided in by Sales.Customer on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Sales", PARENT_TABLE="Country"
    CHILD_OWNER="Sales", CHILD_TABLE="Customer"
    P2C_VERB_PHRASE="resided in by", C2P_VERB_PHRASE="resides in", 
    FK_CONSTRAINT="FK_Customer_Country", FK_COLUMNS="CountryId" */
    IF EXISTS (SELECT * FROM deleted,Sales.Country
      WHERE
        /* %JoinFKPK(deleted,Sales.Country," = "," AND") */
        deleted.CountryId = Sales.Country.CountryId AND
        NOT EXISTS (
          SELECT * FROM Sales.Customer
          WHERE
            /* %JoinFKPK(Sales.Customer,Sales.Country," = "," AND") */
            Sales.Customer.CountryId = Sales.Country.CountryId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Sales.Customer because Sales.Country exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Sales.tU_Customer ON Sales.Customer FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on Customer */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insCustomerId sdKeysNumber.SurrogateKeyIdentityInt,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* Sales.Customer has Sales.CustomerMarketingInformation on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00064755", PARENT_OWNER="Sales", PARENT_TABLE="Customer"
    CHILD_OWNER="Sales", CHILD_TABLE="CustomerMarketingInformation"
    P2C_VERB_PHRASE="has", C2P_VERB_PHRASE="belongs to", 
    FK_CONSTRAINT="FK_CustomerMarketingInformation_Customer", FK_COLUMNS="CustomerId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(CustomerId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Sales.CustomerMarketingInformation
      WHERE
        /*  %JoinFKPK(Sales.CustomerMarketingInformation,deleted," = "," AND") */
        Sales.CustomerMarketingInformation.CustomerId = deleted.CustomerId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Sales.Customer because Sales.CustomerMarketingInformation exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Sales.Customer has Sales.SalesOrderVehicle on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Sales", PARENT_TABLE="Customer"
    CHILD_OWNER="Sales", CHILD_TABLE="SalesOrderVehicle"
    P2C_VERB_PHRASE="has", C2P_VERB_PHRASE="belongs to", 
    FK_CONSTRAINT="FK_SalesOrderVehicle_Customer", FK_COLUMNS="CustomerId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(CustomerId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Sales.SalesOrderVehicle
      WHERE
        /*  %JoinFKPK(Sales.SalesOrderVehicle,deleted," = "," AND") */
        Sales.SalesOrderVehicle.CustomerId = deleted.CustomerId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Sales.Customer because Sales.SalesOrderVehicle exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* DbSecurity.UserAuthorization authorizes Sales.Customer on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="DbSecurity", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="Sales", CHILD_TABLE="Customer"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_Customer_UserAuthorization", FK_COLUMNS="UserAuthorizationId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(UserAuthorizationId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,DbSecurity.UserAuthorization
        WHERE
          /* %JoinFKPK(inserted,DbSecurity.UserAuthorization) */
          inserted.UserAuthorizationId = DbSecurity.UserAuthorization.UserAuthorizationId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.UserAuthorizationId IS NULL
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Sales.Customer because DbSecurity.UserAuthorization does not exist.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Sales.Country resided in by Sales.Customer on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Sales", PARENT_TABLE="Country"
    CHILD_OWNER="Sales", CHILD_TABLE="Customer"
    P2C_VERB_PHRASE="resided in by", C2P_VERB_PHRASE="resides in", 
    FK_CONSTRAINT="FK_Customer_Country", FK_COLUMNS="CountryId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(CountryId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Sales.Country
        WHERE
          /* %JoinFKPK(inserted,Sales.Country) */
          inserted.CountryId = Sales.Country.CountryId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.CountryId IS NULL
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Sales.Customer because Sales.Country does not exist.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Sales.tD_CustomerComments ON Sales.CustomerComment FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on CustomerComment */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* DbSecurity.UserAuthorization authorizes Sales.CustomerComment on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="0003e0ea", PARENT_OWNER="DbSecurity", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="Sales", CHILD_TABLE="CustomerComment"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_CustomerComments_UserAuthorization", FK_COLUMNS="UserAuthorizationId" */
    IF EXISTS (SELECT * FROM deleted,DbSecurity.UserAuthorization
      WHERE
        /* %JoinFKPK(deleted,DbSecurity.UserAuthorization," = "," AND") */
        deleted.UserAuthorizationId = DbSecurity.UserAuthorization.UserAuthorizationId AND
        NOT EXISTS (
          SELECT * FROM Sales.CustomerComment
          WHERE
            /* %JoinFKPK(Sales.CustomerComment,DbSecurity.UserAuthorization," = "," AND") */
            Sales.CustomerComment.UserAuthorizationId = DbSecurity.UserAuthorization.UserAuthorizationId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Sales.CustomerComment because DbSecurity.UserAuthorization exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* Production.ManufacturerVehicleStock can have Sales.CustomerComment on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Production", PARENT_TABLE="ManufacturerVehicleStock"
    CHILD_OWNER="Sales", CHILD_TABLE="CustomerComment"
    P2C_VERB_PHRASE="can have", C2P_VERB_PHRASE="made on", 
    FK_CONSTRAINT="FK_CustomerComments_ManufacturerVehicleStock", FK_COLUMNS="ManufacturerVehicleStockId" */
    IF EXISTS (SELECT * FROM deleted,Production.ManufacturerVehicleStock
      WHERE
        /* %JoinFKPK(deleted,Production.ManufacturerVehicleStock," = "," AND") */
        deleted.ManufacturerVehicleStockId = Production.ManufacturerVehicleStock.ManufacturerVehicleStockId AND
        NOT EXISTS (
          SELECT * FROM Sales.CustomerComment
          WHERE
            /* %JoinFKPK(Sales.CustomerComment,Production.ManufacturerVehicleStock," = "," AND") */
            Sales.CustomerComment.ManufacturerVehicleStockId = Production.ManufacturerVehicleStock.ManufacturerVehicleStockId
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Sales.CustomerComment because Production.ManufacturerVehicleStock exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER Sales.tU_CustomerComments ON Sales.CustomerComment FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on CustomerComment */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insCustomerCommentId sdKeysNumber.SurrogateKeyIdentityInt, 
           @insManufacturerVehicleStockId SurrogateKeyInt,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* DbSecurity.UserAuthorization authorizes Sales.CustomerComment on child update no action */
  /* ERWIN_RELATION:CHECKSUM="0003e008", PARENT_OWNER="DbSecurity", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="Sales", CHILD_TABLE="CustomerComment"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_CustomerComments_UserAuthorization", FK_COLUMNS="UserAuthorizationId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(UserAuthorizationId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,DbSecurity.UserAuthorization
        WHERE
          /* %JoinFKPK(inserted,DbSecurity.UserAuthorization) */
          inserted.UserAuthorizationId = DbSecurity.UserAuthorization.UserAuthorizationId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.UserAuthorizationId IS NULL
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Sales.CustomerComment because DbSecurity.UserAuthorization does not exist.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* Production.ManufacturerVehicleStock can have Sales.CustomerComment on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="Production", PARENT_TABLE="ManufacturerVehicleStock"
    CHILD_OWNER="Sales", CHILD_TABLE="CustomerComment"
    P2C_VERB_PHRASE="can have", C2P_VERB_PHRASE="made on", 
    FK_CONSTRAINT="FK_CustomerComments_ManufacturerVehicleStock", FK_COLUMNS="ManufacturerVehicleStockId" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(ManufacturerVehicleStockId)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Production.ManufacturerVehicleStock
        WHERE
          /* %JoinFKPK(inserted,Production.ManufacturerVehicleStock) */
          inserted.ManufacturerVehicleStockId = Production.ManufacturerVehicleStock.ManufacturerVehicleStockId
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @numrows
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Sales.CustomerComment because Production.ManufacturerVehicleStock does not exist.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER DbSecurity.tD_UserAuthorization ON DbSecurity.UserAuthorization FOR DELETE AS
/* erwin Builtin Trigger */
/* DELETE trigger on UserAuthorization */
BEGIN
  DECLARE  @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)
    /* erwin Builtin Trigger */
    /* DbSecurity.UserAuthorization authorizes Production.ManufacturerVehicleMake on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="000e4fa5", PARENT_OWNER="DbSecurity", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="Production", CHILD_TABLE="ManufacturerVehicleMake"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_ManufacturerVehicleMake_UserAuthorization", FK_COLUMNS="UserAuthorizationId" */
    IF EXISTS (
      SELECT * FROM deleted,Production.ManufacturerVehicleMake
      WHERE
        /*  %JoinFKPK(Production.ManufacturerVehicleMake,deleted," = "," AND") */
        Production.ManufacturerVehicleMake.UserAuthorizationId = deleted.UserAuthorizationId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete DbSecurity.UserAuthorization because Production.ManufacturerVehicleMake exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* DbSecurity.UserAuthorization authorizes Sales.Customer on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="DbSecurity", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="Sales", CHILD_TABLE="Customer"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_Customer_UserAuthorization", FK_COLUMNS="UserAuthorizationId" */
    IF EXISTS (
      SELECT * FROM deleted,Sales.Customer
      WHERE
        /*  %JoinFKPK(Sales.Customer,deleted," = "," AND") */
        Sales.Customer.UserAuthorizationId = deleted.UserAuthorizationId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete DbSecurity.UserAuthorization because Sales.Customer exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* DbSecurity.UserAuthorization authorizes Sales.Country on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="DbSecurity", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="Sales", CHILD_TABLE="Country"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_Country_UserAuthorization", FK_COLUMNS="UserAuthorizationId" */
    IF EXISTS (
      SELECT * FROM deleted,Sales.Country
      WHERE
        /*  %JoinFKPK(Sales.Country,deleted," = "," AND") */
        Sales.Country.UserAuthorizationId = deleted.UserAuthorizationId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete DbSecurity.UserAuthorization because Sales.Country exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* DbSecurity.UserAuthorization authorizes Sales.SalesOrderVehicle on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="DbSecurity", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="Sales", CHILD_TABLE="SalesOrderVehicle"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_SalesOrderVehicle_UserAuthorization", FK_COLUMNS="UserAuthorizationId" */
    IF EXISTS (
      SELECT * FROM deleted,Sales.SalesOrderVehicle
      WHERE
        /*  %JoinFKPK(Sales.SalesOrderVehicle,deleted," = "," AND") */
        Sales.SalesOrderVehicle.UserAuthorizationId = deleted.UserAuthorizationId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete DbSecurity.UserAuthorization because Sales.SalesOrderVehicle exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* DbSecurity.UserAuthorization authorizes Sales.CustomerMarketingInformation on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="DbSecurity", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="Sales", CHILD_TABLE="CustomerMarketingInformation"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_CustomerMarketingInformation_UserAuthorization", FK_COLUMNS="UserAuthorizationId" */
    IF EXISTS (
      SELECT * FROM deleted,Sales.CustomerMarketingInformation
      WHERE
        /*  %JoinFKPK(Sales.CustomerMarketingInformation,deleted," = "," AND") */
        Sales.CustomerMarketingInformation.UserAuthorizationId = deleted.UserAuthorizationId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete DbSecurity.UserAuthorization because Sales.CustomerMarketingInformation exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* DbSecurity.UserAuthorization authorizes HumanResources.Staff on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="DbSecurity", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="HumanResources", CHILD_TABLE="Staff"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_Staff_UserAuthorization", FK_COLUMNS="UserAuthorizationId" */
    IF EXISTS (
      SELECT * FROM deleted,HumanResources.Staff
      WHERE
        /*  %JoinFKPK(HumanResources.Staff,deleted," = "," AND") */
        HumanResources.Staff.UserAuthorizationId = deleted.UserAuthorizationId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete DbSecurity.UserAuthorization because HumanResources.Staff exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* DbSecurity.UserAuthorization authorizes Sales.SalesOrderVehicleDetail on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="DbSecurity", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="Sales", CHILD_TABLE="SalesOrderVehicleDetail"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_SalesOrderVehicleDetail_UserAuthorization", FK_COLUMNS="UserAuthorizationId" */
    IF EXISTS (
      SELECT * FROM deleted,Sales.SalesOrderVehicleDetail
      WHERE
        /*  %JoinFKPK(Sales.SalesOrderVehicleDetail,deleted," = "," AND") */
        Sales.SalesOrderVehicleDetail.UserAuthorizationId = deleted.UserAuthorizationId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete DbSecurity.UserAuthorization because Sales.SalesOrderVehicleDetail exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* DbSecurity.UserAuthorization authorizes Production.ManufacturerVehicleStock on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="DbSecurity", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="Production", CHILD_TABLE="ManufacturerVehicleStock"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_ManufacturerVehicleStock_UserAuthorization", FK_COLUMNS="UserAuthorizationId" */
    IF EXISTS (
      SELECT * FROM deleted,Production.ManufacturerVehicleStock
      WHERE
        /*  %JoinFKPK(Production.ManufacturerVehicleStock,deleted," = "," AND") */
        Production.ManufacturerVehicleStock.UserAuthorizationId = deleted.UserAuthorizationId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete DbSecurity.UserAuthorization because Production.ManufacturerVehicleStock exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* DbSecurity.UserAuthorization authorizes Sales.CustomerComment on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="DbSecurity", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="Sales", CHILD_TABLE="CustomerComment"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_CustomerComments_UserAuthorization", FK_COLUMNS="UserAuthorizationId" */
    IF EXISTS (
      SELECT * FROM deleted,Sales.CustomerComment
      WHERE
        /*  %JoinFKPK(Sales.CustomerComment,deleted," = "," AND") */
        Sales.CustomerComment.UserAuthorizationId = deleted.UserAuthorizationId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete DbSecurity.UserAuthorization because Sales.CustomerComment exists.'
      GOTO error
    END

    /* erwin Builtin Trigger */
    /* DbSecurity.UserAuthorization authorizes Production.ManufacturerVehicleModel on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="DbSecurity", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="Production", CHILD_TABLE="ManufacturerVehicleModel"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_ManufacturerVehicleModel_UserAuthorization", FK_COLUMNS="UserAuthorizationId" */
    IF EXISTS (
      SELECT * FROM deleted,Production.ManufacturerVehicleModel
      WHERE
        /*  %JoinFKPK(Production.ManufacturerVehicleModel,deleted," = "," AND") */
        Production.ManufacturerVehicleModel.UserAuthorizationId = deleted.UserAuthorizationId
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete DbSecurity.UserAuthorization because Production.ManufacturerVehicleModel exists.'
      GOTO error
    END


    /* erwin Builtin Trigger */
    RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go




CREATE TRIGGER DbSecurity.tU_UserAuthorization ON DbSecurity.UserAuthorization FOR UPDATE AS
/* erwin Builtin Trigger */
/* UPDATE trigger on UserAuthorization */
BEGIN
  DECLARE  @numrows int,
           @nullcnt int,
           @validcnt int,
           @insUserAuthorizationId SurrogateKeyInt,
           @errno   int,
           @severity int,
           @state    int,
           @errmsg  varchar(255)

  SELECT @numrows = @@rowcount
  /* erwin Builtin Trigger */
  /* DbSecurity.UserAuthorization authorizes Production.ManufacturerVehicleMake on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="000f538e", PARENT_OWNER="DbSecurity", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="Production", CHILD_TABLE="ManufacturerVehicleMake"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_ManufacturerVehicleMake_UserAuthorization", FK_COLUMNS="UserAuthorizationId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(UserAuthorizationId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Production.ManufacturerVehicleMake
      WHERE
        /*  %JoinFKPK(Production.ManufacturerVehicleMake,deleted," = "," AND") */
        Production.ManufacturerVehicleMake.UserAuthorizationId = deleted.UserAuthorizationId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update DbSecurity.UserAuthorization because Production.ManufacturerVehicleMake exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* DbSecurity.UserAuthorization authorizes Sales.Customer on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="DbSecurity", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="Sales", CHILD_TABLE="Customer"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_Customer_UserAuthorization", FK_COLUMNS="UserAuthorizationId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(UserAuthorizationId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Sales.Customer
      WHERE
        /*  %JoinFKPK(Sales.Customer,deleted," = "," AND") */
        Sales.Customer.UserAuthorizationId = deleted.UserAuthorizationId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update DbSecurity.UserAuthorization because Sales.Customer exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* DbSecurity.UserAuthorization authorizes Sales.Country on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="DbSecurity", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="Sales", CHILD_TABLE="Country"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_Country_UserAuthorization", FK_COLUMNS="UserAuthorizationId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(UserAuthorizationId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Sales.Country
      WHERE
        /*  %JoinFKPK(Sales.Country,deleted," = "," AND") */
        Sales.Country.UserAuthorizationId = deleted.UserAuthorizationId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update DbSecurity.UserAuthorization because Sales.Country exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* DbSecurity.UserAuthorization authorizes Sales.SalesOrderVehicle on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="DbSecurity", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="Sales", CHILD_TABLE="SalesOrderVehicle"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_SalesOrderVehicle_UserAuthorization", FK_COLUMNS="UserAuthorizationId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(UserAuthorizationId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Sales.SalesOrderVehicle
      WHERE
        /*  %JoinFKPK(Sales.SalesOrderVehicle,deleted," = "," AND") */
        Sales.SalesOrderVehicle.UserAuthorizationId = deleted.UserAuthorizationId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update DbSecurity.UserAuthorization because Sales.SalesOrderVehicle exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* DbSecurity.UserAuthorization authorizes Sales.CustomerMarketingInformation on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="DbSecurity", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="Sales", CHILD_TABLE="CustomerMarketingInformation"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_CustomerMarketingInformation_UserAuthorization", FK_COLUMNS="UserAuthorizationId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(UserAuthorizationId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Sales.CustomerMarketingInformation
      WHERE
        /*  %JoinFKPK(Sales.CustomerMarketingInformation,deleted," = "," AND") */
        Sales.CustomerMarketingInformation.UserAuthorizationId = deleted.UserAuthorizationId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update DbSecurity.UserAuthorization because Sales.CustomerMarketingInformation exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* DbSecurity.UserAuthorization authorizes HumanResources.Staff on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="DbSecurity", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="HumanResources", CHILD_TABLE="Staff"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_Staff_UserAuthorization", FK_COLUMNS="UserAuthorizationId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(UserAuthorizationId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,HumanResources.Staff
      WHERE
        /*  %JoinFKPK(HumanResources.Staff,deleted," = "," AND") */
        HumanResources.Staff.UserAuthorizationId = deleted.UserAuthorizationId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update DbSecurity.UserAuthorization because HumanResources.Staff exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* DbSecurity.UserAuthorization authorizes Sales.SalesOrderVehicleDetail on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="DbSecurity", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="Sales", CHILD_TABLE="SalesOrderVehicleDetail"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_SalesOrderVehicleDetail_UserAuthorization", FK_COLUMNS="UserAuthorizationId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(UserAuthorizationId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Sales.SalesOrderVehicleDetail
      WHERE
        /*  %JoinFKPK(Sales.SalesOrderVehicleDetail,deleted," = "," AND") */
        Sales.SalesOrderVehicleDetail.UserAuthorizationId = deleted.UserAuthorizationId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update DbSecurity.UserAuthorization because Sales.SalesOrderVehicleDetail exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* DbSecurity.UserAuthorization authorizes Production.ManufacturerVehicleStock on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="DbSecurity", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="Production", CHILD_TABLE="ManufacturerVehicleStock"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_ManufacturerVehicleStock_UserAuthorization", FK_COLUMNS="UserAuthorizationId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(UserAuthorizationId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Production.ManufacturerVehicleStock
      WHERE
        /*  %JoinFKPK(Production.ManufacturerVehicleStock,deleted," = "," AND") */
        Production.ManufacturerVehicleStock.UserAuthorizationId = deleted.UserAuthorizationId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update DbSecurity.UserAuthorization because Production.ManufacturerVehicleStock exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* DbSecurity.UserAuthorization authorizes Sales.CustomerComment on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="DbSecurity", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="Sales", CHILD_TABLE="CustomerComment"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_CustomerComments_UserAuthorization", FK_COLUMNS="UserAuthorizationId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(UserAuthorizationId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Sales.CustomerComment
      WHERE
        /*  %JoinFKPK(Sales.CustomerComment,deleted," = "," AND") */
        Sales.CustomerComment.UserAuthorizationId = deleted.UserAuthorizationId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update DbSecurity.UserAuthorization because Sales.CustomerComment exists.'
      GOTO error
    END
  END

  /* erwin Builtin Trigger */
  /* DbSecurity.UserAuthorization authorizes Production.ManufacturerVehicleModel on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="DbSecurity", PARENT_TABLE="UserAuthorization"
    CHILD_OWNER="Production", CHILD_TABLE="ManufacturerVehicleModel"
    P2C_VERB_PHRASE="authorizes", C2P_VERB_PHRASE="authorized by", 
    FK_CONSTRAINT="FK_ManufacturerVehicleModel_UserAuthorization", FK_COLUMNS="UserAuthorizationId" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(UserAuthorizationId)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Production.ManufacturerVehicleModel
      WHERE
        /*  %JoinFKPK(Production.ManufacturerVehicleModel,deleted," = "," AND") */
        Production.ManufacturerVehicleModel.UserAuthorizationId = deleted.UserAuthorizationId
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update DbSecurity.UserAuthorization because Production.ManufacturerVehicleModel exists.'
      GOTO error
    END
  END


  /* erwin Builtin Trigger */
  RETURN
error:
   RAISERROR (@errmsg, -- Message text.
              @severity, -- Severity (0~25).
              @state) -- State (0~255).
    rollback transaction
END

go