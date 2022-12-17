/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [ManufacturerVehicleStockId]
      ,[VehicleStockCode]
      ,[IsAvailable]
      ,[ManufacturerVehicleModelId]
      ,[IsPremiumRoadHandlingPackage]
      ,[VehicleColor]
      ,[VehicleCost]
      ,[VehicleRepairsCharge]
      ,[VehiclePartsCharge]
      ,[VehicleDeliveryCharge]
      ,[CustomerComment]
      ,[Note]
      ,[SysStartTime]
      ,[SysEndTime]
      ,[UserAuthenticatedKey]
  FROM [EuropeanCarManufacturer].[Production].[ManufacturerVehicleStock]
  FOR JSON AUTO, include_null_values