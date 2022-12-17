
DROP TABLE IF EXISTS `Audit.CustomerMarketingInformationHistory`;

DROP TABLE IF EXISTS `Audit.ManufacturerVehicleStockHistory`;

DROP TABLE IF EXISTS `Audit.ManufacturerVehicleMakeHistory`;

DROP TABLE IF EXISTS `Audit.CountryHistory`;

DROP TABLE IF EXISTS `Audit.CustomerHistory`;

DROP TABLE IF EXISTS `Audit.ManufacturerVehicleModelHistory`;

DROP TABLE IF EXISTS `Audit.SalesOrderVehicleDetailHistory`;

DROP TABLE IF EXISTS `Audit.SalesOrderVehicleHistory`;

DROP TABLE IF EXISTS `Audit.StaffHistory`;

DROP TABLE IF EXISTS `Sales.CustomerMarketingInformation`;

DROP TABLE IF EXISTS `Sales.SalesOrderVehicleDetail`;

DROP TABLE IF EXISTS `Sales.SalesOrderVehicle`;

DROP TABLE IF EXISTS `HumanResources.Staff`;

DROP TABLE IF EXISTS `Sales.Customer`;

DROP TABLE IF EXISTS `Production.ManufacturerVehicleStock`;

DROP TABLE IF EXISTS `Production.ManufacturerVehicleModel`;

DROP TABLE IF EXISTS `Production.ManufacturerVehicleMake`;

DROP TABLE IF EXISTS `Sales.Country`;

DROP TABLE IF EXISTS `DbSecurity.UserAuthorization`;

CREATE TABLE `Audit.CountryHistory`
(
	`CountryHistoryId` INTEGER AUTO_INCREMENT  COMMENT 'Unique identifier for the history of a customer.' NOT NULL ,
	`TransactionNumber` SMALLINT  DEFAULT 0 COMMENT 'The transaction number for the invoice.' NOT NULL ,
	`IsDeleted` CHAR(1) COMMENT 'A flag to check if a tuple is deleted.' NOT NULL ,
	`DBAction` CHAR(1) COMMENT 'The capitalized initial of the DML operation: I, U, D.' NOT NULL ,
	`Note` VARCHAR(99) CONSTRAINT `CK_Template_ArbitraryText_1614081516` CHECK (`Note` LIKE '%') COMMENT 'The note about the DML operation performed.' NULL ,
	`SysStartTime` DATETIME  DEFAULT NOW() COMMENT 'The start of time based on the system from DML.' NOT NULL ,
	`SysEndTime` DATETIME  DEFAULT NOW() COMMENT 'The end of time based on the system from DML.' NOT NULL ,
	`CountryId` INTEGER COMMENT 'Unique identifier for countries.' NOT NULL ,
	`CountryISO3` CHAR(3) COMMENT 'ISO3 format of a country, for example USA. ' NULL ,
	`CountryName` CHAR(20) COMMENT 'The country name fully written out in english.' NULL ,
	`CountryISO2` CHAR(2) COMMENT 'ISO2 format of a country, for example US. ' NULL ,
	`SalesRegion` VARCHAR(20) COMMENT 'The region that the sales were made in.' NULL ,
	`UserAuthenticatedKey` INTEGER COMMENT 'The identification number of a user, authorizing them to edit entities.' NULL ,
	 CONSTRAINT XPKCountryHistory PRIMARY KEY  ( `CountryHistoryId` ASC )
);

CREATE TABLE `Audit.CustomerHistory`
(
	`CustomerHistoryId` INTEGER AUTO_INCREMENT  COMMENT 'Unique identifier for the history of a customer.' NOT NULL ,
	`TransactionNumber` SMALLINT  DEFAULT 0 COMMENT 'The transaction number for the invoice.' NOT NULL ,
	`IsDeleted` CHAR(1) COMMENT 'A flag to check if a tuple is deleted.' NOT NULL ,
	`DBAction` CHAR(1) COMMENT 'The capitalized initial of the DML operation: I, U, D.' NOT NULL ,
	`Note` VARCHAR(99) CONSTRAINT `CK_Template_ArbitraryText_1527032582` CHECK (`Note` LIKE '%') COMMENT 'The note about the DML operation performed.' NULL ,
	`SysStartTime` DATETIME  DEFAULT NOW() COMMENT 'The start of time based on the system from DML.' NOT NULL ,
	`SysEndTime` DATETIME  DEFAULT NOW() COMMENT 'The end of time based on the system from DML.' NOT NULL ,
	`CustomerId` INTEGER COMMENT 'Unique identifier for customers.' NOT NULL ,
	`CustomerName` VARCHAR(100) COMMENT 'The name of a customer.' NULL ,
	`CustomerAddress1` VARCHAR(50) COMMENT 'The first line of a customer address, that includes the street name.' NULL ,
	`CustomerAddress2` VARCHAR(50) COMMENT 'The second line of a customer address, that includes a possible apartment number.' NULL ,
	`CustomerTown` VARCHAR(50) COMMENT 'The town that the customer is from.' NULL ,
	`CustomerPostalCode` VARCHAR(50) COMMENT 'The postal code of the area that the customer lives in.' NULL ,
	`CountryId` INTEGER COMMENT 'Unique identifier for countries.' NULL ,
	`UserAuthenticatedKey` INTEGER COMMENT 'The identification number of a user, authorizing them to edit entities.' NULL ,
	 CONSTRAINT XPKCustomerHistory PRIMARY KEY  ( `CustomerHistoryId` ASC )
);

CREATE TABLE `Audit.CustomerMarketingInformationHistory`
(
	`CustomerMarketingHistoryId` INTEGER AUTO_INCREMENT  COMMENT 'Unique identifier for the history of customer marketing.' NOT NULL ,
	`TransactionNumber` SMALLINT  DEFAULT 0 COMMENT 'The transaction number for the invoice.' NOT NULL ,
	`IsDeleted` CHAR(1) COMMENT 'A flag to check if a tuple is deleted.' NOT NULL ,
	`DBAction` CHAR(1) COMMENT 'The capitalized initial of the DML operation: I, U, D.' NOT NULL ,
	`Note` VARCHAR(99) CONSTRAINT `CK_Template_ArbitraryText_1560904694` CHECK (`Note` LIKE '%') COMMENT 'The note about the DML operation performed.' NULL ,
	`SysStartTime` DATETIME  DEFAULT NOW() COMMENT 'The start of time based on the system from DML.' NOT NULL ,
	`SysEndTime` DATETIME  DEFAULT NOW() COMMENT 'The end of time based on the system from DML.' NOT NULL ,
	`CustomerMarketingInformationId` integer COMMENT 'Unique identifier for customers.' NOT NULL ,
	`IsCustomerReseller` CHAR(1) COMMENT 'Flag for determining if a customer is a reseller.' NULL ,
	`IsCustomerCreditRisk` CHAR(1) COMMENT 'Flag for determining if a customer is a risk.' NULL ,
	`CustomerSpendCapacity` VARCHAR(25) COMMENT 'The spending capacity of a customer.' NULL ,
	`UserAuthenticatedKey` INTEGER COMMENT 'The identification number of a user, authorizing them to edit entities.' NULL ,
	 CONSTRAINT XPKCustomerMarketingInformationHistory PRIMARY KEY  ( `CustomerMarketingHistoryId` ASC )
)
COMMENT = 'The marketing information of a customer.';

CREATE TABLE `Audit.ManufacturerVehicleMakeHistory`
(
	`ManufacturerVehicleMakeHistoryId` INTEGER AUTO_INCREMENT  COMMENT 'Unique identifier for the history of a make.' NOT NULL ,
	`TransactionNumber` SMALLINT  DEFAULT 0 COMMENT 'The transaction number for the invoice.' NOT NULL ,
	`IsDeleted` CHAR(1) COMMENT 'A flag to check if a tuple is deleted.' NOT NULL ,
	`DBAction` CHAR(1) COMMENT 'The capitalized initial of the DML operation: I, U, D.' NOT NULL ,
	`Note` VARCHAR(99) CONSTRAINT `CK_Template_ArbitraryText_1146593936` CHECK (`Note` LIKE '%') COMMENT 'The note about the DML operation performed.' NULL ,
	`SysStartTime` DATETIME  DEFAULT NOW() COMMENT 'The start of time based on the system from DML.' NOT NULL ,
	`SysEndTime` DATETIME  DEFAULT NOW() COMMENT 'The end of time based on the system from DML.' NOT NULL ,
	`ManufacturerVehicleMakeId` INTEGER COMMENT 'Unique identifier for the vehicle make.' NOT NULL ,
	`ManufacturerVehicleMakeName` VARCHAR(100) COMMENT 'The name of the vehicle''s make.' NULL ,
	`CountryId` INTEGER COMMENT 'Unique identifier for countries.' NULL ,
	`MarketingType` VARCHAR(80) COMMENT 'The marketing type for a vehicle.' NULL ,
	`UserAuthenticatedKey` INTEGER COMMENT 'The identification number of a user, authorizing them to edit entities.' NULL ,
	 CONSTRAINT XPKManufacturerVehicleMakeHistory PRIMARY KEY  ( `ManufacturerVehicleMakeHistoryId` ASC )
);

CREATE TABLE `Audit.ManufacturerVehicleModelHistory`
(
	`ManufacturerVehicleModelHistoryId` INTEGER AUTO_INCREMENT  COMMENT 'Unique identifier for the history of a vehicle.' NOT NULL ,
	`TransactionNumber` SMALLINT  DEFAULT 0 COMMENT 'The transaction number for the invoice.' NOT NULL ,
	`IsDeleted` CHAR(1) COMMENT 'A flag to check if a tuple is deleted.' NOT NULL ,
	`DBAction` CHAR(1) COMMENT 'The capitalized initial of the DML operation: I, U, D.' NOT NULL ,
	`Note` VARCHAR(99) CONSTRAINT `CK_Template_ArbitraryText_1149494931` CHECK (`Note` LIKE '%') COMMENT 'The note about the DML operation performed.' NULL ,
	`SysStartTime` DATETIME  DEFAULT NOW() COMMENT 'The start of time based on the system from DML.' NOT NULL ,
	`SysEndTime` DATETIME  DEFAULT NOW() COMMENT 'The end of time based on the system from DML.' NOT NULL ,
	`ManufacturerVehicleModelId` INTEGER COMMENT 'Unique identifier for the vehicle model.' NOT NULL ,
	`ModelName` VARCHAR(100) COMMENT 'The name of the vehicle''s model.' NULL ,
	`ModelVariant` CHAR(3) COMMENT 'The name of the vehicle''s variant.' NULL ,
	`ManufacturerVehicleMakeId` INTEGER COMMENT 'Unique identifier for the vehicle make.' NULL ,
	`ManufacturerVehicleModelYear` SMALLINT COMMENT 'The year a vehicle make released the particular model.' NULL ,
	`UserAuthenticatedKey` INTEGER COMMENT 'The identification number of a user, authorizing them to edit entities.' NULL ,
	 CONSTRAINT XPKManufacturerVehicleModelHistory PRIMARY KEY  ( `ManufacturerVehicleModelHistoryId` ASC )
);

CREATE TABLE `Audit.ManufacturerVehicleStockHistory`
(
	`ManufacturerVehicleStockHistoryId` INTEGER AUTO_INCREMENT  COMMENT 'Unique identifier for a Vehicle Stock history.' NOT NULL ,
	`TransactionNumber` SMALLINT  DEFAULT 0 COMMENT 'The transaction number for the invoice.' NOT NULL ,
	`IsDeleted` CHAR(1) COMMENT 'A flag to check if a tuple is deleted.' NOT NULL ,
	`DBAction` CHAR(1) COMMENT 'The capitalized initial of the DML operation: I, U, D.' NOT NULL ,
	`Note` VARCHAR(99) CONSTRAINT `CK_Template_ArbitraryText_1234101400` CHECK (`Note` LIKE '%') COMMENT 'The note about the DML operation performed.' NULL ,
	`SysStartTime` DATETIME  DEFAULT NOW() COMMENT 'The start of time based on the system from DML.' NOT NULL ,
	`SysEndTime` DATETIME  DEFAULT NOW() COMMENT 'The end of time based on the system from DML.' NOT NULL ,
	`ManufacturerVehicleStockId` INTEGER COMMENT 'Unique identifier for the total in stock.' NOT NULL ,
	`VehicleStockCode` VARCHAR(50) COMMENT 'The stock code for a vehicle.' NULL ,
	`VehicleCost` DECIMAL(18,2) COMMENT 'The cost for a vehicle.' NULL ,
	`VehicleRepairsCharge` DECIMAL(18,2) COMMENT 'The charge for repairs for a vehicle.' NULL ,
	`VehiclePartsCharge` DECIMAL(18,2) COMMENT 'The charge for parts for a vehicle.' NULL ,
	`VehicleDeliveryCharge` DECIMAL(18,2) COMMENT 'The charge for delivering a vehicle.' NULL ,
	`IsPremiumRoadHandlingPackage` CHAR(1) COMMENT 'A flag to check if this is part of the premium road handling package.' NULL ,
	`VehicleColor` VARCHAR(150) COMMENT 'The color of the vehicle.' NULL ,
	`ManufacturerVehicleModelId` integer COMMENT 'Unique identifier for a manufacturer vehicle model.' NULL ,
	`CustomerComment` VARCHAR(499) COMMENT 'A comment that a customer adds to their order.' NULL ,
	`IsAvailable` boolean  DEFAULT 1 COMMENT 'Marks the car avaliable, unavailable or sold.' NULL ,
	`UserAuthenticatedKey` INTEGER COMMENT 'The identification number of a user, authorizing them to edit entities.' NULL ,
	 CONSTRAINT XPKManufacturerVehicleStockHistory PRIMARY KEY  ( `ManufacturerVehicleStockHistoryId` ASC )
);

CREATE TABLE `Audit.SalesOrderVehicleDetailHistory`
(
	`SalesOrderVehicleDetailHistoryId` INTEGER AUTO_INCREMENT  COMMENT 'Unique identifier for the history of a vehicle.' NOT NULL ,
	`TransactionNumber` SMALLINT  DEFAULT 0 COMMENT 'The transaction number for the invoice.' NOT NULL ,
	`IsDeleted` CHAR(1) COMMENT 'A flag to check if a tuple is deleted.' NOT NULL ,
	`DBAction` CHAR(1) COMMENT 'The capitalized initial of the DML operation: I, U, D.' NOT NULL ,
	`Note` VARCHAR(99) CONSTRAINT `CK_Template_ArbitraryText_1097755280` CHECK (`Note` LIKE '%') COMMENT 'The note about the DML operation performed.' NULL ,
	`SysStartTime` DATETIME  DEFAULT NOW() COMMENT 'The start of time based on the system from DML.' NOT NULL ,
	`SysEndTime` DATETIME  DEFAULT NOW() COMMENT 'The end of time based on the system from DML.' NOT NULL ,
	`SalesOrderVehicleDetailId` INTEGER COMMENT 'Unique identifier for the expanded details of the ordered vehicle.' NOT NULL ,
	`SalesOrderVehicleId` INTEGER COMMENT 'Unique identifier of the ordered vehicle.' NULL ,
	`LineItemNumber` INTEGER COMMENT 'A line in the itemized Vehicle Sales Order Invoice.' NULL ,
	`ManufacturerVehicleId` integer COMMENT 'Unique identifier for the total in stock.' NULL ,
	`SalePrice` DECIMAL(18,2) COMMENT 'The sale price for a vehicle. Includes delivery charge when applicable. Does not include cost of labor for vehicle repairs and parts.' NULL ,
	`LineItemDiscount` DECIMAL(18,2) COMMENT 'The discount given a line item.' NULL ,
	`DiscountedSalePrice` CHAR(18) COMMENT 'The discount given a sale price.' NULL ,
	`UserAuthenticatedKey` INTEGER COMMENT 'The identification number of a user, authorizing them to edit entities.' NULL ,
	 CONSTRAINT XPKSalesOrderVehicleDetailHistory PRIMARY KEY  ( `SalesOrderVehicleDetailHistoryId` ASC )
);

CREATE TABLE `Audit.SalesOrderVehicleHistory`
(
	`SalesOrderVehicleHistoryId` INTEGER AUTO_INCREMENT  COMMENT 'Unique identifier for the total in stock.' NOT NULL ,
	`TransactionNumber` SMALLINT  DEFAULT 0 COMMENT 'The transaction number for the invoice.' NOT NULL ,
	`IsDeleted` CHAR(1) COMMENT 'A flag to check if a tuple is deleted.' NOT NULL ,
	`DBAction` CHAR(1) COMMENT 'The capitalized initial of the DML operation: I, U, D.' NOT NULL ,
	`Note` VARCHAR(99) CONSTRAINT `CK_Template_ArbitraryText_2080569906` CHECK (`Note` LIKE '%') COMMENT 'The note about the DML operation performed.' NULL ,
	`SysStartTime` DATETIME  DEFAULT NOW() COMMENT 'The start of time based on the system from DML.' NOT NULL ,
	`SysEndTime` DATETIME  DEFAULT NOW() COMMENT 'The end of time based on the system from DML.' NOT NULL ,
	`SalesOrderVehicleId` INTEGER COMMENT 'Unique identifier of the ordered vehicle.' NOT NULL ,
	`CustomerId` integer COMMENT 'Unique identifier for a customer.' NULL ,
	`StaffId` integer COMMENT 'Unique identifier for staff members.' NULL ,
	`InvoiceNumber` CHAR(8) COMMENT 'The invoice number for an order.' NULL ,
	`TotalSalePrice` DECIMAL(18,2) COMMENT 'The total sale price after tallying up the order details discounted sale price.' NULL ,
	`SaleOrderDate` DATE COMMENT 'The date that a vehicle was ordered.' NULL ,
	`SalesCategoryDescription` CHAR(18) COMMENT 'The category description of an order.' NULL ,
	`TotalCost` DECIMAL(18,2) COMMENT 'The vehicle manufacturing cost.' NULL ,
	`UserAuthenticatedKey` INTEGER COMMENT 'The identification number of a user, authorizing them to edit entities.' NULL ,
	 CONSTRAINT XPKSalesOrderVehicleHistory PRIMARY KEY  ( `SalesOrderVehicleHistoryId` ASC )
);

CREATE TABLE `Audit.StaffHistory`
(
	`StaffHistoryId` INTEGER AUTO_INCREMENT  COMMENT 'Unique identifier for the history of a staff member.' NOT NULL ,
	`TransactionNumber` SMALLINT  DEFAULT 0 COMMENT 'The transaction number for the invoice.' NOT NULL ,
	`IsDeleted` CHAR(1) COMMENT 'A flag to check if a tuple is deleted.' NOT NULL ,
	`DBAction` CHAR(1) COMMENT 'The capitalized initial of the DML operation: I, U, D.' NOT NULL ,
	`Note` VARCHAR(99) CONSTRAINT `CK_Template_ArbitraryText_1808126094` CHECK (`Note` LIKE '%') COMMENT 'The note about the DML operation performed.' NULL ,
	`SysStartTime` DATETIME  DEFAULT NOW() COMMENT 'The start of time based on the system from DML.' NOT NULL ,
	`SysEndTime` DATETIME  DEFAULT NOW() COMMENT 'The end of time based on the system from DML.' NOT NULL ,
	`StaffId` INTEGER COMMENT 'Unique identifier for staff members.' NOT NULL ,
	`StaffName` VARCHAR(50) COMMENT 'The full name of a staff member.' NULL ,
	`ManagerId` INTEGER COMMENT 'Unique identifier of all managers.' NULL ,
	`DepartmentName` VARCHAR(50) COMMENT 'The department name for a staff member.' NULL ,
	`UserAuthenticatedKey` INTEGER COMMENT 'The identification number of a user, authorizing them to edit entities.' NULL ,
	 CONSTRAINT XPKStaffHistory PRIMARY KEY  ( `StaffHistoryId` ASC )
);

CREATE TABLE `DbSecurity.UserAuthorization`
(
	`UserAuthenticatedKey` INTEGER AUTO_INCREMENT  COMMENT 'The identification number of a user, authorizing them to edit entities.' NOT NULL ,
	`ClassTime` CHAR(5)  DEFAULT '9:15' COMMENT 'The class time that the team is a part of for CSCI381.' NULL ,
	`IndividualProject` VARCHAR(60)  DEFAULT 'CSCI381 Final Group Project' COMMENT 'The project name that this model is for in CSCI381.' NULL ,
	`GroupMemberLastName` VARCHAR(50) CONSTRAINT `CK_Template_StartUpper_182213170` CHECK (ASCII(LEFT(`GroupMemberLastName` , 1)) BETWEEN ASCII('A') and ASCII('Z')) COMMENT 'The last name of a group member.' NOT NULL ,
	`GroupMemberFirstName` VARCHAR(50) CONSTRAINT `CK_Template_StartUpper_408226465` CHECK (ASCII(LEFT(`GroupMemberFirstName` , 1)) BETWEEN ASCII('A') and ASCII('Z')) COMMENT 'The firt name of a group member.' NOT NULL ,
	`GroupName` VARCHAR(100) COMMENT 'The group name, in other words the title.' NOT NULL ,
	`SysStartTime` DATETIME  DEFAULT NOW() COMMENT 'The start of time based on the system from DML.' NULL ,
	`SysEndTime` DATETIME  DEFAULT NOW() COMMENT 'The end of time based on the system from DML.' NULL ,
	 CONSTRAINT XPKUserAuthorization PRIMARY KEY  ( `UserAuthenticatedKey` ASC ),
	CONSTRAINT `XAK1UserAuthorization` UNIQUE  (
	`ClassTime` ASC,
	`GroupName` ASC )
)
COMMENT = 'The authorization of parties involved in the selling & buying of vehicles.';

CREATE TABLE `HumanResources.Staff`
(
	`StaffId` INTEGER AUTO_INCREMENT  COMMENT 'Unique identifier for staff members.' NOT NULL ,
	`ManagerId` INTEGER COMMENT 'Unique identifier of all managers.' NULL ,
	`StaffName` VARCHAR(50) CONSTRAINT `CK_Template_StartUpper_853406715` CHECK (ASCII(LEFT(`StaffName` , 1)) BETWEEN ASCII('A') and ASCII('Z')) COMMENT 'The full name of a staff member.' NOT NULL ,
	`DepartmentName` VARCHAR(50)  DEFAULT 'NA' COMMENT 'The department name for a staff member.' NOT NULL ,
	`Note` VARCHAR(99) CONSTRAINT `CK_Template_ArbitraryText_408105989` CHECK (`Note` LIKE '%') COMMENT 'The note about the DML operation performed.' NULL ,
	`SysStartTime` DATETIME  DEFAULT NOW() COMMENT 'The start of time based on the system from DML.' NULL ,
	`SysEndTime` DATETIME  DEFAULT NOW() COMMENT 'The end of time based on the system from DML.' NULL ,
	`UserAuthenticatedKey` INTEGER COMMENT 'The identification number of a user, authorizing them to edit entities.' NULL ,
	 CONSTRAINT XPKStaff PRIMARY KEY  ( `StaffId` ASC )
)
COMMENT = 'A member of staff, online or at a dealership, who sells vehicles to customers.';

CREATE TABLE `Production.ManufacturerVehicleMake`
(
	`ManufacturerVehicleMakeId` INTEGER AUTO_INCREMENT  COMMENT 'Unique identifier for the vehicle make.' NOT NULL ,
	`ManufacturerVehicleMakeName` VARCHAR(100) CONSTRAINT `CK_Template_StartUpper_109426893` CHECK (ASCII(LEFT(`ManufacturerVehicleMakeName` , 1)) BETWEEN ASCII('A') and ASCII('Z')) COMMENT 'The name of the vehicle''s make.' NOT NULL ,
	`CountryId` INTEGER COMMENT 'Unique identifier for countries.' NOT NULL ,
	`MarketingType` VARCHAR(80)  DEFAULT 'N/A' COMMENT 'The marketing type for a vehicle.' NOT NULL ,
	`Note` VARCHAR(99) CONSTRAINT `CK_Template_ArbitraryText_394622944` CHECK (`Note` LIKE '%') COMMENT 'The note about the DML operation performed.' NULL ,
	`SysStartTime` DATETIME  DEFAULT NOW() COMMENT 'The start of time based on the system from DML.' NULL ,
	`SysEndTime` DATETIME  DEFAULT NOW() COMMENT 'The end of time based on the system from DML.' NULL ,
	`UserAuthenticatedKey` INTEGER COMMENT 'The identification number of a user, authorizing them to edit entities.' NULL ,
	 CONSTRAINT PKMake PRIMARY KEY  ( `ManufacturerVehicleMakeId` ASC ),
	CONSTRAINT `XAK1ManufacturerVehicleMake` UNIQUE  (
	`ManufacturerVehicleMakeName` ASC )
)
COMMENT = 'The brand of manufacturer who makes a vehicle.';

CREATE TABLE `Production.ManufacturerVehicleModel`
(
	`ManufacturerVehicleModelId` INTEGER AUTO_INCREMENT  COMMENT 'Unique identifier for the vehicle model.' NOT NULL ,
	`ManufacturerVehicleMakeId` INTEGER COMMENT 'Unique identifier for the vehicle make.' NULL ,
	`ModelName` VARCHAR(100) CONSTRAINT `CK_Template_StartUpper_1799525853` CHECK (ASCII(LEFT(`ModelName` , 1)) BETWEEN ASCII('A') and ASCII('Z')) COMMENT 'The name of the vehicle''s model.' NOT NULL ,
	`ModelVariant` CHAR(3) CONSTRAINT `CK_Template_StartUpper_371164368` CHECK (ASCII(LEFT(`ModelVariant` , 1)) BETWEEN ASCII('A') and ASCII('Z')) COMMENT 'The name of the vehicle''s variant.' NULL ,
	`ManufacturerVehicleModelYear` SMALLINT  DEFAULT '1999' CONSTRAINT `ValidationRule1561_1426325253` CHECK (`ManufacturerVehicleModelYear` BETWEEN 1801 AND 2155) COMMENT 'The year a vehicle make released the particular model.' NULL ,
	`Note` VARCHAR(99) CONSTRAINT `CK_Template_ArbitraryText_1988193052` CHECK (`Note` LIKE '%') COMMENT 'The note about the DML operation performed.' NULL ,
	`SysStartTime` DATETIME  DEFAULT NOW() COMMENT 'The start of time based on the system from DML.' NULL ,
	`SysEndTime` DATETIME  DEFAULT NOW() COMMENT 'The end of time based on the system from DML.' NULL ,
	`UserAuthenticatedKey` INTEGER COMMENT 'The identification number of a user, authorizing them to edit entities.' NULL ,
	 CONSTRAINT PKModel1 PRIMARY KEY  ( `ManufacturerVehicleModelId` ASC ),
	CONSTRAINT `XAK1ManufacturerVehicleModel` UNIQUE  (
	`ModelName` ASC,
	`ModelVariant` ASC,
	`ManufacturerVehicleModelYear` ASC )
)
COMMENT = 'The model of a vehicle, designed by the manufacturer.';

CREATE TABLE `Production.ManufacturerVehicleStock`
(
	`ManufacturerVehicleStockId` INTEGER AUTO_INCREMENT  COMMENT 'Unique identifier for the total in stock.' NOT NULL ,
	`VehicleStockCode` VARCHAR(50) COMMENT 'The stock code for a vehicle.' NOT NULL ,
	`IsAvailable` boolean  DEFAULT 1 COMMENT 'Marks the car avaliable, unavailable or sold.' NOT NULL ,
	`ManufacturerVehicleModelId` INTEGER COMMENT 'Unique identifier for the vehicle model.' NULL ,
	`IsPremiumRoadHandlingPackage` CHAR(1) COMMENT 'A flag to check if this is part of the premium road handling package.' NOT NULL ,
	`VehicleColor` VARCHAR(150)  DEFAULT 'N/A' COMMENT 'The color of the vehicle.' NOT NULL ,
	`VehicleCost` DECIMAL(18,2)  DEFAULT 0 COMMENT 'The cost for a vehicle.' NOT NULL ,
	`VehicleRepairsCharge` DECIMAL(18,2)  DEFAULT 0 COMMENT 'The charge for repairs for a vehicle.' NOT NULL ,
	`VehiclePartsCharge` DECIMAL(18,2)  DEFAULT 0 COMMENT 'The charge for parts for a vehicle.' NOT NULL ,
	`VehicleDeliveryCharge` DECIMAL(18,2)  DEFAULT 0 COMMENT 'The charge for delivering a vehicle.' NOT NULL ,
	`CustomerComment` VARCHAR(499) CONSTRAINT `CK_Template_ArbitraryText_406135913` CHECK (`CustomerComment` LIKE '%') COMMENT 'A comment that a customer adds to their order.' NULL ,
	`Note` VARCHAR(99) CONSTRAINT `CK_Template_ArbitraryText_2122354655` CHECK (`Note` LIKE '%') COMMENT 'The note about the DML operation performed.' NULL ,
	`SysStartTime` DATETIME  DEFAULT NOW() COMMENT 'The start of time based on the system from DML.' NULL ,
	`SysEndTime` DATETIME  DEFAULT NOW() COMMENT 'The end of time based on the system from DML.' NULL ,
	`UserAuthenticatedKey` INTEGER COMMENT 'The identification number of a user, authorizing them to edit entities.' NULL ,
	 CONSTRAINT PKStock PRIMARY KEY  ( `ManufacturerVehicleStockId` ASC ),
	CONSTRAINT `XAK1ManufacturerVehicleStock` UNIQUE  (
	`VehicleStockCode` ASC )
)
COMMENT = 'A manufactured vehicle with a make & model, and other concrete characteristics; the vehicle a manufacturer has in stock.';

CREATE TABLE `Sales.Country`
(
	`CountryId` INTEGER AUTO_INCREMENT  COMMENT 'Unique identifier for countries.' NOT NULL ,
	`CountryName` CHAR(20) COMMENT 'The country name fully written out in english.' NOT NULL ,
	`CountryISO2` CHAR(2)  DEFAULT 'NA' COMMENT 'ISO2 format of a country, for example US. ' NOT NULL ,
	`CountryISO3` CHAR(3) COMMENT 'ISO3 format of a country, for example USA. ' NOT NULL ,
	`SalesRegion` VARCHAR(20)  DEFAULT 'N/A' COMMENT 'The region that the sales were made in.' NOT NULL ,
	`Note` VARCHAR(99) CONSTRAINT `CK_Template_ArbitraryText_98922759` CHECK (`Note` LIKE '%') COMMENT 'The note about the DML operation performed.' NULL ,
	`SysStartTime` DATETIME  DEFAULT NOW() COMMENT 'The start of time based on the system from DML.' NULL ,
	`SysEndTime` DATETIME  DEFAULT NOW() COMMENT 'The end of time based on the system from DML.' NULL ,
	`UserAuthenticatedKey` INTEGER COMMENT 'The identification number of a user, authorizing them to edit entities.' NULL ,
	 CONSTRAINT PKCountry PRIMARY KEY  ( `CountryId` ASC ),
	CONSTRAINT `XAK1Country` UNIQUE  (
	`CountryName` ASC,
	`CountryISO2` ASC,
	`CountryISO3` ASC )
)
COMMENT = 'The political territory in which vehicles are manufactured, or the vehicle manufacturer is headquartered.';

CREATE TABLE `Sales.Customer`
(
	`CustomerId` INTEGER AUTO_INCREMENT  COMMENT 'Unique identifier for customers.' NOT NULL ,
	`CustomerName` VARCHAR(100) CONSTRAINT `CK_Template_ArbitraryText_213633331` CHECK (`CustomerName` LIKE '%') COMMENT 'The name of a customer.' NOT NULL ,
	`CustomerAddress1` VARCHAR(50) COMMENT 'The first line of a customer address, that includes the street name.' NOT NULL ,
	`CustomerAddress2` VARCHAR(50) COMMENT 'The second line of a customer address, that includes a possible apartment number.' NULL ,
	`CustomerPostalCode` VARCHAR(50)  DEFAULT 'N/A' COMMENT 'The postal code of the area that the customer lives in.' NULL ,
	`CustomerTown` VARCHAR(50)  DEFAULT 'N/A' COMMENT 'The town that the customer is from.' NULL ,
	`CountryId` INTEGER COMMENT 'Unique identifier for countries.' NOT NULL ,
	`Note` VARCHAR(99) CONSTRAINT `CK_Template_ArbitraryText_510808091` CHECK (`Note` LIKE '%') COMMENT 'The note about the DML operation performed.' NULL ,
	`SysStartTime` DATETIME  DEFAULT NOW() COMMENT 'The start of time based on the system from DML.' NULL ,
	`SysEndTime` DATETIME  DEFAULT NOW() COMMENT 'The end of time based on the system from DML.' NULL ,
	`UserAuthenticatedKey` INTEGER COMMENT 'The identification number of a user, authorizing them to edit entities.' NULL ,
	 CONSTRAINT PKCustomer PRIMARY KEY  ( `CustomerId` ASC ),
	CONSTRAINT `XAK1Customer` UNIQUE  (
	`CustomerName` ASC,
	`CustomerAddress1` ASC,
	`CustomerAddress2` ASC )
);

CREATE TABLE `Sales.CustomerMarketingInformation`
(
	`CustomerMarketingInformationId` INTEGER AUTO_INCREMENT  COMMENT 'Unique identifier for customers.' NOT NULL ,
	`IsCustomerReseller` CHAR(1) COMMENT 'Flag for determining if a customer is a reseller.' NOT NULL ,
	`IsCustomerCreditRisk` CHAR(1) COMMENT 'Flag for determining if a customer is a risk.' NOT NULL ,
	`CustomerSpendCapacity` VARCHAR(25) COMMENT 'The spending capacity of a customer.' NOT NULL ,
	`Note` VARCHAR(99) CONSTRAINT `CK_Template_ArbitraryText_429482009` CHECK (`Note` LIKE '%') COMMENT 'The note about the DML operation performed.' NULL ,
	`SysStartTime` DATETIME  DEFAULT NOW() COMMENT 'The start of time based on the system from DML.' NULL ,
	`SysEndTime` DATETIME  DEFAULT NOW() COMMENT 'The end of time based on the system from DML.' NULL ,
	`UserAuthenticatedKey` INTEGER COMMENT 'The identification number of a user, authorizing them to edit entities.' NULL ,
	 CONSTRAINT XPKCustomerMarketingInformation PRIMARY KEY  ( `CustomerMarketingInformationId` ASC )
)
COMMENT = 'The marketing information of a customer.';

CREATE TABLE `Sales.SalesOrderVehicle`
(
	`SalesOrderVehicleId` INTEGER AUTO_INCREMENT  COMMENT 'Unique identifier of the ordered vehicle.' NOT NULL ,
	`CustomerId` INTEGER COMMENT 'Unique identifier for customers.' NOT NULL ,
	`StaffId` INTEGER COMMENT 'Unique identifier for staff members.' NOT NULL ,
	`InvoiceNumber` CHAR(8) COMMENT 'The invoice number for an order.' NOT NULL ,
	`SaleOrderDate` DATE  DEFAULT '1900-01-01' COMMENT 'The date that a vehicle was ordered.' NOT NULL ,
	`TotalSalePrice` DECIMAL(18,2)  DEFAULT 0 COMMENT 'The total sale price after tallying up the order details discounted sale price.' NOT NULL ,
	`TotalCost` DECIMAL(18,2)  DEFAULT 0 COMMENT 'The vehicle manufacturing cost.' NOT NULL ,
	`SalesCategoryDescription` VARCHAR(50) AS ( CASE WHEN TotalSalePrice >= 100 AND TotalSalePrice <= 25000 THEN 'Very Low'  WHEN TotalSalePrice >=25001 AND TotalSalePrice <=50000 THEN 'Low' WHEN TotalSalePrice >=50001 AND TotalSalePrice <=75000 THEN 'Medium' WHEN TotalSalePrice >=75001 AND TotalSalePrice <=100000 THEN 'High' WHEN TotalSalePrice >=100001 AND TotalSalePrice <=150000 THEN 'Very High' WHEN TotalSalePrice >=150001 AND TotalSalePrice <=250000 THEN 'Exceptional' ELSE 'Sales Category has no Description.' END )  COMMENT 'The category description of an order.' NOT NULL ,
	`Note` VARCHAR(99) CONSTRAINT `CK_Template_ArbitraryText_889077742` CHECK (`Note` LIKE '%') COMMENT 'The note about the DML operation performed.' NULL ,
	`SysStartTime` DATETIME  DEFAULT NOW() COMMENT 'The start of time based on the system from DML.' NULL ,
	`SysEndTime` DATETIME  DEFAULT NOW() COMMENT 'The end of time based on the system from DML.' NULL ,
	`UserAuthenticatedKey` INTEGER COMMENT 'The identification number of a user, authorizing them to edit entities.' NULL ,
	 CONSTRAINT XPKSalesOrderVehicle PRIMARY KEY  ( `SalesOrderVehicleId` ASC ),
	CONSTRAINT `XAK1SalesOrderVehicle` UNIQUE  (
	`InvoiceNumber` ASC )
)
COMMENT = 'A customer''s order of a vehicle, processed by staff.';

CREATE TABLE `Sales.SalesOrderVehicleDetail`
(
	`SalesOrderVehicleDetailId` INTEGER AUTO_INCREMENT  COMMENT 'Unique identifier for the expanded details of the ordered vehicle.' NOT NULL ,
	`SalesOrderVehicleId` INTEGER COMMENT 'Unique identifier of the ordered vehicle.' NULL ,
	`LineItemNumber` INTEGER  DEFAULT 0 COMMENT 'A line in the itemized Vehicle Sales Order Invoice.' NOT NULL ,
	`ManufacturerVehicleId` INTEGER COMMENT 'Unique identifier for the total in stock.' NOT NULL ,
	`SalePrice` DECIMAL(18,2)  DEFAULT 0 COMMENT 'The sale price for a vehicle. Includes delivery charge when applicable. Does not include cost of labor for vehicle repairs and parts.' NOT NULL ,
	`LineItemDiscount` DECIMAL(18,2)  DEFAULT 0 COMMENT 'The discount given a line item.' NULL ,
	`DiscountedSalePrice` DECIMAL(18,2) AS ( `SalePrice`-`LineItemDiscount` )  COMMENT 'The discount given a sale price.' NOT NULL ,
	`Note` VARCHAR(99) CONSTRAINT `CK_Template_ArbitraryText_1653405029` CHECK (`Note` LIKE '%') COMMENT 'The note about the DML operation performed.' NULL ,
	`SysStartTime` DATETIME  DEFAULT NOW() COMMENT 'The start of time based on the system from DML.' NULL ,
	`SysEndTime` DATETIME  DEFAULT NOW() COMMENT 'The end of time based on the system from DML.' NULL ,
	`UserAuthenticatedKey` INTEGER COMMENT 'The identification number of a user, authorizing them to edit entities.' NULL ,
	 CONSTRAINT PKSalesDetails PRIMARY KEY  ( `SalesOrderVehicleDetailId` ASC )
)
COMMENT = 'The details of a vehicle sales order.';
