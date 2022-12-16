/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [UserAuthenticatedKey]
      ,[ClassTime]
      ,[IndividualProject]
      ,[GroupMemberLastName]
      ,[GroupMemberFirstName]
      ,[GroupName]
      ,[SysStartTime]
      ,[SysEndTime]
  FROM [EuropeanCarManufacturer].[DbSecurity].[UserAuthorization]
  FOR JSON AUTO, include_null_values