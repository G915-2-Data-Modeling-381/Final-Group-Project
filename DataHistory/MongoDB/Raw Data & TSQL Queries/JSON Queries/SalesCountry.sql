/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [CountryId]
      ,[CountryName]
      ,[CountryISO2]
      ,[CountryISO3]
      ,[SalesRegion]
      ,[Note]
      ,[SysStartTime]
      ,[SysEndTime]
      ,[UserAuthenticatedKey]
  FROM [EuropeanCarManufacturer].[Sales].[Country]
  FOR JSON AUTO, include_null_values