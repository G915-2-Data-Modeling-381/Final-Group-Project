/****** Script for SelectTopNRows command from SSMS  ******/
SELECT[CustomerId]
      ,[CustomerName]
      ,[CustomerAddress1]
      ,[CustomerAddress2]
      ,[CustomerPostalCode]
      ,[CustomerTown]
      ,[CountryId]
      ,[Note]
      ,[SysStartTime]
      ,[SysEndTime]
      ,[UserAuthenticatedKey]
  FROM [EuropeanCarManufacturer].[Sales].[Customer]
  FOR JSON AUTO, include_null_values