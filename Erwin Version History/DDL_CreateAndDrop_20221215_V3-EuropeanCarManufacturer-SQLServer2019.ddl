
ALTER DATABASE ECM SET MULTI_USER WITH ROLLBACK IMMEDIATE;

go


DROP INDEX XPKCustomerMarketingInformation ON Audit.CustomerMarketingInformationHistory
go

DROP INDEX XPKManufacturerVehicleStockHistory ON Audit.ManufacturerVehicleStockHistory
go

DROP INDEX XPKManufacturerVehicleMakeHistory ON Audit.ManufacturerVehicleMakeHistory
go

DROP INDEX XPKCountryHistory ON Audit.CountryHistory
go

DROP INDEX XPKCustomerHistory ON Audit.CustomerHistory
go

DROP INDEX XPKManufacturerVehicleModelHistory ON Audit.ManufacturerVehicleModelHistory
go

DROP INDEX XPKSalesOrderVehicleDetailHistory ON Audit.SalesOrderVehicleDetailHistory
go

DROP INDEX XPKSalesOrderVehicleHistory ON Audit.SalesOrderVehicleHistory
go

DROP INDEX XPKStaffHistory ON Audit.StaffHistory
go

DROP INDEX XPKCustomerMarketingInformation ON Sales.CustomerMarketingInformation
go

DROP INDEX XIF1CustomerMarketingInformation ON Sales.CustomerMarketingInformation
go

DROP INDEX XIF2CustomerMarketingInformation ON Sales.CustomerMarketingInformation
go

DROP INDEX PKSalesDetails ON Sales.SalesOrderVehicleDetail
go

DROP INDEX XIF2SalesOrderVehicleDetail ON Sales.SalesOrderVehicleDetail
go

DROP INDEX XIF3SalesOrderVehicleDetail ON Sales.SalesOrderVehicleDetail
go

DROP INDEX XIF4SalesOrderVehicleDetail ON Sales.SalesOrderVehicleDetail
go

DROP INDEX XPKSalesOrderVehicle ON Sales.SalesOrderVehicle
go

DROP INDEX XIF2SalesOrderVehicle ON Sales.SalesOrderVehicle
go

DROP INDEX XIF1SalesOrderVehicle ON Sales.SalesOrderVehicle
go

DROP INDEX XAK1SalesOrderVehicle ON Sales.SalesOrderVehicle
go

DROP INDEX XIF3SalesOrderVehicle ON Sales.SalesOrderVehicle
go

DROP INDEX XPKStaff ON HumanResources.Staff
go

DROP INDEX XIF1Staff ON HumanResources.Staff
go

DROP INDEX XIF2Staff ON HumanResources.Staff
go

DROP INDEX PKCustomer ON Sales.Customer
go

DROP INDEX XIF1Customer ON Sales.Customer
go

DROP INDEX XAK1Customer ON Sales.Customer
go

DROP INDEX XIF2Customer ON Sales.Customer
go

DROP INDEX PKStock ON Production.ManufacturerVehicleStock
go

DROP INDEX XAK1ManufacturerVehicleStock ON Production.ManufacturerVehicleStock
go

DROP INDEX XIF1ManufacturerVehicleStock ON Production.ManufacturerVehicleStock
go

DROP INDEX XIF2ManufacturerVehicleStock ON Production.ManufacturerVehicleStock
go

DROP INDEX PKModel1 ON Production.ManufacturerVehicleModel
go

DROP INDEX XAK1ManufacturerVehicleModel ON Production.ManufacturerVehicleModel
go

DROP INDEX XIF1ManufacturerVehicleModel ON Production.ManufacturerVehicleModel
go

DROP INDEX XIF2ManufacturerVehicleModel ON Production.ManufacturerVehicleModel
go

DROP INDEX PKMake ON Production.ManufacturerVehicleMake
go

DROP INDEX XIF1ManufacturerVehicleMake ON Production.ManufacturerVehicleMake
go

DROP INDEX XAK1ManufacturerVehicleMake ON Production.ManufacturerVehicleMake
go

DROP INDEX XIF2ManufacturerVehicleMake ON Production.ManufacturerVehicleMake
go

DROP INDEX PKCountry ON Sales.Country
go

DROP INDEX XAK1Country ON Sales.Country
go

DROP INDEX XIF1Country ON Sales.Country
go

DROP INDEX XPKUserAuthorization ON DbSecurity.UserAuthorization
go

DROP INDEX XAK1UserAuthorization ON DbSecurity.UserAuthorization
go

DROP TRIGGER Sales.Country_InsertTrigger
go

DROP TRIGGER Sales.Country_UpdateDeleteTrigger
go

DROP TRIGGER Production.ManufacturerVehicleModel_UpdateDeleteTrigger
go

DROP TRIGGER Production.ManufacturerVehicleModel_InsertTrigger
go

DROP TRIGGER Production.ManufacturerVehicleMake_UpdateDeleteTrigger
go

DROP TRIGGER Production.ManufacturerVehicleMake_InsertTrigger
go

DROP TRIGGER Production.ManufacturerVehicleStock_UpdateDeleteTrigger
go

DROP TRIGGER Production.ManufacturerVehicleStock_InsertTrigger
go

DROP TRIGGER Sales.SalesOrderVehicle_UpdateDeleteTrigger
go

DROP TRIGGER Sales.SalesOrderVehicle_InsertTrigger
go

DROP TRIGGER Sales.SalesOrderVehicleDetail_UpdateDeleteTrigger
go

DROP TRIGGER Sales.SalesOrderVehicleDetail_InsertTrigger
go

DROP TRIGGER HumanResources.Staff_UpdateDeleteTrigger
go

DROP TRIGGER HumanResources.Staff_InsertTrigger
go

DROP TRIGGER Sales.CustomerMarketingInformation_UpdateDeleteTrigger
go

DROP TRIGGER Sales.CustomerMarketingInformation_InsertTrigger
go

DROP TRIGGER Sales.Customer_UpdateDeleteTrigger
go

DROP TRIGGER Sales.Customer_InsertTrigger
go

DROP TABLE Audit.CustomerMarketingInformationHistory
go

DROP TABLE Audit.ManufacturerVehicleStockHistory
go

DROP TABLE Audit.ManufacturerVehicleMakeHistory
go

DROP TABLE Audit.CountryHistory
go

DROP TABLE Audit.CustomerHistory
go

DROP TABLE Audit.ManufacturerVehicleModelHistory
go

DROP TABLE Audit.SalesOrderVehicleDetailHistory
go

DROP TABLE Audit.SalesOrderVehicleHistory
go

DROP TABLE Audit.StaffHistory
go

DROP TABLE Sales.CustomerMarketingInformation
go

DROP TABLE Sales.SalesOrderVehicleDetail
go

DROP TABLE Sales.SalesOrderVehicle
go

DROP TABLE HumanResources.Staff
go

DROP TABLE Sales.Customer
go

DROP TABLE Production.ManufacturerVehicleStock
go

DROP TABLE Production.ManufacturerVehicleModel
go

DROP TABLE Production.ManufacturerVehicleMake
go

DROP TABLE Sales.Country
go

DROP TABLE DbSecurity.UserAuthorization
go

DROP TYPE dEuropeanCarManufacturer
go

DROP TYPE dString
go

DROP TYPE dString.sdLongString
go

DROP TYPE dString.Comment
go

DROP TYPE dString.sdCountryString
go

DROP TYPE dBitChar.CountryISO2
go

DROP TYPE dString.sdNamesString
go

DROP TYPE dString.CountryName
go

DROP TYPE dDateTime
go

DROP TYPE dString.Description
go

DROP TYPE dNumber
go

DROP TYPE dNumber.sdCostsNumber
go

DROP TYPE dNumber.Discount
go

DROP TYPE dString.PersonName
go

DROP TYPE dString.FirstName
go

DROP TYPE dString.LastName
go

DROP TYPE dString.LongString
go

DROP TYPE dString.MakeName
go

DROP TYPE dBitChar.Model
go

DROP TYPE dDate.sdDate
go

DROP TYPE dDate.MonthDay
go

DROP TYPE dString.sdAddressesString
go

DROP TYPE dString.Region
go

DROP TYPE dString.Address
go

DROP TYPE dString.PostalCode
go

DROP TYPE dString.Town
go

DROP TYPE dNumber.sdBasicNumber
go

DROP TYPE dNumber.BasicInt
go

DROP TYPE dNumber.VersionInt
go

DROP TYPE dString.sdCharString
go

DROP TYPE dBitChar.SingleChar
go

DROP TYPE dNumber.Charge
go

DROP TYPE dNumber.Cost
go

DROP TYPE dString.sdDepartmentalString
go

DROP TYPE dString.Department
go

DROP TYPE dString.StaffName
go

DROP TYPE dString.StockCode
go

DROP TYPE dNumber.sdFlagsNumber
go

DROP TYPE dCheck.IsTrueBit
go

DROP TYPE dString.sdFlagsString
go

DROP TYPE dNumber.sdKeysNumber
go

DROP TYPE dNumber.SurrogateKeyIdentityInt
go

DROP TYPE dNumber.sdSequenceNumber
go

DROP TYPE dString.sdSpendCapacityString
go

DROP TYPE dDate.sdTimeStampDateTime
go

DROP TYPE dDate.CurrentTimeStamp
go

DROP TYPE dNumber.SequenceSmallint
go

DROP TYPE dNumber.SequenceTinyint
go

DROP TYPE dString.SpendCapacity
go

DROP TYPE dNumber.SurrogateKeyIdentitySmallInt
go

DROP TYPE dNumber.SurrogateKeyInt
go

DROP TYPE dString.VehicleColor
go

DROP TYPE dDate.Year
go

DROP TYPE dString.FullName
go

DROP TYPE dString.Invoice
go

DROP TYPE dString.sdRandomString
go

DROP TYPE dString.MarketType
go

DROP TYPE dString.ClassTime
go

DROP TYPE dString.IndividualProject
go

DROP TYPE dString.CountryISO3
go

DROP TYPE dString.Country
go

DROP TYPE dDate.YearMonthDay
go

DROP TYPE dString.CustomerName
go

DROP TYPE dString.AuditNote
go

DROP TYPE dBitChar.DMLInitial
go

DROP SCHEMA Output
go

DROP SCHEMA HumanResources
go

DROP SCHEMA Sales
go

DROP SCHEMA Production
go

DROP SCHEMA DbSecurity
go

DROP SCHEMA dString
go

DROP SCHEMA dNumber
go

DROP SCHEMA dBitChar
go

DROP SCHEMA dDate
go

DROP SCHEMA dBlob
go

DROP SCHEMA dDefault
go

DROP SCHEMA dCheck
go

DROP SCHEMA Audit
go

DROP SCHEMA ApplicationDomains
go

CREATE SCHEMA Output AUTHORIZATION dbo
go

CREATE SCHEMA HumanResources
go

CREATE SCHEMA Sales
go

CREATE SCHEMA Production
go

CREATE SCHEMA DbSecurity
go

CREATE SCHEMA dString
go

CREATE SCHEMA dNumber
go

CREATE SCHEMA dBitChar
go

CREATE SCHEMA dDate
go

CREATE SCHEMA dBlob
go

CREATE SCHEMA dDefault
go

CREATE SCHEMA dCheck
go

CREATE SCHEMA Audit
go

CREATE SCHEMA ApplicationDomains
go

CREATE TYPE dEuropeanCarManufacturer
	FROM VARCHAR(MAX) NULL
go

CREATE TYPE dString
	FROM VARCHAR(MAX) NULL
go

CREATE TYPE dString.sdLongString
	FROM NVARCHAR(200) NULL
go

CREATE TYPE dString.Comment
	FROM NVARCHAR(499) NULL
go

CREATE TYPE dString.sdCountryString
	FROM NCHAR(10) NULL
go

CREATE TYPE dBitChar.CountryISO2
	FROM CHAR(2) NULL
go

CREATE TYPE dString.sdNamesString
	FROM NVARCHAR(150) NULL
go

CREATE TYPE dString.CountryName
	FROM NVARCHAR(150) NULL
go

CREATE TYPE dDateTime
	FROM DATETIME NULL
go

CREATE TYPE dString.Description
	FROM NVARCHAR(50) NULL
go

CREATE TYPE dNumber
	FROM INTEGER NULL
go

CREATE TYPE dNumber.sdCostsNumber
	FROM NUMERIC(18,2) NULL
go

CREATE TYPE dNumber.Discount
	FROM NUMERIC(18,2) NULL
go

CREATE TYPE dString.PersonName
	FROM NVARCHAR(150) NULL
go

CREATE TYPE dString.FirstName
	FROM NVARCHAR(50) NULL
go

CREATE TYPE dString.LastName
	FROM NVARCHAR(50) NULL
go

CREATE TYPE dString.LongString
	FROM NVARCHAR(200) NOT NULL
go

CREATE TYPE dString.MakeName
	FROM NVARCHAR(100) NULL
go

CREATE TYPE dBitChar.Model
	FROM CHAR(3) NULL
go

CREATE TYPE dDate.sdDate
	FROM DATE NULL
go

CREATE TYPE dDate.MonthDay
	FROM CHAR(2) NULL
go

CREATE TYPE dString.sdAddressesString
	FROM NVARCHAR(50) NULL
go

CREATE TYPE dString.Region
	FROM NVARCHAR(20) NULL
go

CREATE TYPE dString.Address
	FROM NVARCHAR(50) NULL
go

CREATE TYPE dString.PostalCode
	FROM NVARCHAR(50) NULL
go

CREATE TYPE dString.Town
	FROM NVARCHAR(50) NULL
go

CREATE TYPE dNumber.sdBasicNumber
	FROM INTEGER NULL
go

CREATE TYPE dNumber.BasicInt
	FROM INTEGER NULL
go

CREATE TYPE dNumber.VersionInt
	FROM INTEGER NOT NULL
go

CREATE TYPE dString.sdCharString
	FROM CHAR(18) NULL
go

CREATE TYPE dBitChar.SingleChar
	FROM CHAR(1) NOT NULL
go

CREATE TYPE dNumber.Charge
	FROM NUMERIC(18,2) NULL
go

CREATE TYPE dNumber.Cost
	FROM NUMERIC(18,2) NULL
go

CREATE TYPE dString.sdDepartmentalString
	FROM NVARCHAR(50) NULL
go

CREATE TYPE dString.Department
	FROM NVARCHAR(50) NULL
go

CREATE TYPE dString.StaffName
	FROM NVARCHAR(50) NULL
go

CREATE TYPE dString.StockCode
	FROM NVARCHAR(50) NOT NULL
go

CREATE TYPE dNumber.sdFlagsNumber
	FROM BIT NULL
go

CREATE TYPE dCheck.IsTrueBit
	FROM BIT NOT NULL
go

CREATE TYPE dString.sdFlagsString
	FROM NCHAR(1) NULL
go

CREATE TYPE dNumber.sdKeysNumber
	FROM INTEGER NULL
go

CREATE TYPE dNumber.SurrogateKeyIdentityInt
	FROM INTEGER NOT NULL
go

CREATE TYPE dNumber.sdSequenceNumber
	FROM SMALLINT NULL
go

CREATE TYPE dString.sdSpendCapacityString
	FROM VARCHAR(25) NOT NULL
go

CREATE TYPE dDate.sdTimeStampDateTime
	FROM DATETIME NULL
go

CREATE TYPE dDate.CurrentTimeStamp
	FROM DATETIME2(7) NULL
go

CREATE TYPE dNumber.SequenceSmallint
	FROM SMALLINT NOT NULL
go

CREATE TYPE dNumber.SequenceTinyint
	FROM SMALLINT NOT NULL
go

CREATE TYPE dString.SpendCapacity
	FROM VARCHAR(25) NOT NULL
go

CREATE TYPE dNumber.SurrogateKeyIdentitySmallInt
	FROM SMALLINT NOT NULL
go

CREATE TYPE dNumber.SurrogateKeyInt
	FROM INTEGER NOT NULL
go

CREATE TYPE dString.VehicleColor
	FROM NVARCHAR(150) NULL
go

CREATE TYPE dDate.Year
	FROM CHAR(4) NULL
go

CREATE TYPE dString.FullName
	FROM NVARCHAR(100) NULL
go

CREATE TYPE dString.Invoice
	FROM CHAR(8) NOT NULL
go

CREATE TYPE dString.sdRandomString
	FROM VARCHAR(MAX) NULL
go

CREATE TYPE dString.MarketType
	FROM NVARCHAR(80) NULL
go

CREATE TYPE dString.ClassTime
	FROM NCHAR(5) NULL
go

CREATE TYPE dString.IndividualProject
	FROM NVARCHAR(60) NULL
go

CREATE TYPE dString.CountryISO3
	FROM CHAR(3) NULL
go

CREATE TYPE dString.Country
	FROM NCHAR(20) NULL
go

CREATE TYPE dDate.YearMonthDay
	FROM DATE NULL
go

CREATE TYPE dString.CustomerName
	FROM NVARCHAR(100) NULL
go

CREATE TYPE dString.AuditNote
	FROM NVARCHAR(99) NULL
go

CREATE TYPE dBitChar.DMLInitial
	FROM CHAR(1) NOT NULL
go

CREATE TABLE Sales.Country
( 
	CountryId            dNumber.SurrogateKeyIdentityInt  IDENTITY ( 1,1 )  NOT NULL ,
	CountryName          dString.Country  NOT NULL ,
	CountryISO2          dBitChar.CountryISO2  NOT NULL 
		 DEFAULT  'N/A',
	CountryISO3          dString.CountryISO3  NOT NULL ,
	SalesRegion          dString.Region  NOT NULL 
		 DEFAULT  'N/A',
	Note                 dString.AuditNote  NULL 
		CHECK  ( [Note] LIKE '%' ),
	SysStartTime         dDate.CurrentTimeStamp  NULL 
		 DEFAULT  sysdatetime(),
	SysEndTime           dDate.CurrentTimeStamp  NULL 
		 DEFAULT  sysdatetime(),
	UserAuthenticatedKey dNumber.SurrogateKeyInt  NULL 
)
go

CREATE TABLE Audit.CountryHistory
( 
	CountryHistoryId     dNumber.SurrogateKeyIdentityInt  IDENTITY ( 1,1 ) ,
	TransactionNumber    dNumber.SequenceSmallint  NOT NULL 
		 DEFAULT  0,
	IsDeleted            dBitChar.SingleChar  NOT NULL ,
	DBAction             dBitChar.DMLInitial ,
	Note                 dString.AuditNote  NULL 
		CHECK  ( [Note] LIKE '%' ),
	SysStartTime         dDate.CurrentTimeStamp  NOT NULL 
		 DEFAULT  sysdatetime(),
	SysEndTime           dDate.CurrentTimeStamp  NOT NULL 
		 DEFAULT  sysdatetime(),
	CountryId            dNumber.SurrogateKeyInt  NOT NULL ,
	CountryISO3          dString.CountryISO3  NULL ,
	CountryName          dString.Country  NULL ,
	CountryISO2          dBitChar.CountryISO2  NULL ,
	SalesRegion          dString.Region  NULL ,
	UserAuthenticatedKey dNumber.SurrogateKeyInt  NULL 
)
go

CREATE TABLE Sales.Customer
( 
	CustomerId           dNumber.SurrogateKeyIdentityInt  IDENTITY ( 1,1 )  NOT NULL ,
	CustomerName         dString.CustomerName  NOT NULL 
		CHECK  ( [CustomerName] LIKE '%' ),
	CustomerAddress1     dString.Address  NOT NULL ,
	CustomerAddress2     dString.Address  NULL ,
	CustomerPostalCode   dString.PostalCode  NULL 
		 DEFAULT  'N/A',
	CustomerTown         dString.Town  NULL 
		 DEFAULT  'N/A',
	CountryId            dNumber.SurrogateKeyIdentityInt  NOT NULL ,
	Note                 dString.AuditNote  NULL 
		CHECK  ( [Note] LIKE '%' ),
	SysStartTime         dDate.CurrentTimeStamp  NULL 
		 DEFAULT  sysdatetime(),
	SysEndTime           dDate.CurrentTimeStamp  NULL 
		 DEFAULT  sysdatetime(),
	UserAuthenticatedKey dNumber.SurrogateKeyInt  NULL 
)
go

CREATE TABLE Audit.CustomerHistory
( 
	CustomerHistoryId    dNumber.SurrogateKeyIdentityInt  IDENTITY ( 1,1 ) ,
	TransactionNumber    dNumber.SequenceSmallint  NOT NULL 
		 DEFAULT  0,
	IsDeleted            dBitChar.SingleChar  NOT NULL ,
	DBAction             dBitChar.DMLInitial ,
	Note                 dString.AuditNote  NULL 
		CHECK  ( [Note] LIKE '%' ),
	SysStartTime         dDate.CurrentTimeStamp  NOT NULL 
		 DEFAULT  sysdatetime(),
	SysEndTime           dDate.CurrentTimeStamp  NOT NULL 
		 DEFAULT  sysdatetime(),
	CustomerId           dNumber.SurrogateKeyInt  NOT NULL ,
	CustomerName         dString.CustomerName  NULL ,
	CustomerAddress1     dString.Address  NULL ,
	CustomerAddress2     dString.Address  NULL ,
	CustomerTown         dString.Town  NULL ,
	CustomerPostalCode   dString.PostalCode  NULL ,
	CountryId            dNumber.SurrogateKeyInt  NULL ,
	UserAuthenticatedKey dNumber.SurrogateKeyInt  NULL 
)
go

CREATE TABLE Sales.CustomerMarketingInformation
( 
	CustomerMarketingInformationId dNumber.SurrogateKeyInt ,
	IsCustomerReseller   dBitChar.SingleChar ,
	IsCustomerCreditRisk dBitChar.SingleChar ,
	CustomerSpendCapacity dString.SpendCapacity ,
	Note                 dString.AuditNote  NULL 
		CHECK  ( [Note] LIKE '%' ),
	SysStartTime         dDate.CurrentTimeStamp  NULL 
		 DEFAULT  sysdatetime(),
	SysEndTime           dDate.CurrentTimeStamp  NULL 
		 DEFAULT  sysdatetime(),
	UserAuthenticatedKey dNumber.SurrogateKeyInt  NULL 
)
go

CREATE TABLE Audit.CustomerMarketingInformationHistory
( 
	CustomerMarketingHistoryId dNumber.SurrogateKeyIdentityInt  IDENTITY ( 1,1 ) ,
	TransactionNumber    dNumber.SequenceSmallint  NOT NULL 
		 DEFAULT  0,
	IsDeleted            dBitChar.SingleChar  NOT NULL ,
	DBAction             dBitChar.DMLInitial ,
	Note                 dString.AuditNote  NULL 
		CHECK  ( [Note] LIKE '%' ),
	SysStartTime         dDate.CurrentTimeStamp  NOT NULL 
		 DEFAULT  sysdatetime(),
	SysEndTime           dDate.CurrentTimeStamp  NOT NULL 
		 DEFAULT  sysdatetime(),
	CustomerMarketingInformationId dNumber.SurrogateKeyInt ,
	IsCustomerReseller   dBitChar.SingleChar  NULL ,
	IsCustomerCreditRisk dBitChar.SingleChar  NULL ,
	CustomerSpendCapacity dString.SpendCapacity  NULL ,
	UserAuthenticatedKey dNumber.SurrogateKeyInt  NULL 
)
go

CREATE TABLE Production.ManufacturerVehicleMake
( 
	ManufacturerVehicleMakeId dNumber.SurrogateKeyIdentityInt  IDENTITY ( 1,1 )  NOT NULL ,
	ManufacturerVehicleMakeName dString.MakeName  NOT NULL 
		CHECK  ( [ManufacturerVehicleMakeName] like '[A-Z]%' ),
	CountryId            dNumber.SurrogateKeyIdentityInt  NOT NULL ,
	MarketingType        dString.MarketType  NOT NULL 
		 DEFAULT  'N/A',
	Note                 dString.AuditNote  NULL 
		CHECK  ( [Note] LIKE '%' ),
	SysStartTime         dDate.CurrentTimeStamp  NULL 
		 DEFAULT  sysdatetime(),
	SysEndTime           dDate.CurrentTimeStamp  NULL 
		 DEFAULT  sysdatetime(),
	UserAuthenticatedKey dNumber.SurrogateKeyInt  NULL 
)
go

CREATE TABLE Audit.ManufacturerVehicleMakeHistory
( 
	ManufacturerVehicleMakeHistoryId dNumber.SurrogateKeyIdentityInt  IDENTITY ( 1,1 ) ,
	TransactionNumber    dNumber.SequenceSmallint  NOT NULL 
		 DEFAULT  0,
	IsDeleted            dBitChar.SingleChar  NOT NULL ,
	DBAction             dBitChar.DMLInitial ,
	Note                 dString.AuditNote  NULL 
		CHECK  ( [Note] LIKE '%' ),
	SysStartTime         dDate.CurrentTimeStamp  NOT NULL 
		 DEFAULT  sysdatetime(),
	SysEndTime           dDate.CurrentTimeStamp  NOT NULL 
		 DEFAULT  sysdatetime(),
	ManufacturerVehicleMakeId dNumber.SurrogateKeyInt  NOT NULL ,
	ManufacturerVehicleMakeName dString.MakeName  NULL ,
	CountryId            dNumber.SurrogateKeyInt  NULL ,
	MarketingType        dString.MarketType  NULL ,
	UserAuthenticatedKey dNumber.SurrogateKeyInt  NULL 
)
go

CREATE TABLE Production.ManufacturerVehicleModel
( 
	ManufacturerVehicleModelId dNumber.SurrogateKeyIdentityInt  IDENTITY ( 1,1 )  NOT NULL ,
	ManufacturerVehicleMakeId dNumber.SurrogateKeyIdentityInt  NULL ,
	ModelName            dString.MakeName  NOT NULL 
		CHECK  ( [ModelName] like '[A-Z]%' ),
	ModelVariant         dBitChar.Model  NULL 
		CHECK  ( [ModelVariant] like '[A-Z]%' ),
	ModelYear            dDate.Year 
		 DEFAULT  '1999'
		CHECK  ( ModelYear LIKE '[0-9][0-9][0-9][0-9]' ),
	Note                 dString.AuditNote  NULL 
		CHECK  ( [Note] LIKE '%' ),
	SysStartTime         dDate.CurrentTimeStamp  NULL 
		 DEFAULT  sysdatetime(),
	SysEndTime           dDate.CurrentTimeStamp  NULL 
		 DEFAULT  sysdatetime(),
	UserAuthenticatedKey dNumber.SurrogateKeyInt  NULL 
)
go

CREATE TABLE Audit.ManufacturerVehicleModelHistory
( 
	ManufacturerVehicleModelHistoryId dNumber.SurrogateKeyIdentityInt  IDENTITY ( 1,1 ) ,
	TransactionNumber    dNumber.SequenceSmallint  NOT NULL 
		 DEFAULT  0,
	IsDeleted            dBitChar.SingleChar  NOT NULL ,
	DBAction             dBitChar.DMLInitial ,
	Note                 dString.AuditNote  NULL 
		CHECK  ( [Note] LIKE '%' ),
	SysStartTime         dDate.CurrentTimeStamp  NOT NULL 
		 DEFAULT  sysdatetime(),
	SysEndTime           dDate.CurrentTimeStamp  NOT NULL 
		 DEFAULT  sysdatetime(),
	ManufacturerVehicleModelId dNumber.SurrogateKeyInt  NOT NULL ,
	ModelName            dString.MakeName  NULL ,
	ModelVariant         dBitChar.Model  NULL ,
	ManufacturerVehicleMakeId dNumber.SurrogateKeyInt  NULL ,
	ModelYear            dDate.Year ,
	UserAuthenticatedKey dNumber.SurrogateKeyInt  NULL 
)
go

CREATE TABLE Production.ManufacturerVehicleStock
( 
	ManufacturerVehicleStockId dNumber.SurrogateKeyIdentityInt  IDENTITY ( 1,1 )  NOT NULL ,
	VehicleStockCode     dString.StockCode  NOT NULL ,
	IsAvailable          dCheck.IsTrueBit 
		 DEFAULT  1,
	ManufacturerVehicleModelId dNumber.SurrogateKeyInt  NULL ,
	IsPremiumRoadHandlingPackage dBitChar.SingleChar  NOT NULL ,
	VehicleColor         dString.VehicleColor  NOT NULL 
		 DEFAULT  'N/A',
	VehicleCost          dNumber.Cost  NOT NULL 
		 DEFAULT  0,
	VehicleRepairsCharge dNumber.Charge  NOT NULL 
		 DEFAULT  0,
	VehiclePartsCharge   dNumber.Charge  NOT NULL 
		 DEFAULT  0,
	VehicleDeliveryCharge dNumber.Charge  NOT NULL 
		 DEFAULT  0,
	CustomerComment      dString.Comment  NULL 
		CHECK  ( [CustomerComment] LIKE '%' ),
	Note                 dString.AuditNote  NULL 
		CHECK  ( [Note] LIKE '%' ),
	SysStartTime         dDate.CurrentTimeStamp  NULL 
		 DEFAULT  sysdatetime(),
	SysEndTime           dDate.CurrentTimeStamp  NULL 
		 DEFAULT  sysdatetime(),
	UserAuthenticatedKey dNumber.SurrogateKeyInt  NULL 
)
go

CREATE TABLE Audit.ManufacturerVehicleStockHistory
( 
	ManufacturerVehicleStockHistoryId dNumber.SurrogateKeyIdentityInt  IDENTITY ( 1,1 ) ,
	TransactionNumber    dNumber.SequenceSmallint  NOT NULL 
		 DEFAULT  0,
	IsDeleted            dBitChar.SingleChar  NOT NULL ,
	DBAction             dBitChar.DMLInitial ,
	Note                 dString.AuditNote  NULL 
		CHECK  ( [Note] LIKE '%' ),
	SysStartTime         dDate.CurrentTimeStamp  NOT NULL 
		 DEFAULT  sysdatetime(),
	SysEndTime           dDate.CurrentTimeStamp  NOT NULL 
		 DEFAULT  sysdatetime(),
	ManufacturerVehicleStockId dNumber.SurrogateKeyInt  NOT NULL ,
	VehicleStockCode     dString.StockCode  NULL ,
	VehicleCost          dNumber.Cost  NULL ,
	VehicleRepairsCharge dNumber.Charge  NULL ,
	VehiclePartsCharge   dNumber.Charge  NULL ,
	VehicleDeliveryCharge dNumber.Charge  NULL ,
	IsPremiumRoadHandlingPackage dBitChar.SingleChar  NULL ,
	VehicleColor         dString.VehicleColor  NULL ,
	ManufacturerVehicleModelId dNumber.SurrogateKeyInt  NULL ,
	CustomerComment      dString.Comment  NULL ,
	IsAvailable          dCheck.IsTrueBit  NULL 
		 DEFAULT  1,
	UserAuthenticatedKey dNumber.SurrogateKeyInt  NULL 
)
go

CREATE TABLE Sales.SalesOrderVehicle
( 
	SalesOrderVehicleId  dNumber.SurrogateKeyIdentityInt  IDENTITY ( 1,1 )  NOT NULL ,
	CustomerId           dNumber.SurrogateKeyInt  NOT NULL ,
	StaffId              dNumber.SurrogateKeyInt  NOT NULL ,
	InvoiceNumber        dString.Invoice  NOT NULL ,
	SaleOrderDate        dDate.YearMonthDay  NOT NULL 
		 DEFAULT  '1900-01-01',
	TotalSalePrice       dNumber.Cost  NOT NULL 
		 DEFAULT  0,
	TotalCost            dNumber.Cost  NOT NULL 
		 DEFAULT  0,
	SalesCategoryDescription AS (CASE WHEN TotalSalePrice >= 100 AND TotalSalePrice <= 25000 
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
      ELSE 'Sales Category has no Description.' END) COLLATE SQL_Latin1_General_CP1_CI_AS PERSISTED NOT NULL ,
	Note                 dString.AuditNote  NULL 
		CHECK  ( [Note] LIKE '%' ),
	SysStartTime         dDate.CurrentTimeStamp  NULL 
		 DEFAULT  sysdatetime(),
	SysEndTime           dDate.CurrentTimeStamp  NULL 
		 DEFAULT  sysdatetime(),
	UserAuthenticatedKey dNumber.SurrogateKeyInt  NULL 
)
go

CREATE TABLE Sales.SalesOrderVehicleDetail
( 
	SalesOrderVehicleDetailId dNumber.SurrogateKeyIdentityInt  IDENTITY ( 1,1 )  NOT NULL ,
	SalesOrderVehicleId  dNumber.SurrogateKeyIdentityInt  NULL ,
	LineItemNumber       dNumber.BasicInt  NOT NULL 
		 DEFAULT  0,
	ManufacturerVehicleId dNumber.SurrogateKeyInt  NOT NULL ,
	SalePrice            dNumber.Cost  NOT NULL 
		 DEFAULT  0,
	LineItemDiscount     dNumber.Discount  NULL 
		 DEFAULT  0,
	DiscountedSalePrice  AS ([SalePrice]-[LineItemDiscount]) PERSISTED NOT NULL ,
	Note                 dString.AuditNote  NULL 
		CHECK  ( [Note] LIKE '%' ),
	SysStartTime         dDate.CurrentTimeStamp  NULL 
		 DEFAULT  sysdatetime(),
	SysEndTime           dDate.CurrentTimeStamp  NULL 
		 DEFAULT  sysdatetime(),
	UserAuthenticatedKey dNumber.SurrogateKeyInt  NULL 
)
go

CREATE TABLE Audit.SalesOrderVehicleDetailHistory
( 
	SalesOrderVehicleDetailHistoryId dNumber.SurrogateKeyIdentityInt  IDENTITY ( 1,1 ) ,
	TransactionNumber    dNumber.SequenceSmallint  NOT NULL 
		 DEFAULT  0,
	IsDeleted            dBitChar.SingleChar  NOT NULL ,
	DBAction             dBitChar.DMLInitial ,
	Note                 dString.AuditNote  NULL 
		CHECK  ( [Note] LIKE '%' ),
	SysStartTime         dDate.CurrentTimeStamp  NOT NULL 
		 DEFAULT  sysdatetime(),
	SysEndTime           dDate.CurrentTimeStamp  NOT NULL 
		 DEFAULT  sysdatetime(),
	SalesOrderVehicleDetailId dNumber.SurrogateKeyInt  NOT NULL ,
	SalesOrderVehicleId  dNumber.SurrogateKeyInt  NULL ,
	LineItemNumber       dNumber.BasicInt  NULL ,
	ManufacturerVehicleId dNumber.SurrogateKeyInt  NULL ,
	SalePrice            dNumber.Cost  NULL ,
	LineItemDiscount     dNumber.Discount  NULL ,
	DiscountedSalePrice  dNumber.Cost  NULL ,
	UserAuthenticatedKey dNumber.SurrogateKeyInt  NULL 
)
go

CREATE TABLE Audit.SalesOrderVehicleHistory
( 
	SalesOrderVehicleHistoryId dNumber.SurrogateKeyIdentityInt  IDENTITY ( 1,1 ) ,
	TransactionNumber    dNumber.SequenceSmallint  NOT NULL 
		 DEFAULT  0,
	IsDeleted            dBitChar.SingleChar  NOT NULL ,
	DBAction             dBitChar.DMLInitial ,
	Note                 dString.AuditNote  NULL 
		CHECK  ( [Note] LIKE '%' ),
	SysStartTime         dDate.CurrentTimeStamp  NOT NULL 
		 DEFAULT  sysdatetime(),
	SysEndTime           dDate.CurrentTimeStamp  NOT NULL 
		 DEFAULT  sysdatetime(),
	SalesOrderVehicleId  dNumber.SurrogateKeyInt  NOT NULL ,
	CustomerId           dNumber.SurrogateKeyInt  NULL ,
	StaffId              dNumber.SurrogateKeyInt  NULL ,
	InvoiceNumber        dString.Invoice  NULL ,
	TotalSalePrice       dNumber.Cost  NULL ,
	SaleOrderDate        dDate.YearMonthDay  NULL ,
	SalesCategoryDescription dString.Description  NULL ,
	TotalCost            dNumber.Cost  NULL ,
	UserAuthenticatedKey dNumber.SurrogateKeyInt  NULL 
)
go

CREATE TABLE HumanResources.Staff
( 
	StaffId              dNumber.SurrogateKeyIdentityInt  IDENTITY ( 1,1 )  NOT NULL ,
	ManagerId            dNumber.SurrogateKeyInt  NULL ,
	StaffName            dString.FirstName  NOT NULL 
		CHECK  ( [StaffName] like '[A-Z]%' ),
	DepartmentName       dString.Department  NOT NULL 
		 DEFAULT  'N/A',
	Note                 dString.AuditNote  NULL 
		CHECK  ( [Note] LIKE '%' ),
	SysStartTime         dDate.CurrentTimeStamp  NULL 
		 DEFAULT  sysdatetime(),
	SysEndTime           dDate.CurrentTimeStamp  NULL 
		 DEFAULT  sysdatetime(),
	UserAuthenticatedKey dNumber.SurrogateKeyInt  NULL 
)
go

CREATE TABLE Audit.StaffHistory
( 
	StaffHistoryId       dNumber.SurrogateKeyIdentityInt  IDENTITY ( 1,1 ) ,
	TransactionNumber    dNumber.SequenceSmallint  NOT NULL 
		 DEFAULT  0,
	IsDeleted            dBitChar.SingleChar  NOT NULL ,
	DBAction             dBitChar.DMLInitial ,
	Note                 dString.AuditNote  NULL 
		CHECK  ( [Note] LIKE '%' ),
	SysStartTime         dDate.CurrentTimeStamp  NOT NULL 
		 DEFAULT  sysdatetime(),
	SysEndTime           dDate.CurrentTimeStamp  NOT NULL 
		 DEFAULT  sysdatetime(),
	StaffId              dNumber.SurrogateKeyInt  NOT NULL ,
	StaffName            dString.FirstName  NULL ,
	ManagerId            dNumber.SurrogateKeyInt  NULL ,
	DepartmentName       dString.Department  NULL ,
	UserAuthenticatedKey dNumber.SurrogateKeyInt  NULL 
)
go

CREATE TABLE DbSecurity.UserAuthorization
( 
	UserAuthenticatedKey dNumber.SurrogateKeyInt ,
	ClassTime            dString.ClassTime  NULL 
		 DEFAULT  '9:15',
	IndividualProject    dString.IndividualProject  NULL 
		 DEFAULT  'CSCI381 Final Group Project',
	GroupMemberLastName  dString.LastName  NOT NULL 
		CHECK  ( [GroupMemberLastName] like '[A-Z]%' ),
	GroupMemberFirstName dString.FirstName  NOT NULL 
		CHECK  ( [GroupMemberFirstName] like '[A-Z]%' ),
	GroupName            dString.FullName  NOT NULL 
		CHECK  ( [GroupName] like '[A-Z]% [A-Z]%' ),
	SysStartTime         dDate.CurrentTimeStamp  NULL 
		 DEFAULT  sysdatetime(),
	SysEndTime           dDate.CurrentTimeStamp  NULL 
		 DEFAULT  sysdatetime()
)
go

CREATE UNIQUE CLUSTERED INDEX PKCountry ON Sales.Country
( 
	CountryId             ASC
)
go

CREATE UNIQUE NONCLUSTERED INDEX XAK1Country ON Sales.Country
( 
	CountryName           ASC,
	CountryISO2           ASC,
	CountryISO3           ASC
)
go

CREATE NONCLUSTERED INDEX XIF1Country ON Sales.Country
( 
	UserAuthenticatedKey  ASC
)
go

CREATE UNIQUE CLUSTERED INDEX XPKCountryHistory ON Audit.CountryHistory
( 
	CountryHistoryId      ASC
)
go

CREATE UNIQUE CLUSTERED INDEX PKCustomer ON Sales.Customer
( 
	CustomerId            ASC
)
go

CREATE UNIQUE NONCLUSTERED INDEX XAK1Customer ON Sales.Customer
( 
	CustomerName          ASC,
	CustomerAddress1      ASC,
	CustomerAddress2      ASC
)
go

CREATE NONCLUSTERED INDEX XIF1Customer ON Sales.Customer
( 
	CountryId             ASC
)
go

CREATE NONCLUSTERED INDEX XIF2Customer ON Sales.Customer
( 
	UserAuthenticatedKey  ASC
)
go

CREATE UNIQUE CLUSTERED INDEX XPKCustomerHistory ON Audit.CustomerHistory
( 
	CustomerHistoryId     ASC
)
go

CREATE UNIQUE CLUSTERED INDEX XPKCustomerMarketingInformation ON Sales.CustomerMarketingInformation
( 
	CustomerMarketingInformationId  ASC
)
go

CREATE UNIQUE NONCLUSTERED INDEX XIF1CustomerMarketingInformation ON Sales.CustomerMarketingInformation
( 
	CustomerMarketingInformationId  ASC
)
go

CREATE NONCLUSTERED INDEX XIF2CustomerMarketingInformation ON Sales.CustomerMarketingInformation
( 
	UserAuthenticatedKey  ASC
)
go

CREATE UNIQUE CLUSTERED INDEX XPKCustomerMarketingInformation ON Audit.CustomerMarketingInformationHistory
( 
	CustomerMarketingHistoryId  ASC
)
go

CREATE UNIQUE CLUSTERED INDEX PKMake ON Production.ManufacturerVehicleMake
( 
	ManufacturerVehicleMakeId  ASC
)
go

CREATE UNIQUE NONCLUSTERED INDEX XAK1ManufacturerVehicleMake ON Production.ManufacturerVehicleMake
( 
	ManufacturerVehicleMakeName  ASC
)
go

CREATE NONCLUSTERED INDEX XIF1ManufacturerVehicleMake ON Production.ManufacturerVehicleMake
( 
	CountryId             ASC
)
go

CREATE NONCLUSTERED INDEX XIF2ManufacturerVehicleMake ON Production.ManufacturerVehicleMake
( 
	UserAuthenticatedKey  ASC
)
go

CREATE UNIQUE CLUSTERED INDEX XPKManufacturerVehicleMakeHistory ON Audit.ManufacturerVehicleMakeHistory
( 
	ManufacturerVehicleMakeHistoryId  ASC
)
go

CREATE UNIQUE CLUSTERED INDEX PKModel1 ON Production.ManufacturerVehicleModel
( 
	ManufacturerVehicleModelId  ASC
)
go

CREATE UNIQUE NONCLUSTERED INDEX XAK1ManufacturerVehicleModel ON Production.ManufacturerVehicleModel
( 
	ModelName             ASC,
	ModelVariant          ASC,
	ModelYear             ASC
)
go

CREATE NONCLUSTERED INDEX XIF1ManufacturerVehicleModel ON Production.ManufacturerVehicleModel
( 
	ManufacturerVehicleMakeId  ASC
)
go

CREATE NONCLUSTERED INDEX XIF2ManufacturerVehicleModel ON Production.ManufacturerVehicleModel
( 
	UserAuthenticatedKey  ASC
)
go

CREATE UNIQUE CLUSTERED INDEX XPKManufacturerVehicleModelHistory ON Audit.ManufacturerVehicleModelHistory
( 
	ManufacturerVehicleModelHistoryId  ASC
)
go

CREATE UNIQUE CLUSTERED INDEX PKStock ON Production.ManufacturerVehicleStock
( 
	ManufacturerVehicleStockId  ASC
)
go

CREATE UNIQUE NONCLUSTERED INDEX XAK1ManufacturerVehicleStock ON Production.ManufacturerVehicleStock
( 
	VehicleStockCode      ASC
)
go

CREATE NONCLUSTERED INDEX XIF1ManufacturerVehicleStock ON Production.ManufacturerVehicleStock
( 
	ManufacturerVehicleModelId  ASC
)
go

CREATE NONCLUSTERED INDEX XIF2ManufacturerVehicleStock ON Production.ManufacturerVehicleStock
( 
	UserAuthenticatedKey  ASC
)
go

CREATE UNIQUE CLUSTERED INDEX XPKManufacturerVehicleStockHistory ON Audit.ManufacturerVehicleStockHistory
( 
	ManufacturerVehicleStockHistoryId  ASC
)
go

CREATE UNIQUE CLUSTERED INDEX XPKSalesOrderVehicle ON Sales.SalesOrderVehicle
( 
	SalesOrderVehicleId   ASC
)
go

CREATE UNIQUE NONCLUSTERED INDEX XAK1SalesOrderVehicle ON Sales.SalesOrderVehicle
( 
	InvoiceNumber         ASC
)
go

CREATE NONCLUSTERED INDEX XIF2SalesOrderVehicle ON Sales.SalesOrderVehicle
( 
	StaffId               ASC
)
go

CREATE NONCLUSTERED INDEX XIF1SalesOrderVehicle ON Sales.SalesOrderVehicle
( 
	CustomerId            ASC
)
go

CREATE NONCLUSTERED INDEX XIF3SalesOrderVehicle ON Sales.SalesOrderVehicle
( 
	UserAuthenticatedKey  ASC
)
go

CREATE UNIQUE CLUSTERED INDEX PKSalesDetails ON Sales.SalesOrderVehicleDetail
( 
	SalesOrderVehicleDetailId  ASC
)
go

CREATE NONCLUSTERED INDEX XIF2SalesOrderVehicleDetail ON Sales.SalesOrderVehicleDetail
( 
	ManufacturerVehicleId  ASC
)
go

CREATE NONCLUSTERED INDEX XIF3SalesOrderVehicleDetail ON Sales.SalesOrderVehicleDetail
( 
	SalesOrderVehicleId   ASC
)
go

CREATE NONCLUSTERED INDEX XIF4SalesOrderVehicleDetail ON Sales.SalesOrderVehicleDetail
( 
	UserAuthenticatedKey  ASC
)
go

CREATE UNIQUE CLUSTERED INDEX XPKSalesOrderVehicleDetailHistory ON Audit.SalesOrderVehicleDetailHistory
( 
	SalesOrderVehicleDetailHistoryId  ASC
)
go

CREATE UNIQUE CLUSTERED INDEX XPKSalesOrderVehicleHistory ON Audit.SalesOrderVehicleHistory
( 
	SalesOrderVehicleHistoryId  ASC
)
go

CREATE UNIQUE CLUSTERED INDEX XPKStaff ON HumanResources.Staff
( 
	StaffId               ASC
)
go

CREATE NONCLUSTERED INDEX XIF1Staff ON HumanResources.Staff
( 
	StaffId               ASC
)
go

CREATE NONCLUSTERED INDEX XIF2Staff ON HumanResources.Staff
( 
	UserAuthenticatedKey  ASC
)
go

CREATE UNIQUE CLUSTERED INDEX XPKStaffHistory ON Audit.StaffHistory
( 
	StaffHistoryId        ASC
)
go

CREATE UNIQUE CLUSTERED INDEX XPKUserAuthorization ON DbSecurity.UserAuthorization
( 
	UserAuthenticatedKey  ASC
)
go

CREATE UNIQUE NONCLUSTERED INDEX XAK1UserAuthorization ON DbSecurity.UserAuthorization
( 
	ClassTime             ASC,
	GroupName             ASC
)
go

CREATE OR ALTER TRIGGER Sales.Country_InsertTrigger ON Sales.Country
 AFTER INSERT

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

        insert into Audit.CountryHistory
        (
            CountryId , CountryName , CountryISO2 , CountryISO3 , SalesRegion , Note , SysStartTime , SysEndTime , UserAuthenticatedKey 
            ,TransactionNumber
            ,IsDeleted
            ,DBAction
        )
        select
            CountryId ,  CountryName ,  CountryISO2 ,  CountryISO3 ,  SalesRegion ,  Note ,  SysStartTime ,  SysEndTime ,  UserAuthenticatedKey 
            ,1
            ,@IsDeleted
            ,@DBAction
        from Inserted ORDER BY CountryId, SysStartTime

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


go


ENABLE TRIGGER Sales.Country_InsertTrigger ON Sales.Country


go




CREATE OR ALTER TRIGGER Sales.Country_UpdateDeleteTrigger ON Sales.Country
 AFTER DELETE,UPDATE

AS

BEGIN

set xact_abort OFF;

BEGIN TRY


    DECLARE TrigTempUpdateDelete_Cursor CURSOR FOR

    SELECT CountryId FROM Deleted

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
                
            FROM Audit.CountryHistory WHERE CountryId = @cursorID ORDER BY TransactionNumber DESC

            SET @DBAction = 'U'
            SET @IsDeleted = 'N'

                            SELECT @Note1 = Inserted.Note, @Note2 = Deleted.Note FROM Inserted INNER JOIN Deleted ON Inserted.CountryId = Deleted.CountryId AND Inserted.CountryId = @cursorID

                            IF @Note1 = @Note2 
                            BEGIN 
                                SET @Note1 = NULL
                            END; 
                            -- ELSE 
                            -- BEGIN 
                            --     -- SET @Note1 = SELECT Note FROM INSERTED WHERE CountryId = @cursorID
                            -- END;

                            UPDATE 
                                Sales.Country
                            SET 
                                SysStartTime = (SELECT SysEndTime from Deleted d where d.CountryId = @cursorID )
                                --,SysEndTime = SYSDATETIME()

                                ,SysEndTime = @DateTime2Now
                                ,Note = @Note1

                            FROM 
                                inserted
                            --     Sales.Country c
                            -- INNER JOIN 
                            --     Inserted i 
                            -- ON c.CountryId = i.CountryId


        END;


        ELSE IF (EXISTS (SELECT * FROM Deleted))
        BEGIN
            SELECT TOP(1)
                @tnum = TransactionNumber + 1
                -- ,@SysEnd_as_StartTime = SysEndTime
                
                
            FROM Audit.CountryHistory WHERE CountryId = @cursorID ORDER BY TransactionNumber DESC

            -- SET @Note = CONCAT('Row Deleted. Transaction number: ', @tnum)
            SET @DBAction = 'D'
            SET @IsDeleted = 'Y'
        END;

        SELECT @NumberOfRows = @@rowcount

                ----------------------------------
                -------- Trigger code ------------
                ----------------------------------

                    insert into Audit.CountryHistory
                    (
                        CountryId , CountryName , CountryISO2 , CountryISO3 , SalesRegion , Note , SysStartTime , SysEndTime , UserAuthenticatedKey 

                        ,TransactionNumber
                        ,IsDeleted
                        ,DBAction
                    )
                    select
                        CountryId ,  CountryName ,  CountryISO2 ,  CountryISO3 ,  SalesRegion ,  Note ,  SysStartTime ,  SysEndTime ,  UserAuthenticatedKey 

                        ,@tnum
                        ,@IsDeleted
                        ,@DBAction

                    from Deleted where CountryId = @cursorID
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


go


ENABLE TRIGGER Sales.Country_UpdateDeleteTrigger ON Sales.Country

go




CREATE OR ALTER TRIGGER Production.ManufacturerVehicleModel_UpdateDeleteTrigger ON Production.ManufacturerVehicleModel
 AFTER DELETE,UPDATE

AS

BEGIN

set xact_abort OFF;

BEGIN TRY


    DECLARE TrigTempUpdateDelete_Cursor CURSOR FOR

    SELECT ManufacturerVehicleModelId FROM Deleted

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
                
            FROM Audit.ManufacturerVehicleModelHistory WHERE ManufacturerVehicleModelId = @cursorID ORDER BY TransactionNumber DESC

            SET @DBAction = 'U'
            SET @IsDeleted = 'N'

                            SELECT @Note1 = Inserted.Note, @Note2 = Deleted.Note FROM Inserted INNER JOIN Deleted ON Inserted.ManufacturerVehicleModelId = Deleted.ManufacturerVehicleModelId AND Inserted.ManufacturerVehicleModelId = @cursorID

                            IF @Note1 = @Note2 
                            BEGIN 
                                SET @Note1 = NULL
                            END; 
                            -- ELSE 
                            -- BEGIN 
                            --     -- SET @Note1 = SELECT Note FROM INSERTED WHERE ManufacturerVehicleModelId = @cursorID
                            -- END;

                            UPDATE 
                                Production.ManufacturerVehicleModel
                            SET 
                                SysStartTime = (SELECT SysEndTime from Deleted d where d.ManufacturerVehicleModelId = @cursorID )
                                --,SysEndTime = SYSDATETIME()

                                ,SysEndTime = @DateTime2Now
                                ,Note = @Note1

                            FROM 
                                inserted
                            --     Production.ManufacturerVehicleModel c
                            -- INNER JOIN 
                            --     Inserted i 
                            -- ON c.ManufacturerVehicleModelId = i.ManufacturerVehicleModelId


        END;


        ELSE IF (EXISTS (SELECT * FROM Deleted))
        BEGIN
            SELECT TOP(1)
                @tnum = TransactionNumber + 1
                -- ,@SysEnd_as_StartTime = SysEndTime
                
                
            FROM Audit.ManufacturerVehicleModelHistory WHERE ManufacturerVehicleModelId = @cursorID ORDER BY TransactionNumber DESC

            -- SET @Note = CONCAT('Row Deleted. Transaction number: ', @tnum)
            SET @DBAction = 'D'
            SET @IsDeleted = 'Y'
        END;

        SELECT @NumberOfRows = @@rowcount

                ----------------------------------
                -------- Trigger code ------------
                ----------------------------------

                    insert into Audit.ManufacturerVehicleModelHistory
                    (
                        ManufacturerVehicleModelId , ManufacturerVehicleMakeId , ModelName , ModelVariant , ModelYear , Note , SysStartTime , SysEndTime , UserAuthenticatedKey 

                        ,TransactionNumber
                        ,IsDeleted
                        ,DBAction
                    )
                    select
                        ManufacturerVehicleModelId ,  ManufacturerVehicleMakeId ,  ModelName ,  ModelVariant ,  ModelYear ,  Note ,  SysStartTime ,  SysEndTime ,  UserAuthenticatedKey 

                        ,@tnum
                        ,@IsDeleted
                        ,@DBAction

                    from Deleted where ManufacturerVehicleModelId = @cursorID
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


go


ENABLE TRIGGER Production.ManufacturerVehicleModel_UpdateDeleteTrigger ON Production.ManufacturerVehicleModel

go


CREATE OR ALTER TRIGGER Production.ManufacturerVehicleModel_InsertTrigger ON Production.ManufacturerVehicleModel
 AFTER INSERT

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

        insert into Audit.ManufacturerVehicleModelHistory
        (
            ManufacturerVehicleModelId , ManufacturerVehicleMakeId , ModelName , ModelVariant , ModelYear , Note , SysStartTime , SysEndTime , UserAuthenticatedKey 
            ,TransactionNumber
            ,IsDeleted
            ,DBAction
        )
        select
            ManufacturerVehicleModelId ,  ManufacturerVehicleMakeId ,  ModelName ,  ModelVariant ,  ModelYear ,  Note ,  SysStartTime ,  SysEndTime ,  UserAuthenticatedKey 
            ,1
            ,@IsDeleted
            ,@DBAction
        from Inserted ORDER BY ManufacturerVehicleModelId, SysStartTime

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


go


ENABLE TRIGGER Production.ManufacturerVehicleModel_InsertTrigger ON Production.ManufacturerVehicleModel


go




CREATE OR ALTER TRIGGER Production.ManufacturerVehicleMake_UpdateDeleteTrigger ON Production.ManufacturerVehicleMake
 AFTER DELETE,UPDATE

AS

BEGIN

set xact_abort OFF;

BEGIN TRY


    DECLARE TrigTempUpdateDelete_Cursor CURSOR FOR

    SELECT ManufacturerVehicleMakeId FROM Deleted

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
                
            FROM Audit.ManufacturerVehicleMakeHistory WHERE ManufacturerVehicleMakeId = @cursorID ORDER BY TransactionNumber DESC

            SET @DBAction = 'U'
            SET @IsDeleted = 'N'

                            SELECT @Note1 = Inserted.Note, @Note2 = Deleted.Note FROM Inserted INNER JOIN Deleted ON Inserted.ManufacturerVehicleMakeId = Deleted.ManufacturerVehicleMakeId AND Inserted.ManufacturerVehicleMakeId = @cursorID

                            IF @Note1 = @Note2 
                            BEGIN 
                                SET @Note1 = NULL
                            END; 
                            -- ELSE 
                            -- BEGIN 
                            --     -- SET @Note1 = SELECT Note FROM INSERTED WHERE ManufacturerVehicleMakeId = @cursorID
                            -- END;

                            UPDATE 
                                Production.ManufacturerVehicleMake
                            SET 
                                SysStartTime = (SELECT SysEndTime from Deleted d where d.ManufacturerVehicleMakeId = @cursorID )
                                --,SysEndTime = SYSDATETIME()

                                ,SysEndTime = @DateTime2Now
                                ,Note = @Note1

                            FROM 
                                inserted
                            --     Production.ManufacturerVehicleMake c
                            -- INNER JOIN 
                            --     Inserted i 
                            -- ON c.ManufacturerVehicleMakeId = i.ManufacturerVehicleMakeId


        END;


        ELSE IF (EXISTS (SELECT * FROM Deleted))
        BEGIN
            SELECT TOP(1)
                @tnum = TransactionNumber + 1
                -- ,@SysEnd_as_StartTime = SysEndTime
                
                
            FROM Audit.ManufacturerVehicleMakeHistory WHERE ManufacturerVehicleMakeId = @cursorID ORDER BY TransactionNumber DESC

            -- SET @Note = CONCAT('Row Deleted. Transaction number: ', @tnum)
            SET @DBAction = 'D'
            SET @IsDeleted = 'Y'
        END;

        SELECT @NumberOfRows = @@rowcount

                ----------------------------------
                -------- Trigger code ------------
                ----------------------------------

                    insert into Audit.ManufacturerVehicleMakeHistory
                    (
                        ManufacturerVehicleMakeId , ManufacturerVehicleMakeName , CountryId , MarketingType , Note , SysStartTime , SysEndTime , UserAuthenticatedKey 

                        ,TransactionNumber
                        ,IsDeleted
                        ,DBAction
                    )
                    select
                        ManufacturerVehicleMakeId ,  ManufacturerVehicleMakeName ,  CountryId ,  MarketingType ,  Note ,  SysStartTime ,  SysEndTime ,  UserAuthenticatedKey 

                        ,@tnum
                        ,@IsDeleted
                        ,@DBAction

                    from Deleted where ManufacturerVehicleMakeId = @cursorID
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


go


ENABLE TRIGGER Production.ManufacturerVehicleMake_UpdateDeleteTrigger ON Production.ManufacturerVehicleMake

go


CREATE OR ALTER TRIGGER Production.ManufacturerVehicleMake_InsertTrigger ON Production.ManufacturerVehicleMake
 AFTER INSERT

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

        insert into Audit.ManufacturerVehicleMakeHistory
        (
            ManufacturerVehicleMakeId , ManufacturerVehicleMakeName , CountryId , MarketingType , Note , SysStartTime , SysEndTime , UserAuthenticatedKey 
            ,TransactionNumber
            ,IsDeleted
            ,DBAction
        )
        select
            ManufacturerVehicleMakeId ,  ManufacturerVehicleMakeName ,  CountryId ,  MarketingType ,  Note ,  SysStartTime ,  SysEndTime ,  UserAuthenticatedKey 
            ,1
            ,@IsDeleted
            ,@DBAction
        from Inserted ORDER BY ManufacturerVehicleMakeId, SysStartTime

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


go


ENABLE TRIGGER Production.ManufacturerVehicleMake_InsertTrigger ON Production.ManufacturerVehicleMake


go




CREATE OR ALTER TRIGGER Production.ManufacturerVehicleStock_UpdateDeleteTrigger ON Production.ManufacturerVehicleStock
 AFTER DELETE,UPDATE

AS

BEGIN

set xact_abort OFF;

BEGIN TRY


    DECLARE TrigTempUpdateDelete_Cursor CURSOR FOR

    SELECT ManufacturerVehicleStockId FROM Deleted

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
                
            FROM Audit.ManufacturerVehicleStockHistory WHERE ManufacturerVehicleStockId = @cursorID ORDER BY TransactionNumber DESC

            SET @DBAction = 'U'
            SET @IsDeleted = 'N'

                            SELECT @Note1 = Inserted.Note, @Note2 = Deleted.Note FROM Inserted INNER JOIN Deleted ON Inserted.ManufacturerVehicleStockId = Deleted.ManufacturerVehicleStockId AND Inserted.ManufacturerVehicleStockId = @cursorID

                            IF @Note1 = @Note2 
                            BEGIN 
                                SET @Note1 = NULL
                            END; 
                            -- ELSE 
                            -- BEGIN 
                            --     -- SET @Note1 = SELECT Note FROM INSERTED WHERE ManufacturerVehicleStockId = @cursorID
                            -- END;

                            UPDATE 
                                Production.ManufacturerVehicleStock
                            SET 
                                SysStartTime = (SELECT SysEndTime from Deleted d where d.ManufacturerVehicleStockId = @cursorID )
                                --,SysEndTime = SYSDATETIME()

                                ,SysEndTime = @DateTime2Now
                                ,Note = @Note1

                            FROM 
                                inserted
                            --     Production.ManufacturerVehicleStock c
                            -- INNER JOIN 
                            --     Inserted i 
                            -- ON c.ManufacturerVehicleStockId = i.ManufacturerVehicleStockId


        END;


        ELSE IF (EXISTS (SELECT * FROM Deleted))
        BEGIN
            SELECT TOP(1)
                @tnum = TransactionNumber + 1
                -- ,@SysEnd_as_StartTime = SysEndTime
                
                
            FROM Audit.ManufacturerVehicleStockHistory WHERE ManufacturerVehicleStockId = @cursorID ORDER BY TransactionNumber DESC

            -- SET @Note = CONCAT('Row Deleted. Transaction number: ', @tnum)
            SET @DBAction = 'D'
            SET @IsDeleted = 'Y'
        END;

        SELECT @NumberOfRows = @@rowcount

                ----------------------------------
                -------- Trigger code ------------
                ----------------------------------

                    insert into Audit.ManufacturerVehicleStockHistory
                    (
                        ManufacturerVehicleStockId , VehicleStockCode , IsAvailable , ManufacturerVehicleModelId , IsPremiumRoadHandlingPackage , VehicleColor , VehicleCost , VehicleRepairsCharge , VehiclePartsCharge , VehicleDeliveryCharge , CustomerComment , Note , SysStartTime , SysEndTime , UserAuthenticatedKey 

                        ,TransactionNumber
                        ,IsDeleted
                        ,DBAction
                    )
                    select
                        ManufacturerVehicleStockId ,  VehicleStockCode ,  IsAvailable ,  ManufacturerVehicleModelId ,  IsPremiumRoadHandlingPackage ,  VehicleColor ,  VehicleCost ,  VehicleRepairsCharge ,  VehiclePartsCharge ,  VehicleDeliveryCharge ,  CustomerComment ,  Note ,  SysStartTime ,  SysEndTime ,  UserAuthenticatedKey 

                        ,@tnum
                        ,@IsDeleted
                        ,@DBAction

                    from Deleted where ManufacturerVehicleStockId = @cursorID
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


go


ENABLE TRIGGER Production.ManufacturerVehicleStock_UpdateDeleteTrigger ON Production.ManufacturerVehicleStock

go


CREATE OR ALTER TRIGGER Production.ManufacturerVehicleStock_InsertTrigger ON Production.ManufacturerVehicleStock
 AFTER INSERT

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

        insert into Audit.ManufacturerVehicleStockHistory
        (
            ManufacturerVehicleStockId , VehicleStockCode , IsAvailable , ManufacturerVehicleModelId , IsPremiumRoadHandlingPackage , VehicleColor , VehicleCost , VehicleRepairsCharge , VehiclePartsCharge , VehicleDeliveryCharge , CustomerComment , Note , SysStartTime , SysEndTime , UserAuthenticatedKey 
            ,TransactionNumber
            ,IsDeleted
            ,DBAction
        )
        select
            ManufacturerVehicleStockId ,  VehicleStockCode ,  IsAvailable ,  ManufacturerVehicleModelId ,  IsPremiumRoadHandlingPackage ,  VehicleColor ,  VehicleCost ,  VehicleRepairsCharge ,  VehiclePartsCharge ,  VehicleDeliveryCharge ,  CustomerComment ,  Note ,  SysStartTime ,  SysEndTime ,  UserAuthenticatedKey 
            ,1
            ,@IsDeleted
            ,@DBAction
        from Inserted ORDER BY ManufacturerVehicleStockId, SysStartTime

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


go


ENABLE TRIGGER Production.ManufacturerVehicleStock_InsertTrigger ON Production.ManufacturerVehicleStock


go




CREATE OR ALTER TRIGGER Sales.SalesOrderVehicle_UpdateDeleteTrigger ON Sales.SalesOrderVehicle
 AFTER DELETE,UPDATE

AS

BEGIN

set xact_abort OFF;

BEGIN TRY


    DECLARE TrigTempUpdateDelete_Cursor CURSOR FOR

    SELECT SalesOrderVehicleId FROM Deleted

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
                
            FROM Audit.SalesOrderVehicleHistory WHERE SalesOrderVehicleId = @cursorID ORDER BY TransactionNumber DESC

            SET @DBAction = 'U'
            SET @IsDeleted = 'N'

                            SELECT @Note1 = Inserted.Note, @Note2 = Deleted.Note FROM Inserted INNER JOIN Deleted ON Inserted.SalesOrderVehicleId = Deleted.SalesOrderVehicleId AND Inserted.SalesOrderVehicleId = @cursorID

                            IF @Note1 = @Note2 
                            BEGIN 
                                SET @Note1 = NULL
                            END; 
                            -- ELSE 
                            -- BEGIN 
                            --     -- SET @Note1 = SELECT Note FROM INSERTED WHERE SalesOrderVehicleId = @cursorID
                            -- END;

                            UPDATE 
                                Sales.SalesOrderVehicle
                            SET 
                                SysStartTime = (SELECT SysEndTime from Deleted d where d.SalesOrderVehicleId = @cursorID )
                                --,SysEndTime = SYSDATETIME()

                                ,SysEndTime = @DateTime2Now
                                ,Note = @Note1

                            FROM 
                                inserted
                            --     Sales.SalesOrderVehicle c
                            -- INNER JOIN 
                            --     Inserted i 
                            -- ON c.SalesOrderVehicleId = i.SalesOrderVehicleId


        END;


        ELSE IF (EXISTS (SELECT * FROM Deleted))
        BEGIN
            SELECT TOP(1)
                @tnum = TransactionNumber + 1
                -- ,@SysEnd_as_StartTime = SysEndTime
                
                
            FROM Audit.SalesOrderVehicleHistory WHERE SalesOrderVehicleId = @cursorID ORDER BY TransactionNumber DESC

            -- SET @Note = CONCAT('Row Deleted. Transaction number: ', @tnum)
            SET @DBAction = 'D'
            SET @IsDeleted = 'Y'
        END;

        SELECT @NumberOfRows = @@rowcount

                ----------------------------------
                -------- Trigger code ------------
                ----------------------------------

                    insert into Audit.SalesOrderVehicleHistory
                    (
                        SalesOrderVehicleId , CustomerId , StaffId , InvoiceNumber , SaleOrderDate , TotalSalePrice , TotalCost , SalesCategoryDescription , Note , SysStartTime , SysEndTime , UserAuthenticatedKey 

                        ,TransactionNumber
                        ,IsDeleted
                        ,DBAction
                    )
                    select
                        SalesOrderVehicleId ,  CustomerId ,  StaffId ,  InvoiceNumber ,  SaleOrderDate ,  TotalSalePrice ,  TotalCost ,  SalesCategoryDescription ,  Note ,  SysStartTime ,  SysEndTime ,  UserAuthenticatedKey 

                        ,@tnum
                        ,@IsDeleted
                        ,@DBAction

                    from Deleted where SalesOrderVehicleId = @cursorID
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


go


ENABLE TRIGGER Sales.SalesOrderVehicle_UpdateDeleteTrigger ON Sales.SalesOrderVehicle

go


CREATE OR ALTER TRIGGER Sales.SalesOrderVehicle_InsertTrigger ON Sales.SalesOrderVehicle
 AFTER INSERT

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

        insert into Audit.SalesOrderVehicleHistory
        (
            SalesOrderVehicleId , CustomerId , StaffId , InvoiceNumber , SaleOrderDate , TotalSalePrice , TotalCost , SalesCategoryDescription , Note , SysStartTime , SysEndTime , UserAuthenticatedKey 
            ,TransactionNumber
            ,IsDeleted
            ,DBAction
        )
        select
            SalesOrderVehicleId ,  CustomerId ,  StaffId ,  InvoiceNumber ,  SaleOrderDate ,  TotalSalePrice ,  TotalCost ,  SalesCategoryDescription ,  Note ,  SysStartTime ,  SysEndTime ,  UserAuthenticatedKey 
            ,1
            ,@IsDeleted
            ,@DBAction
        from Inserted ORDER BY SalesOrderVehicleId, SysStartTime

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


go


ENABLE TRIGGER Sales.SalesOrderVehicle_InsertTrigger ON Sales.SalesOrderVehicle


go




CREATE OR ALTER TRIGGER Sales.SalesOrderVehicleDetail_UpdateDeleteTrigger ON Sales.SalesOrderVehicleDetail
 AFTER DELETE,UPDATE

AS

BEGIN

set xact_abort OFF;

BEGIN TRY


    DECLARE TrigTempUpdateDelete_Cursor CURSOR FOR

    SELECT SalesOrderVehicleDetailId FROM Deleted

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
                
            FROM Audit.SalesOrderVehicleDetailHistory WHERE SalesOrderVehicleDetailId = @cursorID ORDER BY TransactionNumber DESC

            SET @DBAction = 'U'
            SET @IsDeleted = 'N'

                            SELECT @Note1 = Inserted.Note, @Note2 = Deleted.Note FROM Inserted INNER JOIN Deleted ON Inserted.SalesOrderVehicleDetailId = Deleted.SalesOrderVehicleDetailId AND Inserted.SalesOrderVehicleDetailId = @cursorID

                            IF @Note1 = @Note2 
                            BEGIN 
                                SET @Note1 = NULL
                            END; 
                            -- ELSE 
                            -- BEGIN 
                            --     -- SET @Note1 = SELECT Note FROM INSERTED WHERE SalesOrderVehicleDetailId = @cursorID
                            -- END;

                            UPDATE 
                                Sales.SalesOrderVehicleDetail
                            SET 
                                SysStartTime = (SELECT SysEndTime from Deleted d where d.SalesOrderVehicleDetailId = @cursorID )
                                --,SysEndTime = SYSDATETIME()

                                ,SysEndTime = @DateTime2Now
                                ,Note = @Note1

                            FROM 
                                inserted
                            --     Sales.SalesOrderVehicleDetail c
                            -- INNER JOIN 
                            --     Inserted i 
                            -- ON c.SalesOrderVehicleDetailId = i.SalesOrderVehicleDetailId


        END;


        ELSE IF (EXISTS (SELECT * FROM Deleted))
        BEGIN
            SELECT TOP(1)
                @tnum = TransactionNumber + 1
                -- ,@SysEnd_as_StartTime = SysEndTime
                
                
            FROM Audit.SalesOrderVehicleDetailHistory WHERE SalesOrderVehicleDetailId = @cursorID ORDER BY TransactionNumber DESC

            -- SET @Note = CONCAT('Row Deleted. Transaction number: ', @tnum)
            SET @DBAction = 'D'
            SET @IsDeleted = 'Y'
        END;

        SELECT @NumberOfRows = @@rowcount

                ----------------------------------
                -------- Trigger code ------------
                ----------------------------------

                    insert into Audit.SalesOrderVehicleDetailHistory
                    (
                        SalesOrderVehicleDetailId , SalesOrderVehicleId , LineItemNumber , ManufacturerVehicleId , SalePrice , LineItemDiscount , DiscountedSalePrice , Note , SysStartTime , SysEndTime , UserAuthenticatedKey 

                        ,TransactionNumber
                        ,IsDeleted
                        ,DBAction
                    )
                    select
                        SalesOrderVehicleDetailId ,  SalesOrderVehicleId ,  LineItemNumber ,  ManufacturerVehicleId ,  SalePrice ,  LineItemDiscount ,  DiscountedSalePrice ,  Note ,  SysStartTime ,  SysEndTime ,  UserAuthenticatedKey 

                        ,@tnum
                        ,@IsDeleted
                        ,@DBAction

                    from Deleted where SalesOrderVehicleDetailId = @cursorID
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


go


ENABLE TRIGGER Sales.SalesOrderVehicleDetail_UpdateDeleteTrigger ON Sales.SalesOrderVehicleDetail

go


CREATE OR ALTER TRIGGER Sales.SalesOrderVehicleDetail_InsertTrigger ON Sales.SalesOrderVehicleDetail
 AFTER INSERT

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

        insert into Audit.SalesOrderVehicleDetailHistory
        (
            SalesOrderVehicleDetailId , SalesOrderVehicleId , LineItemNumber , ManufacturerVehicleId , SalePrice , LineItemDiscount , DiscountedSalePrice , Note , SysStartTime , SysEndTime , UserAuthenticatedKey 
            ,TransactionNumber
            ,IsDeleted
            ,DBAction
        )
        select
            SalesOrderVehicleDetailId ,  SalesOrderVehicleId ,  LineItemNumber ,  ManufacturerVehicleId ,  SalePrice ,  LineItemDiscount ,  DiscountedSalePrice ,  Note ,  SysStartTime ,  SysEndTime ,  UserAuthenticatedKey 
            ,1
            ,@IsDeleted
            ,@DBAction
        from Inserted ORDER BY SalesOrderVehicleDetailId, SysStartTime

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


go


ENABLE TRIGGER Sales.SalesOrderVehicleDetail_InsertTrigger ON Sales.SalesOrderVehicleDetail


go




CREATE OR ALTER TRIGGER HumanResources.Staff_UpdateDeleteTrigger ON HumanResources.Staff
 AFTER DELETE,UPDATE

AS

BEGIN

set xact_abort OFF;

BEGIN TRY


    DECLARE TrigTempUpdateDelete_Cursor CURSOR FOR

    SELECT StaffId FROM Deleted

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
                
            FROM Audit.StaffHistory WHERE StaffId = @cursorID ORDER BY TransactionNumber DESC

            SET @DBAction = 'U'
            SET @IsDeleted = 'N'

                            SELECT @Note1 = Inserted.Note, @Note2 = Deleted.Note FROM Inserted INNER JOIN Deleted ON Inserted.StaffId = Deleted.StaffId AND Inserted.StaffId = @cursorID

                            IF @Note1 = @Note2 
                            BEGIN 
                                SET @Note1 = NULL
                            END; 
                            -- ELSE 
                            -- BEGIN 
                            --     -- SET @Note1 = SELECT Note FROM INSERTED WHERE StaffId = @cursorID
                            -- END;

                            UPDATE 
                                HumanResources.Staff
                            SET 
                                SysStartTime = (SELECT SysEndTime from Deleted d where d.StaffId = @cursorID )
                                --,SysEndTime = SYSDATETIME()

                                ,SysEndTime = @DateTime2Now
                                ,Note = @Note1

                            FROM 
                                inserted
                            --     HumanResources.Staff c
                            -- INNER JOIN 
                            --     Inserted i 
                            -- ON c.StaffId = i.StaffId


        END;


        ELSE IF (EXISTS (SELECT * FROM Deleted))
        BEGIN
            SELECT TOP(1)
                @tnum = TransactionNumber + 1
                -- ,@SysEnd_as_StartTime = SysEndTime
                
                
            FROM Audit.StaffHistory WHERE StaffId = @cursorID ORDER BY TransactionNumber DESC

            -- SET @Note = CONCAT('Row Deleted. Transaction number: ', @tnum)
            SET @DBAction = 'D'
            SET @IsDeleted = 'Y'
        END;

        SELECT @NumberOfRows = @@rowcount

                ----------------------------------
                -------- Trigger code ------------
                ----------------------------------

                    insert into Audit.StaffHistory
                    (
                        StaffId , ManagerId , StaffName , DepartmentName , Note , SysStartTime , SysEndTime , UserAuthenticatedKey 

                        ,TransactionNumber
                        ,IsDeleted
                        ,DBAction
                    )
                    select
                        StaffId ,  ManagerId ,  StaffName ,  DepartmentName ,  Note ,  SysStartTime ,  SysEndTime ,  UserAuthenticatedKey 

                        ,@tnum
                        ,@IsDeleted
                        ,@DBAction

                    from Deleted where StaffId = @cursorID
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


go


ENABLE TRIGGER HumanResources.Staff_UpdateDeleteTrigger ON HumanResources.Staff

go


CREATE OR ALTER TRIGGER HumanResources.Staff_InsertTrigger ON HumanResources.Staff
 AFTER INSERT

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

        insert into Audit.StaffHistory
        (
            StaffId , ManagerId , StaffName , DepartmentName , Note , SysStartTime , SysEndTime , UserAuthenticatedKey 
            ,TransactionNumber
            ,IsDeleted
            ,DBAction
        )
        select
            StaffId ,  ManagerId ,  StaffName ,  DepartmentName ,  Note ,  SysStartTime ,  SysEndTime ,  UserAuthenticatedKey 
            ,1
            ,@IsDeleted
            ,@DBAction
        from Inserted ORDER BY StaffId, SysStartTime

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


go


ENABLE TRIGGER HumanResources.Staff_InsertTrigger ON HumanResources.Staff


go




CREATE OR ALTER TRIGGER Sales.CustomerMarketingInformation_UpdateDeleteTrigger ON Sales.CustomerMarketingInformation
 AFTER DELETE,UPDATE

AS

BEGIN

set xact_abort OFF;

BEGIN TRY


    DECLARE TrigTempUpdateDelete_Cursor CURSOR FOR

    SELECT CustomerMarketingInformationId FROM Deleted

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
                
            FROM Audit.CustomerMarketingInformationHistory WHERE CustomerMarketingInformationId = @cursorID ORDER BY TransactionNumber DESC

            SET @DBAction = 'U'
            SET @IsDeleted = 'N'

                            SELECT @Note1 = Inserted.Note, @Note2 = Deleted.Note FROM Inserted INNER JOIN Deleted ON Inserted.CustomerMarketingInformationId = Deleted.CustomerMarketingInformationId AND Inserted.CustomerMarketingInformationId = @cursorID

                            IF @Note1 = @Note2 
                            BEGIN 
                                SET @Note1 = NULL
                            END; 
                            -- ELSE 
                            -- BEGIN 
                            --     -- SET @Note1 = SELECT Note FROM INSERTED WHERE CustomerMarketingInformationId = @cursorID
                            -- END;

                            UPDATE 
                                Sales.CustomerMarketingInformation
                            SET 
                                SysStartTime = (SELECT SysEndTime from Deleted d where d.CustomerMarketingInformationId = @cursorID )
                                --,SysEndTime = SYSDATETIME()

                                ,SysEndTime = @DateTime2Now
                                ,Note = @Note1

                            FROM 
                                inserted
                            --     Sales.CustomerMarketingInformation c
                            -- INNER JOIN 
                            --     Inserted i 
                            -- ON c.CustomerMarketingInformationId = i.CustomerMarketingInformationId


        END;


        ELSE IF (EXISTS (SELECT * FROM Deleted))
        BEGIN
            SELECT TOP(1)
                @tnum = TransactionNumber + 1
                -- ,@SysEnd_as_StartTime = SysEndTime
                
                
            FROM Audit.CustomerMarketingInformationHistory WHERE CustomerMarketingInformationId = @cursorID ORDER BY TransactionNumber DESC

            -- SET @Note = CONCAT('Row Deleted. Transaction number: ', @tnum)
            SET @DBAction = 'D'
            SET @IsDeleted = 'Y'
        END;

        SELECT @NumberOfRows = @@rowcount

                ----------------------------------
                -------- Trigger code ------------
                ----------------------------------

                    insert into Audit.CustomerMarketingInformationHistory
                    (
                        CustomerMarketingInformationId , IsCustomerReseller , IsCustomerCreditRisk , CustomerSpendCapacity , Note , SysStartTime , SysEndTime , UserAuthenticatedKey 

                        ,TransactionNumber
                        ,IsDeleted
                        ,DBAction
                    )
                    select
                        CustomerMarketingInformationId ,  IsCustomerReseller ,  IsCustomerCreditRisk ,  CustomerSpendCapacity ,  Note ,  SysStartTime ,  SysEndTime ,  UserAuthenticatedKey 

                        ,@tnum
                        ,@IsDeleted
                        ,@DBAction

                    from Deleted where CustomerMarketingInformationId = @cursorID
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


go


ENABLE TRIGGER Sales.CustomerMarketingInformation_UpdateDeleteTrigger ON Sales.CustomerMarketingInformation

go


CREATE OR ALTER TRIGGER Sales.CustomerMarketingInformation_InsertTrigger ON Sales.CustomerMarketingInformation
 AFTER INSERT

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

        insert into Audit.CustomerMarketingInformationHistory
        (
            CustomerMarketingInformationId , IsCustomerReseller , IsCustomerCreditRisk , CustomerSpendCapacity , Note , SysStartTime , SysEndTime , UserAuthenticatedKey 
            ,TransactionNumber
            ,IsDeleted
            ,DBAction
        )
        select
            CustomerMarketingInformationId ,  IsCustomerReseller ,  IsCustomerCreditRisk ,  CustomerSpendCapacity ,  Note ,  SysStartTime ,  SysEndTime ,  UserAuthenticatedKey 
            ,1
            ,@IsDeleted
            ,@DBAction
        from Inserted ORDER BY CustomerMarketingInformationId, SysStartTime

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


go


ENABLE TRIGGER Sales.CustomerMarketingInformation_InsertTrigger ON Sales.CustomerMarketingInformation


go




CREATE OR ALTER TRIGGER Sales.Customer_UpdateDeleteTrigger ON Sales.Customer
 AFTER DELETE,UPDATE

AS

BEGIN

set xact_abort OFF;

BEGIN TRY


    DECLARE TrigTempUpdateDelete_Cursor CURSOR FOR

    SELECT CustomerId FROM Deleted

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
                
            FROM Audit.CustomerHistory WHERE CustomerId = @cursorID ORDER BY TransactionNumber DESC

            SET @DBAction = 'U'
            SET @IsDeleted = 'N'

                            SELECT @Note1 = Inserted.Note, @Note2 = Deleted.Note FROM Inserted INNER JOIN Deleted ON Inserted.CustomerId = Deleted.CustomerId AND Inserted.CustomerId = @cursorID

                            IF @Note1 = @Note2 
                            BEGIN 
                                SET @Note1 = NULL
                            END; 
                            -- ELSE 
                            -- BEGIN 
                            --     -- SET @Note1 = SELECT Note FROM INSERTED WHERE CustomerId = @cursorID
                            -- END;

                            UPDATE 
                                Sales.Customer
                            SET 
                                SysStartTime = (SELECT SysEndTime from Deleted d where d.CustomerId = @cursorID )
                                --,SysEndTime = SYSDATETIME()

                                ,SysEndTime = @DateTime2Now
                                ,Note = @Note1

                            FROM 
                                inserted
                            --     Sales.Customer c
                            -- INNER JOIN 
                            --     Inserted i 
                            -- ON c.CustomerId = i.CustomerId


        END;


        ELSE IF (EXISTS (SELECT * FROM Deleted))
        BEGIN
            SELECT TOP(1)
                @tnum = TransactionNumber + 1
                -- ,@SysEnd_as_StartTime = SysEndTime
                
                
            FROM Audit.CustomerHistory WHERE CustomerId = @cursorID ORDER BY TransactionNumber DESC

            -- SET @Note = CONCAT('Row Deleted. Transaction number: ', @tnum)
            SET @DBAction = 'D'
            SET @IsDeleted = 'Y'
        END;

        SELECT @NumberOfRows = @@rowcount

                ----------------------------------
                -------- Trigger code ------------
                ----------------------------------

                    insert into Audit.CustomerHistory
                    (
                        CustomerId , CustomerName , CustomerAddress1 , CustomerAddress2 , CustomerPostalCode , CustomerTown , CountryId , Note , SysStartTime , SysEndTime , UserAuthenticatedKey 

                        ,TransactionNumber
                        ,IsDeleted
                        ,DBAction
                    )
                    select
                        CustomerId ,  CustomerName ,  CustomerAddress1 ,  CustomerAddress2 ,  CustomerPostalCode ,  CustomerTown ,  CountryId ,  Note ,  SysStartTime ,  SysEndTime ,  UserAuthenticatedKey 

                        ,@tnum
                        ,@IsDeleted
                        ,@DBAction

                    from Deleted where CustomerId = @cursorID
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


go


ENABLE TRIGGER Sales.Customer_UpdateDeleteTrigger ON Sales.Customer

go


CREATE OR ALTER TRIGGER Sales.Customer_InsertTrigger ON Sales.Customer
 AFTER INSERT

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

        insert into Audit.CustomerHistory
        (
            CustomerId , CustomerName , CustomerAddress1 , CustomerAddress2 , CustomerPostalCode , CustomerTown , CountryId , Note , SysStartTime , SysEndTime , UserAuthenticatedKey 
            ,TransactionNumber
            ,IsDeleted
            ,DBAction
        )
        select
            CustomerId ,  CustomerName ,  CustomerAddress1 ,  CustomerAddress2 ,  CustomerPostalCode ,  CustomerTown ,  CountryId ,  Note ,  SysStartTime ,  SysEndTime ,  UserAuthenticatedKey 
            ,1
            ,@IsDeleted
            ,@DBAction
        from Inserted ORDER BY CustomerId, SysStartTime

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


go


ENABLE TRIGGER Sales.Customer_InsertTrigger ON Sales.Customer


go

