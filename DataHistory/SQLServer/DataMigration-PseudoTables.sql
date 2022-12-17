use ECM_raw;

drop schema if exists NewData;

create schema NewData;

---------

select * from rawdata.Staff;

drop table if exists newdata.Staff;

select StaffId,StaffName,ManagerID,Department DepartmentName
into newdata.Staff
from RawData.staff;

select * from NewData.Staff;
---------

select * from rawdata.country;

drop table if exists newdata.country;

select CountryId, CountryName, CountryISO2, CountryISO3, SalesRegion
into newdata.Country
from RawData.Country c;

update NewData.Country set countryid = 11 where countryiso2='DE';
insert into NewData.country values (4, 'Germany', 'GE', 'GER', 'EMEA');

select * from NewData.Country;


----------

select * from rawdata.Customer;

drop table if exists newdata.Customer;

select cust.CustomerId, cust.CustomerName, CustomerAddress1 , CustomerAddress2, CustomerPostalCode , CustomerTown ,c.CountryId
into NewData.Customer
from RawData.Customer cust, NewData.Country c
where cust.CustomerCountry = c.CountryISO2;

select * from NewData.Customer order by customername;
---------

select * from rawdata.ManufacturerVehicleMake;
select * from ToDissolve.MarketingCategory mc;

drop table if exists newdata.VehicleMake;

select make.ManufacturerVehicleMakeId ManufacturerMakeId, make.ManufacturerVehicleMakeName VehicleMakeName, c.CountryId, mc.MarketingType MarketingType
into newdata.VehicleMake
from NewData.Country c, RawData.ManufacturerVehicleMake make, ToDissolve.MarketingCategory mc 
where c.CountryISO3  = make.ManufacturerVehicleMakeCountry AND mc.MakeName = make.ManufacturerVehicleMakeName;

select * from NewData.VehicleMake;

---------

select * from rawdata.ManufacturerModel;

drop table if exists newdata.VehicleModel;

select *
into newdata.VehicleModel
from RawData.ManufacturerModel;

select * from NewData.VehicleModel;

---------

select * from ToDissolve.MarketingInformation mi;
select * from rawdata.Customer order by CustomerName;

drop table if exists newdata.CustomerMarketingInformation;

select c.CustomerId, c.CustomerName, IsCustomerReseller, IsCustomerCreditRisk, m.SpendCapacity CustomerSpendCapacity
into newdata.CustomerMarketingInformation
from RawData.Customer c, ToDissolve.MarketingInformation m, NewData.country country
where c.CustomerName = m.CustomerName and m.Country = country.CountryISO2 and c.CustomerCountry  = country.CountryISO2  ;

select * from NewData.CustomerMarketingInformation;

---

select * from rawdata.ManufacturerVehicleStock mvs ;

drop table if exists newdata.VehicleStock;

select ManufacturerVehicleStockId, StockCode, ModelID, IsPremiumRoadHandlingPackage, Cost, RepairsCharge, PartsCharge , DeliveryCharge, VehicleColor, CusomerComments
into newdata.VehicleStock
from RawData.ManufacturerVehicleStock s;

select * from NewData.VehicleStock;


------------

select * from rawdata.SalesOrderVehicle sov ;

drop table if exists newdata.SalesOrder;

select SalesOrderVehicleId VehicleOrderId,CustomerId,StaffId,InvoiceNumber,TotalSalePrice,SaleDate
into newdata.SalesOrder
from RawData.SalesOrderVehicle sov ;

select * from NewData.SalesOrder;


---------


select * from RawData.SalesOrderVehicleDetail sovd;

drop table if exists NewData.OrderDetails;

select  od.SalesOrderVehicleDetailId [SalesOrderDetailId], od.SalesOrderVehicleId VehicleOrderId, od.LineItemNumber LineItem,
s.ManufacturerVehicleStockId ManufacturerVehicleId, od.SalePrice, od.LineItemDiscount, od.saleprice-od.LineItemDiscount DerivedDiscountedSalePrice
into NewData.OrderDetails
from 	RawData.SalesOrderVehicleDetail od, RawData.SalesOrderVehicle o, RawData.ManufacturerVehicleStock s 
where 	od.SalesOrderVehicleId = o.salesordervehicleid and od.StockCode = s.StockCode order by od.SalesOrderVehicleDetailId;


select * from newdata.orderdetails order by vehicleorderid;

---------



select c.CustomerName  from NewData.Customer c where CustomerName not like '%^%'