/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [CustomerMarketingInformationId]
      ,[IsCustomerReseller]
      ,[IsCustomerCreditRisk]
      ,[CustomerSpendCapacity]
      ,[Note]
      ,[SysStartTime]
      ,[SysEndTime]
      ,[UserAuthenticatedKey]
  FROM [EuropeanCarManufacturer].[Sales].[CustomerMarketingInformation]
  FOR JSON AUTO, include_null_values