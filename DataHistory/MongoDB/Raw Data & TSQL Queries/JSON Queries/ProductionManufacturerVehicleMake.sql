/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [ManufacturerVehicleMakeId]
      ,[ManufacturerVehicleMakeName]
      ,[CountryId]
      ,[MarketingType]
      ,[Note]
      ,[SysStartTime]
      ,[SysEndTime]
      ,[UserAuthenticatedKey]
  FROM [EuropeanCarManufacturer].[Production].[ManufacturerVehicleMake]
  FOR JSON AUTO, include_null_values