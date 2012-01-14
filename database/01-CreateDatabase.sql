/*
 * SSRS Sales Performance Reports
 * Project #91 - Complete Database Implementation
 * SQL Server 2008/2012
 * Technology: SSRS, MSSQL
 * Created: 2012
 */

USE master;
GO

IF EXISTS (SELECT name FROM sys.databases WHERE name = 'SalesReports')
BEGIN
    ALTER DATABASE SalesReports SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE SalesReports;
END
GO

CREATE DATABASE SalesReports
ON PRIMARY
(
    NAME = 'SalesReports_Data',
    FILENAME = 'C:\SQLData\SalesReports_Data.mdf',
    SIZE = 100MB,
    MAXSIZE = 5GB,
    FILEGROWTH = 10MB
)
LOG ON
(
    NAME = 'SalesReports_Log',
    FILENAME = 'C:\SQLData\SalesReports_Log.ldf',
    SIZE = 50MB,
    MAXSIZE = 1GB,
    FILEGROWTH = 5MB
);
GO

ALTER DATABASE SalesReports SET RECOVERY SIMPLE;
ALTER DATABASE SalesReports SET AUTO_UPDATE_STATISTICS ON;
GO

USE SalesReports;
GO

PRINT 'Database SalesReports created successfully';
PRINT 'Project: SSRS Sales Performance Reports';
PRINT 'Description: Interactive sales reports delivery';
GO
