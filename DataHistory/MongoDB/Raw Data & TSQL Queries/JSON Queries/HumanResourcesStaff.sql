/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [StaffId]
      ,[ManagerId]
      ,[StaffName]
      ,[DepartmentName]
      ,[Note]
      ,[SysStartTime]
      ,[SysEndTime]
      ,[UserAuthenticatedKey]
  FROM [EuropeanCarManufacturer].[HumanResources].[Staff]
  FOR JSON AUTO, include_null_values