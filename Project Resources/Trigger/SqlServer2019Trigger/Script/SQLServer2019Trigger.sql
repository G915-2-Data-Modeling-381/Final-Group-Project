USE [master]
GO
------/****** Object:  Database [SqlServer2019Trigger]    Script Date: 11/27/2022 9:02:22 AM ******/
------CREATE DATABASE [SqlServer2019Trigger]
------ CONTAINMENT = NONE
------ ON  PRIMARY 
------( NAME = N'SqlServer2019Trigger', FILENAME = N'/var/opt/mssql/data/SqlServer2019Trigger.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
------ LOG ON 
------( NAME = N'SqlServer2019Trigger_log', FILENAME = N'/var/opt/mssql/log/SqlServer2019Trigger_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
------ WITH CATALOG_COLLATION = DATABASE_DEFAULT
------GO
------ALTER DATABASE [SqlServer2019Trigger] SET COMPATIBILITY_LEVEL = 150
------GO
------IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
------begin
------EXEC [SqlServer2019Trigger].[dbo].[sp_fulltext_database] @action = 'enable'
------end
------GO
------ALTER DATABASE [SqlServer2019Trigger] SET ANSI_NULL_DEFAULT OFF 
------GO
------ALTER DATABASE [SqlServer2019Trigger] SET ANSI_NULLS OFF 
------GO
------ALTER DATABASE [SqlServer2019Trigger] SET ANSI_PADDING OFF 
------GO
------ALTER DATABASE [SqlServer2019Trigger] SET ANSI_WARNINGS OFF 
------GO
------ALTER DATABASE [SqlServer2019Trigger] SET ARITHABORT OFF 
------GO
------ALTER DATABASE [SqlServer2019Trigger] SET AUTO_CLOSE OFF 
------GO
------ALTER DATABASE [SqlServer2019Trigger] SET AUTO_SHRINK OFF 
------GO
------ALTER DATABASE [SqlServer2019Trigger] SET AUTO_UPDATE_STATISTICS ON 
------GO
------ALTER DATABASE [SqlServer2019Trigger] SET CURSOR_CLOSE_ON_COMMIT OFF 
------GO
------ALTER DATABASE [SqlServer2019Trigger] SET CURSOR_DEFAULT  GLOBAL 
------GO
------ALTER DATABASE [SqlServer2019Trigger] SET CONCAT_NULL_YIELDS_NULL OFF 
------GO
------ALTER DATABASE [SqlServer2019Trigger] SET NUMERIC_ROUNDABORT OFF 
------GO
------ALTER DATABASE [SqlServer2019Trigger] SET QUOTED_IDENTIFIER OFF 
------GO
------ALTER DATABASE [SqlServer2019Trigger] SET RECURSIVE_TRIGGERS OFF 
------GO
------ALTER DATABASE [SqlServer2019Trigger] SET  DISABLE_BROKER 
------GO
------ALTER DATABASE [SqlServer2019Trigger] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
------GO
------ALTER DATABASE [SqlServer2019Trigger] SET DATE_CORRELATION_OPTIMIZATION OFF 
------GO
------ALTER DATABASE [SqlServer2019Trigger] SET TRUSTWORTHY OFF 
------GO
------ALTER DATABASE [SqlServer2019Trigger] SET ALLOW_SNAPSHOT_ISOLATION OFF 
------GO
------ALTER DATABASE [SqlServer2019Trigger] SET PARAMETERIZATION SIMPLE 
------GO
------ALTER DATABASE [SqlServer2019Trigger] SET READ_COMMITTED_SNAPSHOT OFF 
------GO
------ALTER DATABASE [SqlServer2019Trigger] SET HONOR_BROKER_PRIORITY OFF 
------GO
------ALTER DATABASE [SqlServer2019Trigger] SET RECOVERY FULL 
------GO
------ALTER DATABASE [SqlServer2019Trigger] SET  MULTI_USER 
------GO
------ALTER DATABASE [SqlServer2019Trigger] SET PAGE_VERIFY CHECKSUM  
------GO
------ALTER DATABASE [SqlServer2019Trigger] SET DB_CHAINING OFF 
------GO
------ALTER DATABASE [SqlServer2019Trigger] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
------GO
------ALTER DATABASE [SqlServer2019Trigger] SET TARGET_RECOVERY_TIME = 60 SECONDS 
------GO
------ALTER DATABASE [SqlServer2019Trigger] SET DELAYED_DURABILITY = DISABLED 
------GO
------ALTER DATABASE [SqlServer2019Trigger] SET ACCELERATED_DATABASE_RECOVERY = OFF  
------GO
------EXEC sys.sp_db_vardecimal_storage_format N'SqlServer2019Trigger', N'ON'
------GO
------ALTER DATABASE [SqlServer2019Trigger] SET QUERY_STORE = OFF
------GO
------USE [SqlServer2019Trigger]
------GO
/****** Object:  Schema [Audit]    Script Date: 11/27/2022 9:02:22 AM ******/
CREATE SCHEMA [Audit]
GO
/****** Object:  Schema [dBlob]    Script Date: 11/27/2022 9:02:22 AM ******/
CREATE SCHEMA [dBlob]
GO
/****** Object:  Schema [dDatetime]    Script Date: 11/27/2022 9:02:22 AM ******/
CREATE SCHEMA [dDatetime]
GO
/****** Object:  Schema [dNumber]    Script Date: 11/27/2022 9:02:22 AM ******/
CREATE SCHEMA [dNumber]
GO
/****** Object:  Schema [dRoot]    Script Date: 11/27/2022 9:02:22 AM ******/
CREATE SCHEMA [dRoot]
GO
/****** Object:  Schema [dString]    Script Date: 11/27/2022 9:02:22 AM ******/
CREATE SCHEMA [dString]
GO
/****** Object:  Schema [HumanResources]    Script Date: 11/27/2022 9:02:22 AM ******/
CREATE SCHEMA [HumanResources]
GO
/****** Object:  Schema [Inventory]    Script Date: 11/27/2022 9:02:22 AM ******/
CREATE SCHEMA [Inventory]
GO
/****** Object:  Schema [Location]    Script Date: 11/27/2022 9:02:22 AM ******/
CREATE SCHEMA [Location]
GO
/****** Object:  Schema [Rentor]    Script Date: 11/27/2022 9:02:22 AM ******/
CREATE SCHEMA [Rentor]
GO
/****** Object:  Schema [Rules]    Script Date: 11/27/2022 9:02:22 AM ******/
CREATE SCHEMA [Rules]
GO
/****** Object:  Schema [Sales]    Script Date: 11/27/2022 9:02:22 AM ******/
CREATE SCHEMA [Sales]
GO
/****** Object:  Schema [sdAddressesString]    Script Date: 11/27/2022 9:02:22 AM ******/
CREATE SCHEMA [sdAddressesString]
GO
/****** Object:  Schema [sdDescriptionsString]    Script Date: 11/27/2022 9:02:22 AM ******/
CREATE SCHEMA [sdDescriptionsString]
GO
/****** Object:  Schema [sdDV2String]    Script Date: 11/27/2022 9:02:22 AM ******/
CREATE SCHEMA [sdDV2String]
GO
/****** Object:  Schema [sdInternetsString]    Script Date: 11/27/2022 9:02:22 AM ******/
CREATE SCHEMA [sdInternetsString]
GO
/****** Object:  Schema [sdJobsString]    Script Date: 11/27/2022 9:02:22 AM ******/
CREATE SCHEMA [sdJobsString]
GO
/****** Object:  Schema [sdKeysNumber]    Script Date: 11/27/2022 9:02:22 AM ******/
CREATE SCHEMA [sdKeysNumber]
GO
/****** Object:  Schema [sdNamesString]    Script Date: 11/27/2022 9:02:22 AM ******/
CREATE SCHEMA [sdNamesString]
GO
/****** Object:  Schema [sdPIIString]    Script Date: 11/27/2022 9:02:22 AM ******/
CREATE SCHEMA [sdPIIString]
GO
/****** Object:  Schema [sdTelephonesString]    Script Date: 11/27/2022 9:02:22 AM ******/
CREATE SCHEMA [sdTelephonesString]
GO
/****** Object:  Schema [sdTextDatesString]    Script Date: 11/27/2022 9:02:22 AM ******/
CREATE SCHEMA [sdTextDatesString]
GO
/****** Object:  Schema [Staff]    Script Date: 11/27/2022 9:02:22 AM ******/
CREATE SCHEMA [Staff]
GO
/****** Object:  Schema [SystemVersioned]    Script Date: 11/27/2022 9:02:22 AM ******/
CREATE SCHEMA [SystemVersioned]
GO
/****** Object:  Schema [Triggered]    Script Date: 11/27/2022 9:02:22 AM ******/
CREATE SCHEMA [Triggered]
GO
/****** Object:  Schema [Udt]    Script Date: 11/27/2022 9:02:22 AM ******/
CREATE SCHEMA [Udt]
GO
/****** Object:  Schema [Utils]    Script Date: 11/27/2022 9:02:22 AM ******/
CREATE SCHEMA [Utils]
GO
/****** Object:  UserDefinedDataType [dbo].[ChoiceList1]    Script Date: 11/27/2022 9:02:22 AM ******/
CREATE TYPE [dbo].[ChoiceList1] FROM [char](1) NULL
GO
/****** Object:  UserDefinedDataType [dbo].[Department]    Script Date: 11/27/2022 9:02:22 AM ******/
CREATE TYPE [dbo].[Department] FROM [varchar](50) NULL
GO
/****** Object:  UserDefinedDataType [dbo].[dtTimestamp1]    Script Date: 11/27/2022 9:02:22 AM ******/
CREATE TYPE [dbo].[dtTimestamp1] FROM [datetime] NULL
GO
/****** Object:  UserDefinedDataType [dbo].[FullName]    Script Date: 11/27/2022 9:02:22 AM ******/
CREATE TYPE [dbo].[FullName] FROM [varchar](45) NULL
GO
/****** Object:  UserDefinedDataType [dbo].[IsFlagChar1]    Script Date: 11/27/2022 9:02:22 AM ******/
CREATE TYPE [dbo].[IsFlagChar1] FROM [char](1) NULL
GO
/****** Object:  UserDefinedDataType [dbo].[Note]    Script Date: 11/27/2022 9:02:22 AM ******/
CREATE TYPE [dbo].[Note] FROM [varchar](200) NULL
GO
/****** Object:  UserDefinedDataType [dbo].[sdDateTime]    Script Date: 11/27/2022 9:02:22 AM ******/
CREATE TYPE [dbo].[sdDateTime] FROM [datetime] NULL
GO
/****** Object:  UserDefinedDataType [dbo].[sdNumber]    Script Date: 11/27/2022 9:02:22 AM ******/
CREATE TYPE [dbo].[sdNumber] FROM [int] NULL
GO
/****** Object:  UserDefinedDataType [dDatetime].[dtTimestamp2]    Script Date: 11/27/2022 9:02:22 AM ******/
CREATE TYPE [dDatetime].[dtTimestamp2] FROM [datetime2](7) NULL
GO
/****** Object:  UserDefinedDataType [dDatetime].[dtYYYYMMDD]    Script Date: 11/27/2022 9:02:22 AM ******/
CREATE TYPE [dDatetime].[dtYYYYMMDD] FROM [date] NULL
GO
/****** Object:  UserDefinedDataType [dNumber].[Counter]    Script Date: 11/27/2022 9:02:22 AM ******/
CREATE TYPE [dNumber].[Counter] FROM [int] NOT NULL
GO
/****** Object:  UserDefinedDataType [dNumber].[Currency]    Script Date: 11/27/2022 9:02:22 AM ******/
CREATE TYPE [dNumber].[Currency] FROM [int] NULL
GO
/****** Object:  UserDefinedDataType [dString].[sdAddressesString]    Script Date: 11/27/2022 9:02:22 AM ******/
CREATE TYPE [dString].[sdAddressesString] FROM [varchar](20) NULL
GO
/****** Object:  UserDefinedDataType [dString].[sdDescriptionsString]    Script Date: 11/27/2022 9:02:22 AM ******/
CREATE TYPE [dString].[sdDescriptionsString] FROM [varchar](20) NULL
GO
/****** Object:  UserDefinedDataType [dString].[sdInternetsString]    Script Date: 11/27/2022 9:02:22 AM ******/
CREATE TYPE [dString].[sdInternetsString] FROM [varchar](20) NULL
GO
/****** Object:  UserDefinedDataType [dString].[sdJobsString]    Script Date: 11/27/2022 9:02:22 AM ******/
CREATE TYPE [dString].[sdJobsString] FROM [varchar](20) NULL
GO
/****** Object:  UserDefinedDataType [dString].[sdNamesString]    Script Date: 11/27/2022 9:02:22 AM ******/
CREATE TYPE [dString].[sdNamesString] FROM [varchar](25) NULL
GO
/****** Object:  UserDefinedDataType [dString].[sdPIIString]    Script Date: 11/27/2022 9:02:22 AM ******/
CREATE TYPE [dString].[sdPIIString] FROM [varchar](20) NULL
GO
/****** Object:  UserDefinedDataType [dString].[sdTelephonesString]    Script Date: 11/27/2022 9:02:22 AM ******/
CREATE TYPE [dString].[sdTelephonesString] FROM [varchar](20) NULL
GO
/****** Object:  UserDefinedDataType [dString].[sdTextDatesString]    Script Date: 11/27/2022 9:02:22 AM ******/
CREATE TYPE [dString].[sdTextDatesString] FROM [char](8) NULL
GO
/****** Object:  UserDefinedDataType [sdAddressesString].[Address]    Script Date: 11/27/2022 9:02:22 AM ******/
CREATE TYPE [sdAddressesString].[Address] FROM [varchar](20) NULL
GO
/****** Object:  UserDefinedDataType [sdAddressesString].[City]    Script Date: 11/27/2022 9:02:22 AM ******/
CREATE TYPE [sdAddressesString].[City] FROM [varchar](20) NULL
GO
/****** Object:  UserDefinedDataType [sdAddressesString].[State]    Script Date: 11/27/2022 9:02:22 AM ******/
CREATE TYPE [sdAddressesString].[State] FROM [varchar](20) NULL
GO
/****** Object:  UserDefinedDataType [sdAddressesString].[ZipCode]    Script Date: 11/27/2022 9:02:22 AM ******/
CREATE TYPE [sdAddressesString].[ZipCode] FROM [varchar](20) NULL
GO
/****** Object:  UserDefinedDataType [sdDescriptionsString].[ChoiceList2]    Script Date: 11/27/2022 9:02:22 AM ******/
CREATE TYPE [sdDescriptionsString].[ChoiceList2] FROM [char](2) NULL
GO
/****** Object:  UserDefinedDataType [sdDescriptionsString].[ChoiceList3]    Script Date: 11/27/2022 9:02:22 AM ******/
CREATE TYPE [sdDescriptionsString].[ChoiceList3] FROM [char](3) NULL
GO
/****** Object:  UserDefinedDataType [sdDescriptionsString].[LongDescription75]    Script Date: 11/27/2022 9:02:22 AM ******/
CREATE TYPE [sdDescriptionsString].[LongDescription75] FROM [varchar](75) NULL
GO
/****** Object:  UserDefinedDataType [sdDescriptionsString].[ShortDescription20]    Script Date: 11/27/2022 9:02:22 AM ******/
CREATE TYPE [sdDescriptionsString].[ShortDescription20] FROM [varchar](20) NULL
GO
/****** Object:  UserDefinedDataType [sdDescriptionsString].[SingleCharacter]    Script Date: 11/27/2022 9:02:22 AM ******/
CREATE TYPE [sdDescriptionsString].[SingleCharacter] FROM [char](1) NULL
GO
/****** Object:  UserDefinedDataType [sdInternetsString].[URL]    Script Date: 11/27/2022 9:02:22 AM ******/
CREATE TYPE [sdInternetsString].[URL] FROM [varchar](80) NULL
GO
/****** Object:  UserDefinedDataType [sdKeysNumber].[sdKeysNumber]    Script Date: 11/27/2022 9:02:22 AM ******/
CREATE TYPE [sdKeysNumber].[sdKeysNumber] FROM [int] NULL
GO
/****** Object:  UserDefinedDataType [sdKeysNumber].[SurrogateKeyInt]    Script Date: 11/27/2022 9:02:22 AM ******/
CREATE TYPE [sdKeysNumber].[SurrogateKeyInt] FROM [int] NULL
GO
/****** Object:  UserDefinedDataType [sdNamesString].[LastName]    Script Date: 11/27/2022 9:02:22 AM ******/
CREATE TYPE [sdNamesString].[LastName] FROM [varchar](30) NULL
GO
/****** Object:  UserDefinedDataType [sdPIIString].[EmailAddress]    Script Date: 11/27/2022 9:02:22 AM ******/
CREATE TYPE [sdPIIString].[EmailAddress] FROM [varchar](80) NULL
GO
/****** Object:  UserDefinedDataType [sdPIIString].[FirstName]    Script Date: 11/27/2022 9:02:22 AM ******/
CREATE TYPE [sdPIIString].[FirstName] FROM [varchar](25) NULL
GO
/****** Object:  UserDefinedDataType [sdPIIString].[SocialSecurityNumber]    Script Date: 11/27/2022 9:02:22 AM ******/
CREATE TYPE [sdPIIString].[SocialSecurityNumber] FROM [char](9) NULL
GO
/****** Object:  UserDefinedDataType [sdTelephonesString].[USATelephone]    Script Date: 11/27/2022 9:02:22 AM ******/
CREATE TYPE [sdTelephonesString].[USATelephone] FROM [char](10) NULL
GO
/****** Object:  UserDefinedDataType [sdTextDatesString].[YYYYMMDD]    Script Date: 11/27/2022 9:02:22 AM ******/
CREATE TYPE [sdTextDatesString].[YYYYMMDD] FROM [char](8) NULL
GO
/****** Object:  Table [Audit].[HumanResourcesEmployeeTriggerHistory]    Script Date: 11/27/2022 9:02:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Audit].[HumanResourcesEmployeeTriggerHistory](
	[HumanResourcesEmployeeTriggerHistoryId] [sdKeysNumber].[SurrogateKeyInt] IDENTITY(1,1) NOT NULL,
	[AuditDateTimeStamp] [dDatetime].[dtYYYYMMDD] NULL,
	[DBAction] [dbo].[ChoiceList1] NULL,
	[EmployeeId] [dbo].[sdNumber] NOT NULL,
	[EmployeeFullName] [dbo].[FullName] NOT NULL,
	[Department] [dbo].[Department] NOT NULL,
	[Salary] [dNumber].[Currency] NOT NULL,
	[Note] [dbo].[Note] NULL,
	[TransactionNumber] [dNumber].[Counter] NULL,
	[UserAuthenticatedKey] [sdKeysNumber].[SurrogateKeyInt] NULL,
	[SysStartTime] [dDatetime].[dtTimestamp2] NULL,
	[SysEndTime] [dDatetime].[dtTimestamp2] NULL,
 CONSTRAINT [XPKTestGenericTriggerHistory] PRIMARY KEY CLUSTERED 
(
	[HumanResourcesEmployeeTriggerHistoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [HumanResources].[Employee]    Script Date: 11/27/2022 9:02:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HumanResources].[Employee](
	[EmployeeId] [sdKeysNumber].[SurrogateKeyInt] IDENTITY(1,1) NOT NULL,
	[EmployeeFullName] [dbo].[FullName] NOT NULL,
	[Department] [dbo].[Department] NOT NULL,
	[Salary] [dNumber].[Currency] NOT NULL,
	[Note] [dbo].[Note] NULL,
	[TransactionNumber] [dNumber].[Counter] NOT NULL,
	[UserAuthenticatedKey] [sdKeysNumber].[SurrogateKeyInt] NOT NULL,
	[SysStartTime] [dDatetime].[dtTimestamp2] NOT NULL,
	[SysEndTime] [dDatetime].[dtTimestamp2] NOT NULL,
 CONSTRAINT [XPKMyTable] PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [Triggered].[uvw_FindAllRowsByHumanResourcesEmployeeId]    Script Date: 11/27/2022 9:02:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create view [Triggered].[uvw_FindAllRowsByHumanResourcesEmployeeId]
as
select CurrentRow.EmployeeId
from [HumanResources].[Employee] as CurrentRow
union
select HistoryRow.EmployeeId
from [Audit].[HumanResourcesEmployeeTriggerHistory]as HistoryRow;
GO
/****** Object:  View [Triggered].[uvw_HumanResourcesEmployeeTransactionAuditTrail]    Script Date: 11/27/2022 9:02:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create view [Triggered].[uvw_HumanResourcesEmployeeTransactionAuditTrail]
as
select 'Current Row' as RecordType,
       null as AuditDateTimeStamp,
       null as DBAction,
       CurrentRow.EmployeeId,
       CurrentRow.EmployeeFullName,
       CurrentRow.Department,
       CurrentRow.Salary,
       CurrentRow.Note,
       CurrentRow.TransactionNumber,
       CurrentRow.UserAuthenticatedKey,
       CurrentRow.SysStartTime,
       CurrentRow.SysEndTime
from HumanResources.Employee as CurrentRow
union
select 'History Row' as RecordType,
       HistoryRow.AuditDateTimeStamp,
       HistoryRow.DBAction,
       HistoryRow.EmployeeId,
       HistoryRow.EmployeeFullName,
       HistoryRow.Department,
       HistoryRow.Salary,
       HistoryRow.Note,
       HistoryRow.TransactionNumber,
       HistoryRow.UserAuthenticatedKey,
       HistoryRow.SysStartTime,
       HistoryRow.SysEndTime
from .[Audit].[HumanResourcesEmployeeTriggerHistory] as HistoryRow;
GO
/****** Object:  UserDefinedFunction [Triggered].[uitvf_HumanResourcesEmployeeTransactionAuditTrail]    Script Date: 11/27/2022 9:02:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



create function [Triggered].[uitvf_HumanResourcesEmployeeTransactionAuditTrail]
(
    @EmployeeId int
)
returns table
as
return
(
    with TransactionAuditTrail
    as (select 'Current Row' as RecordType,
       null as AuditDateTimeStamp,
       null as DBAction,
       CurrentRow.EmployeeId,
       CurrentRow.EmployeeFullName,
       CurrentRow.Department,
       CurrentRow.Salary,
       CurrentRow.Note,
       CurrentRow.TransactionNumber,
       CurrentRow.UserAuthenticatedKey,
       CurrentRow.SysStartTime,
       CurrentRow.SysEndTime
from HumanResources.Employee as CurrentRow
where CurrentRow.EmployeeId = @EmployeeId
union
select 'History Row' as RecordType,
       HistoryRow.AuditDateTimeStamp,
       HistoryRow.DBAction,
       HistoryRow.EmployeeId,
       HistoryRow.EmployeeFullName,
       HistoryRow.Department,
       HistoryRow.Salary,
       HistoryRow.Note,
       HistoryRow.TransactionNumber,
       HistoryRow.UserAuthenticatedKey,
       HistoryRow.SysStartTime,
       HistoryRow.SysEndTime
from [Audit].[HumanResourcesEmployeeTriggerHistory] as HistoryRow
where HistoryRow.EmployeeId = @EmployeeId
)
    select TransactionAuditTrail.RecordType,
           TransactionAuditTrail.AuditDateTimeStamp,
           TransactionAuditTrail.DBAction,
           TransactionAuditTrail.EmployeeId,
           TransactionAuditTrail.EmployeeFullName,
           TransactionAuditTrail.Department,
           TransactionAuditTrail.Salary,
           TransactionAuditTrail.Note,
           TransactionAuditTrail.TransactionNumber,
           TransactionAuditTrail.UserAuthenticatedKey,
           TransactionAuditTrail.SysStartTime,
           TransactionAuditTrail.SysEndTime		
    from TransactionAuditTrail
);

GO
SET IDENTITY_INSERT [Audit].[HumanResourcesEmployeeTriggerHistory] ON 
GO
INSERT [Audit].[HumanResourcesEmployeeTriggerHistory] ([HumanResourcesEmployeeTriggerHistoryId], [AuditDateTimeStamp], [DBAction], [EmployeeId], [EmployeeFullName], [Department], [Salary], [Note], [TransactionNumber], [UserAuthenticatedKey], [SysStartTime], [SysEndTime]) VALUES (1, CAST(N'2022-11-17' AS Date), N'U', 1, N'Peter Heller', N'Computer Science', 95000, N'Initial record insert', 1, 1, CAST(N'2022-11-17T19:35:19.2655847' AS DateTime2), CAST(N'2022-11-17T19:35:39.3171295' AS DateTime2))
GO
INSERT [Audit].[HumanResourcesEmployeeTriggerHistory] ([HumanResourcesEmployeeTriggerHistoryId], [AuditDateTimeStamp], [DBAction], [EmployeeId], [EmployeeFullName], [Department], [Salary], [Note], [TransactionNumber], [UserAuthenticatedKey], [SysStartTime], [SysEndTime]) VALUES (2, CAST(N'2022-11-17' AS Date), N'U', 1, N'Peter Heller', N'Computer Science', 100000, N'More money', 2, 1, CAST(N'2022-11-17T19:35:39.3171295' AS DateTime2), CAST(N'2022-11-17T19:35:39.3212312' AS DateTime2))
GO
INSERT [Audit].[HumanResourcesEmployeeTriggerHistory] ([HumanResourcesEmployeeTriggerHistoryId], [AuditDateTimeStamp], [DBAction], [EmployeeId], [EmployeeFullName], [Department], [Salary], [Note], [TransactionNumber], [UserAuthenticatedKey], [SysStartTime], [SysEndTime]) VALUES (3, CAST(N'2022-11-17' AS Date), N'U', 1, N'Peter Heller', N'Philosophy', 100000, N'No Message Transaction Number: 3', 3, 1, CAST(N'2022-11-17T19:35:39.3212312' AS DateTime2), CAST(N'2022-11-17T19:35:39.3253332' AS DateTime2))
GO
INSERT [Audit].[HumanResourcesEmployeeTriggerHistory] ([HumanResourcesEmployeeTriggerHistoryId], [AuditDateTimeStamp], [DBAction], [EmployeeId], [EmployeeFullName], [Department], [Salary], [Note], [TransactionNumber], [UserAuthenticatedKey], [SysStartTime], [SysEndTime]) VALUES (4, CAST(N'2022-11-17' AS Date), N'U', 2, N'Fred Flintstone', N'Computer Science', 15000, N'Initial record insert', 1, 1, CAST(N'2022-11-17T19:35:39.3294211' AS DateTime2), CAST(N'2022-11-17T19:35:39.3294211' AS DateTime2))
GO
INSERT [Audit].[HumanResourcesEmployeeTriggerHistory] ([HumanResourcesEmployeeTriggerHistoryId], [AuditDateTimeStamp], [DBAction], [EmployeeId], [EmployeeFullName], [Department], [Salary], [Note], [TransactionNumber], [UserAuthenticatedKey], [SysStartTime], [SysEndTime]) VALUES (5, CAST(N'2022-11-17' AS Date), N'U', 2, N'Fred Flintstone', N'Slate Rock Quarry', 15000, N'Corrected wrong department', 2, 1, CAST(N'2022-11-17T19:35:39.3294211' AS DateTime2), CAST(N'2022-11-17T19:36:40.0090978' AS DateTime2))
GO
INSERT [Audit].[HumanResourcesEmployeeTriggerHistory] ([HumanResourcesEmployeeTriggerHistoryId], [AuditDateTimeStamp], [DBAction], [EmployeeId], [EmployeeFullName], [Department], [Salary], [Note], [TransactionNumber], [UserAuthenticatedKey], [SysStartTime], [SysEndTime]) VALUES (6, CAST(N'2022-11-17' AS Date), N'U', 2, N'Fred Flintstone', N'Slate Rock Quarry', 15000, N'Corrected wrong department', 3, 1, CAST(N'2022-11-17T19:36:40.0090978' AS DateTime2), CAST(N'2022-11-17T19:36:40.0949707' AS DateTime2))
GO
INSERT [Audit].[HumanResourcesEmployeeTriggerHistory] ([HumanResourcesEmployeeTriggerHistoryId], [AuditDateTimeStamp], [DBAction], [EmployeeId], [EmployeeFullName], [Department], [Salary], [Note], [TransactionNumber], [UserAuthenticatedKey], [SysStartTime], [SysEndTime]) VALUES (7, CAST(N'2022-11-17' AS Date), N'U', 2, N'Fred Flintstone', N'Slate Rock Quarry', 15000, N'Corrected wrong department', 4, 1, CAST(N'2022-11-17T19:36:40.0949707' AS DateTime2), CAST(N'2022-11-17T19:36:40.1072292' AS DateTime2))
GO
INSERT [Audit].[HumanResourcesEmployeeTriggerHistory] ([HumanResourcesEmployeeTriggerHistoryId], [AuditDateTimeStamp], [DBAction], [EmployeeId], [EmployeeFullName], [Department], [Salary], [Note], [TransactionNumber], [UserAuthenticatedKey], [SysStartTime], [SysEndTime]) VALUES (8, CAST(N'2022-11-17' AS Date), N'U', 2, N'Fred Flintstone', N'Slate Rock Quarry', 15000, N'Corrected wrong department', 5, 1, CAST(N'2022-11-17T19:36:40.1072292' AS DateTime2), CAST(N'2022-11-17T19:36:40.1154218' AS DateTime2))
GO
INSERT [Audit].[HumanResourcesEmployeeTriggerHistory] ([HumanResourcesEmployeeTriggerHistoryId], [AuditDateTimeStamp], [DBAction], [EmployeeId], [EmployeeFullName], [Department], [Salary], [Note], [TransactionNumber], [UserAuthenticatedKey], [SysStartTime], [SysEndTime]) VALUES (9, CAST(N'2022-11-17' AS Date), N'U', 2, N'Fred Flintstone', N'Slate Rock Quarry', 15000, N'Corrected wrong department', 6, 1, CAST(N'2022-11-17T19:36:40.1154218' AS DateTime2), CAST(N'2022-11-17T19:36:40.1235864' AS DateTime2))
GO
INSERT [Audit].[HumanResourcesEmployeeTriggerHistory] ([HumanResourcesEmployeeTriggerHistoryId], [AuditDateTimeStamp], [DBAction], [EmployeeId], [EmployeeFullName], [Department], [Salary], [Note], [TransactionNumber], [UserAuthenticatedKey], [SysStartTime], [SysEndTime]) VALUES (10, CAST(N'2022-11-17' AS Date), N'U', 2, N'Fred Flintstone', N'Slate Rock Quarry', 15000, N'Corrected wrong department', 7, 1, CAST(N'2022-11-17T19:36:40.1235864' AS DateTime2), CAST(N'2022-11-17T19:36:40.1317869' AS DateTime2))
GO
INSERT [Audit].[HumanResourcesEmployeeTriggerHistory] ([HumanResourcesEmployeeTriggerHistoryId], [AuditDateTimeStamp], [DBAction], [EmployeeId], [EmployeeFullName], [Department], [Salary], [Note], [TransactionNumber], [UserAuthenticatedKey], [SysStartTime], [SysEndTime]) VALUES (11, CAST(N'2022-11-17' AS Date), N'U', 2, N'Fred Flintstone', N'Slate Rock Quarry', 15000, N'Corrected wrong department', 8, 1, CAST(N'2022-11-17T19:36:40.1317869' AS DateTime2), CAST(N'2022-11-17T19:36:40.1358863' AS DateTime2))
GO
INSERT [Audit].[HumanResourcesEmployeeTriggerHistory] ([HumanResourcesEmployeeTriggerHistoryId], [AuditDateTimeStamp], [DBAction], [EmployeeId], [EmployeeFullName], [Department], [Salary], [Note], [TransactionNumber], [UserAuthenticatedKey], [SysStartTime], [SysEndTime]) VALUES (12, CAST(N'2022-11-17' AS Date), N'U', 2, N'Fred Flintstone', N'Slate Rock Quarry', 15000, N'Corrected wrong department', 9, 1, CAST(N'2022-11-17T19:36:40.1358863' AS DateTime2), CAST(N'2022-11-17T19:36:40.1440625' AS DateTime2))
GO
INSERT [Audit].[HumanResourcesEmployeeTriggerHistory] ([HumanResourcesEmployeeTriggerHistoryId], [AuditDateTimeStamp], [DBAction], [EmployeeId], [EmployeeFullName], [Department], [Salary], [Note], [TransactionNumber], [UserAuthenticatedKey], [SysStartTime], [SysEndTime]) VALUES (13, CAST(N'2022-11-17' AS Date), N'U', 2, N'Fred Flintstone', N'Slate Rock Quarry', 15000, N'Corrected wrong department', 10, 1, CAST(N'2022-11-17T19:36:40.1440625' AS DateTime2), CAST(N'2022-11-17T19:36:40.1522395' AS DateTime2))
GO
INSERT [Audit].[HumanResourcesEmployeeTriggerHistory] ([HumanResourcesEmployeeTriggerHistoryId], [AuditDateTimeStamp], [DBAction], [EmployeeId], [EmployeeFullName], [Department], [Salary], [Note], [TransactionNumber], [UserAuthenticatedKey], [SysStartTime], [SysEndTime]) VALUES (14, CAST(N'2022-11-17' AS Date), N'U', 2, N'Fred Flintstone', N'Slate Rock Quarry', 15000, N'Corrected wrong department', 11, 1, CAST(N'2022-11-17T19:36:40.1522395' AS DateTime2), CAST(N'2022-11-17T19:36:40.1563288' AS DateTime2))
GO
INSERT [Audit].[HumanResourcesEmployeeTriggerHistory] ([HumanResourcesEmployeeTriggerHistoryId], [AuditDateTimeStamp], [DBAction], [EmployeeId], [EmployeeFullName], [Department], [Salary], [Note], [TransactionNumber], [UserAuthenticatedKey], [SysStartTime], [SysEndTime]) VALUES (15, CAST(N'2022-11-17' AS Date), N'U', 6, N'Dick Dastardly', N'Computer Science', 15000, N'Initial record insert', 1, 1, CAST(N'2022-11-17T19:39:02.9866774' AS DateTime2), CAST(N'2022-11-17T19:39:45.9146796' AS DateTime2))
GO
INSERT [Audit].[HumanResourcesEmployeeTriggerHistory] ([HumanResourcesEmployeeTriggerHistoryId], [AuditDateTimeStamp], [DBAction], [EmployeeId], [EmployeeFullName], [Department], [Salary], [Note], [TransactionNumber], [UserAuthenticatedKey], [SysStartTime], [SysEndTime]) VALUES (16, CAST(N'2022-11-17' AS Date), N'U', 5, N'Mutley', N'Computer Science', 15000, N'Initial record insert', 1, 1, CAST(N'2022-11-17T19:38:43.3243446' AS DateTime2), CAST(N'2022-11-17T19:39:45.9146796' AS DateTime2))
GO
INSERT [Audit].[HumanResourcesEmployeeTriggerHistory] ([HumanResourcesEmployeeTriggerHistoryId], [AuditDateTimeStamp], [DBAction], [EmployeeId], [EmployeeFullName], [Department], [Salary], [Note], [TransactionNumber], [UserAuthenticatedKey], [SysStartTime], [SysEndTime]) VALUES (17, CAST(N'2022-11-17' AS Date), N'U', 4, N'Snaggle Puss', N'Computer Science', 15000, N'Initial record insert', 1, 1, CAST(N'2022-11-17T19:38:03.6802209' AS DateTime2), CAST(N'2022-11-17T19:39:45.9146796' AS DateTime2))
GO
INSERT [Audit].[HumanResourcesEmployeeTriggerHistory] ([HumanResourcesEmployeeTriggerHistoryId], [AuditDateTimeStamp], [DBAction], [EmployeeId], [EmployeeFullName], [Department], [Salary], [Note], [TransactionNumber], [UserAuthenticatedKey], [SysStartTime], [SysEndTime]) VALUES (18, CAST(N'2022-11-17' AS Date), N'U', 3, N'Wilma Flintstone', N'Computer Science', 15000, N'Initial record insert', 1, 1, CAST(N'2022-11-17T19:37:17.8847391' AS DateTime2), CAST(N'2022-11-17T19:39:45.9146796' AS DateTime2))
GO
INSERT [Audit].[HumanResourcesEmployeeTriggerHistory] ([HumanResourcesEmployeeTriggerHistoryId], [AuditDateTimeStamp], [DBAction], [EmployeeId], [EmployeeFullName], [Department], [Salary], [Note], [TransactionNumber], [UserAuthenticatedKey], [SysStartTime], [SysEndTime]) VALUES (19, CAST(N'2022-11-17' AS Date), N'U', 6, N'Dick Dastardly', N'Slate Rock Quarry', 15000, N'Bulk load', 2, 1, CAST(N'2022-11-17T19:39:45.9146796' AS DateTime2), CAST(N'2022-11-17T19:40:27.9511659' AS DateTime2))
GO
INSERT [Audit].[HumanResourcesEmployeeTriggerHistory] ([HumanResourcesEmployeeTriggerHistoryId], [AuditDateTimeStamp], [DBAction], [EmployeeId], [EmployeeFullName], [Department], [Salary], [Note], [TransactionNumber], [UserAuthenticatedKey], [SysStartTime], [SysEndTime]) VALUES (20, CAST(N'2022-11-17' AS Date), N'U', 5, N'Mutley', N'Slate Rock Quarry', 15000, N'Bulk load', 2, 1, CAST(N'2022-11-17T19:39:45.9146796' AS DateTime2), CAST(N'2022-11-17T19:40:27.9511659' AS DateTime2))
GO
INSERT [Audit].[HumanResourcesEmployeeTriggerHistory] ([HumanResourcesEmployeeTriggerHistoryId], [AuditDateTimeStamp], [DBAction], [EmployeeId], [EmployeeFullName], [Department], [Salary], [Note], [TransactionNumber], [UserAuthenticatedKey], [SysStartTime], [SysEndTime]) VALUES (21, CAST(N'2022-11-17' AS Date), N'U', 4, N'Snaggle Puss', N'Slate Rock Quarry', 15000, N'Bulk load', 2, 1, CAST(N'2022-11-17T19:39:45.9146796' AS DateTime2), CAST(N'2022-11-17T19:40:27.9511659' AS DateTime2))
GO
INSERT [Audit].[HumanResourcesEmployeeTriggerHistory] ([HumanResourcesEmployeeTriggerHistoryId], [AuditDateTimeStamp], [DBAction], [EmployeeId], [EmployeeFullName], [Department], [Salary], [Note], [TransactionNumber], [UserAuthenticatedKey], [SysStartTime], [SysEndTime]) VALUES (22, CAST(N'2022-11-17' AS Date), N'U', 3, N'Wilma Flintstone', N'Slate Rock Quarry', 15000, N'Bulk load', 2, 1, CAST(N'2022-11-17T19:39:45.9146796' AS DateTime2), CAST(N'2022-11-17T19:40:27.9511659' AS DateTime2))
GO
INSERT [Audit].[HumanResourcesEmployeeTriggerHistory] ([HumanResourcesEmployeeTriggerHistoryId], [AuditDateTimeStamp], [DBAction], [EmployeeId], [EmployeeFullName], [Department], [Salary], [Note], [TransactionNumber], [UserAuthenticatedKey], [SysStartTime], [SysEndTime]) VALUES (23, CAST(N'2022-11-17' AS Date), N'N', 6, N'Dick Dastardly', N'Slate Rock Quarry', 15000, N'Row was deleted', 3, 1, CAST(N'2022-11-17T19:40:27.9511659' AS DateTime2), CAST(N'2022-11-17T19:41:12.7974217' AS DateTime2))
GO
INSERT [Audit].[HumanResourcesEmployeeTriggerHistory] ([HumanResourcesEmployeeTriggerHistoryId], [AuditDateTimeStamp], [DBAction], [EmployeeId], [EmployeeFullName], [Department], [Salary], [Note], [TransactionNumber], [UserAuthenticatedKey], [SysStartTime], [SysEndTime]) VALUES (24, CAST(N'2022-11-17' AS Date), N'N', 5, N'Mutley', N'Slate Rock Quarry', 15000, N'Row was deleted', 3, 1, CAST(N'2022-11-17T19:40:27.9511659' AS DateTime2), CAST(N'2022-11-17T19:41:12.7974217' AS DateTime2))
GO
INSERT [Audit].[HumanResourcesEmployeeTriggerHistory] ([HumanResourcesEmployeeTriggerHistoryId], [AuditDateTimeStamp], [DBAction], [EmployeeId], [EmployeeFullName], [Department], [Salary], [Note], [TransactionNumber], [UserAuthenticatedKey], [SysStartTime], [SysEndTime]) VALUES (25, CAST(N'2022-11-17' AS Date), N'N', 4, N'Snaggle Puss', N'Slate Rock Quarry', 15000, N'Row was deleted', 3, 1, CAST(N'2022-11-17T19:40:27.9511659' AS DateTime2), CAST(N'2022-11-17T19:41:12.7974217' AS DateTime2))
GO
INSERT [Audit].[HumanResourcesEmployeeTriggerHistory] ([HumanResourcesEmployeeTriggerHistoryId], [AuditDateTimeStamp], [DBAction], [EmployeeId], [EmployeeFullName], [Department], [Salary], [Note], [TransactionNumber], [UserAuthenticatedKey], [SysStartTime], [SysEndTime]) VALUES (26, CAST(N'2022-11-17' AS Date), N'N', 3, N'Wilma Flintstone', N'Slate Rock Quarry', 15000, N'Row was deleted', 3, 1, CAST(N'2022-11-17T19:40:27.9511659' AS DateTime2), CAST(N'2022-11-17T19:41:12.7974217' AS DateTime2))
GO
SET IDENTITY_INSERT [Audit].[HumanResourcesEmployeeTriggerHistory] OFF
GO
SET IDENTITY_INSERT [HumanResources].[Employee] ON 
GO
INSERT [HumanResources].[Employee] ([EmployeeId], [EmployeeFullName], [Department], [Salary], [Note], [TransactionNumber], [UserAuthenticatedKey], [SysStartTime], [SysEndTime]) VALUES (1, N'Peter Heller', N'Computer Science', 100000, N'Corrected wrong department', 4, 1, CAST(N'2022-11-17T19:35:39.3253332' AS DateTime2), CAST(N'9999-12-31T00:00:00.0000000' AS DateTime2))
GO
INSERT [HumanResources].[Employee] ([EmployeeId], [EmployeeFullName], [Department], [Salary], [Note], [TransactionNumber], [UserAuthenticatedKey], [SysStartTime], [SysEndTime]) VALUES (2, N'Fred Flintstone', N'Slate Rock Quarry', 15000, N'Corrected wrong department', 12, 1, CAST(N'2022-11-17T19:36:40.1563288' AS DateTime2), CAST(N'9999-12-31T00:00:00.0000000' AS DateTime2))
GO
SET IDENTITY_INSERT [HumanResources].[Employee] OFF
GO
ALTER TABLE [Audit].[HumanResourcesEmployeeTriggerHistory] ADD  CONSTRAINT [DF_EmployeeTriggerHistory_TransactionNumber_one]  DEFAULT ((1)) FOR [TransactionNumber]
GO
ALTER TABLE [HumanResources].[Employee] ADD  CONSTRAINT [DF_Employee_Department]  DEFAULT ('Computer Science') FOR [Department]
GO
ALTER TABLE [HumanResources].[Employee] ADD  CONSTRAINT [DF_Employee_Salary]  DEFAULT ((0)) FOR [Salary]
GO
ALTER TABLE [HumanResources].[Employee] ADD  CONSTRAINT [DF_Employee_Note]  DEFAULT ('Row Inserted') FOR [Note]
GO
ALTER TABLE [HumanResources].[Employee] ADD  CONSTRAINT [DF_Employee_TransactionNumber_One]  DEFAULT ((1)) FOR [TransactionNumber]
GO
ALTER TABLE [HumanResources].[Employee] ADD  CONSTRAINT [DF_Employee_UserAuthenticatedKey]  DEFAULT ((1)) FOR [UserAuthenticatedKey]
GO
ALTER TABLE [HumanResources].[Employee] ADD  CONSTRAINT [DF_Employee_SysStartTime]  DEFAULT (sysdatetime()) FOR [SysStartTime]
GO
ALTER TABLE [HumanResources].[Employee] ADD  CONSTRAINT [DF_Employee_SysEndTime]  DEFAULT ('99991231') FOR [SysEndTime]
GO
/****** Object:  Trigger [HumanResources].[uTDelete_GenrealizedAuditTriggered]    Script Date: 11/27/2022 9:02:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create TRIGGER [HumanResources].[uTDelete_GenrealizedAuditTriggered]
ON [HumanResources].[Employee]
WITH EXECUTE
AS
CALLER
AFTER delete AS
BEGIN
/*
	Update Trigger with upfront intialization for the variables to be inserted into
	the trigger history table
*/
--
--  https://stackoverflow.com/questions/884334/tsql-try-catch-transaction-in-trigger
--
set xact_abort OFF;

BEGIN TRY

    DECLARE @NowTimestamp DATETIME2 = SYSDATETIME();

    ---- Trigger code
	--
	--	Inserting a the prior state of the current row 
	--
	--  after an UPDATE uses the following mapping:
    --	    TestGenericTriggerId,  from d.TestGenericTriggerId,
    --	    EmployeeFullName,      from d.EmployeeFullName,
    --	    Department,            from d.Department,
    --	    Salary,                from d.Salary,
    --	    Note,                  from 'Row was deleted' 
    --	    TransactionNumber,     from d.TransactionNumber,
    --	    UserAuthenticatedKey,  from d.UserAuthenticatedKey,
    --	    SysStartTime,          from d.SysStartTime,
    --	    SysEndTime,            from @NowTimestamp, -- AS SysEndTime
    --	    AuditDateTimeStamp,    from @NowTimestamp,
    --	    DBAction               from 'D'
    --
    INSERT INTO [Audit].[HumanResourcesEmployeeTriggerHistory]
    (
		EmployeeId,
        EmployeeFullName,
        Department,
        Salary,
        Note,
        TransactionNumber,
        UserAuthenticatedKey,
        SysStartTime,
        SysEndTime,
        AuditDateTimeStamp,
        DBAction
    )
select
		d.EmployeeId,
		d.EmployeeFullName,
		d.Department,
		d.Salary,
		'Row was deleted',
		d.TransactionNumber,
		d.UserAuthenticatedKey,
		d.SysStartTime,
		@NowTimestamp, -- AS SysEndTime
		@NowTimestamp,
		'N'
from deleted as d

END TRY
BEGIN CATCH
   SELECT ERROR_MESSAGE() AS [Error Message]
         ,ERROR_LINE() AS ErrorLine
         ,ERROR_NUMBER() AS [Error Number]  
         ,ERROR_SEVERITY() AS [Error Severity]  
         ,ERROR_STATE() AS [Error State]  
END CATCH

END;
GO
ALTER TABLE [HumanResources].[Employee] ENABLE TRIGGER [uTDelete_GenrealizedAuditTriggered]
GO
/****** Object:  Trigger [HumanResources].[uTUpdate_GenrealizedAuditTriggered]    Script Date: 11/27/2022 9:02:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [HumanResources].[uTUpdate_GenrealizedAuditTriggered]
ON [HumanResources].[Employee]
WITH EXECUTE
AS
CALLER
AFTER UPDATE AS
BEGIN
/*
	Update Trigger with upfront intialization for the variables to be inserted into
	the trigger history table
*/
--
--  https://stackoverflow.com/questions/884334/tsql-try-catch-transaction-in-trigger
--
set xact_abort OFF;

BEGIN TRY

    DECLARE @NowTimestamp DATETIME2 = SYSDATETIME();

    ---- Trigger code
	--
	--	Inserting a the prior state of the current row 
	--
	--  after an UPDATE uses the following mapping:
    --	    TestGenericTriggerId,  from d.TestGenericTriggerId,
    --	    EmployeeFullName,      from d.EmployeeFullName,
    --	    Department,            from d.Department,
    --	    Salary,                from d.Salary,
    --	    Note,                  from COALESCE(d.Note, CONCAT('No Message Transaction Number: ', d.TransactionNumber)),
    --	    IsDeleted,             from d.IsDeleted,
    --	    TransactionNumber,     from d.TransactionNumber,
    --	    UserAuthenticatedKey,  from d.UserAuthenticatedKey,
    --	    SysStartTime,          from d.SysStartTime,
    --	    SysEndTime,            from (select new.SysStartTime from Inserted as new where new.TestGenericTriggerId = d.TestGenericTriggerId) , -- AS SysEndTime
    --	    TimestampRowChanged,   from @NowTimestamp,
    --	    AuditDateTimeStamp,    from @NowTimestamp,
    --	    DBAction               from 'U'
    --
    INSERT INTO [Audit].[HumanResourcesEmployeeTriggerHistory]
    (
		EmployeeId,
        EmployeeFullName,
        Department,
        Salary,
        Note,
        TransactionNumber,
        UserAuthenticatedKey,
        SysStartTime,
        SysEndTime,
        AuditDateTimeStamp,
        DBAction
    )
select d.EmployeeId,
       d.EmployeeFullName,
       d.Department,
       d.Salary,
       coalesce(d.Note, concat('No Message Transaction Number: ', d.TransactionNumber)),
       d.TransactionNumber,
       d.UserAuthenticatedKey,
       d.SysStartTime,
       (
           select new.SysStartTime
           from Inserted as new
           where new.EmployeeId = d.EmployeeId
       ), -- AS SysEndTime
       @NowTimestamp,
       'U'
from deleted as d
    inner join Inserted as i
        on i.EmployeeId = d.EmployeeId
           and i.TransactionNumber = d.TransactionNumber + 1;

END TRY
BEGIN CATCH
   SELECT ERROR_MESSAGE() AS [Error Message]
         ,ERROR_LINE() AS ErrorLine
         ,ERROR_NUMBER() AS [Error Number]  
         ,ERROR_SEVERITY() AS [Error Severity]  
         ,ERROR_STATE() AS [Error State]  
END CATCH

END;
GO
ALTER TABLE [HumanResources].[Employee] ENABLE TRIGGER [uTUpdate_GenrealizedAuditTriggered]
GO
USE [master]
GO
ALTER DATABASE [SqlServer2019Trigger] SET  READ_WRITE 
GO
