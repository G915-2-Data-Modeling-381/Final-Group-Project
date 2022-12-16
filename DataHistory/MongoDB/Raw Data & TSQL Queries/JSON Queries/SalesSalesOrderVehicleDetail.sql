/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [SalesOrderVehicleDetailId]
      ,[SalesOrderVehicleId]
      ,[LineItemNumber]
      ,[ManufacturerVehicleId]
      ,[SalePrice]
      ,[LineItemDiscount]
      ,[DiscountedSalePrice]
      ,[Note]
      ,[SysStartTime]
      ,[SysEndTime]
      ,[UserAuthenticatedKey]
  FROM [EuropeanCarManufacturer].[Sales].[SalesOrderVehicleDetail]
  FOR JSON AUTO, include_null_values