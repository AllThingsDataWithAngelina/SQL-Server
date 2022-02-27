---CREATE STATEMENTS---

CREATE DATABASE TestDB;

USE TestDB


--CREATE TABLE TableName 
--(
--	Column1 DataType,
--	Column2 Datatype

--)


CREATE TABLE Product 
(
	
	ProductID int,
	ProductName varchar(50),
	ProductNumber varchar(50),
	ProductDescription varchar(150),
	New_Used_Flag int
);

CREATE TABLE Customer 
(	
	CustomerID int,
	FirstName varchar(50),
	MiddleName varchar(50),
	LastName varchar(50),
	PhoneNumber int
);


CREATE SCHEMA staging;


---ALTER--
---Adding a Column to an existing table---
Alter Table [dbo].[Customer]
Add EmailAddress varchar(100)

---Changing an existing column---
Alter Table [dbo].[Customer]
Alter COlumn PhoneNumber varchar (50)

---Removing an existing column---
Alter Table Customer
Drop Column [MiddleName]

ALter Schema staging transfer dbo.Customer


---DROP STATEMENTS

Drop Table Product

Drop Schema staging
ALter Schema dbo transfer staging.Customer

Drop Table [dbo].[Customer]

