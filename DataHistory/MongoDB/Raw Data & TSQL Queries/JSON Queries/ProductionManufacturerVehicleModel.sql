/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [ManufacturerVehicleModelId]
      ,[ManufacturerVehicleMakeId]
      ,[ModelName]
      ,[ModelVariant]
      ,[ModelYear]
      ,[Note]
      ,[SysStartTime]
      ,[SysEndTime]
      ,[UserAuthenticatedKey]
  FROM [EuropeanCarManufacturer].[Production].[ManufacturerVehicleModel]
  FOR JSON AUTO, include_null_values