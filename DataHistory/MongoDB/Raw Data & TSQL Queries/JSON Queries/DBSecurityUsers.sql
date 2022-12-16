USE [EuropeanCarManufacturer]
GO

INSERT INTO [DbSecurity].[UserAuthorization]
           ([UserAuthenticatedKey]
           ,[GroupMemberLastName]
           ,[GroupMemberFirstName]
           ,[GroupName])
     VALUES
           (1,'Noa','Adrian','Data Migrater'),
		   (2,'Garcha','Jasminder','Lead Designer & Editor'),
		   (3,'Garcia','Amber','Project Manager & Comments'),
		   (4,'Li','Wade','Support Designer'),
		   (5,'Vidal','Oliver','Video Editor'),
		   (6,'Nehal','Nader','Support Taxonomy')
GO


