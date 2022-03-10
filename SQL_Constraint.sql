---METHOD 1---
---Add Constraint with Alter Table Statement

--Primary Key
ALTER TABLE [dbo].[Customer]
ADD CONSTRAINT PK_Customer Primary Key ([CustomerID])

ALTER TABLE [dbo].[Customer]
Alter Column CustomerID int not null


--Unique Key
ALTER TABLE [dbo].[Customer]
Add Unique ([FirstName])


--Foreign Key

---First Add ProductID to Customer Table

ALTER TABLE [dbo].[Customer]
Add ProductID int not null


--Now change ProductID to Primary key by going through these two steps
ALTER TABLE [dbo].[Product]
Alter Column ProductID int not null

ALTER TABLE [dbo].[Product]
Add Constraint PK_Product Primary Key (ProductID)


ALTER TABLE [dbo].[Customer]
Add Constraint FK_Customer_Product Foreign Key ([ProductID]) References [dbo].[Product] ([ProductID])


---METHOD 2---
---Create Table and Constrainst at the same time


DROP TABLE [dbo].[Product]

ALTER TABLE [dbo].[Customer]
Drop Constraint [FK_Customer_Product]  ---Drop PK

DROP TABLE [dbo].[Customer]


CREATE TABLE Customer 
(
	CustomerID int Primary Key,
	ProductID int Unique,
	FirstName Varchar(50) NOT NULL,
	MiddleName Varchar(50) NULL,
	LastName Varchar(100) NOT NULL,
	PhoneNumber Varchar(20) NOT NULL DEFAULT '000-000-0000'

)
DROP TABLE  Customer


CREATE TABLE Customer 
(
	CustomerID int constraint PK_Customer Primary Key,
	ProductID int constraint UQ_Cust_Prod Unique,
	FirstName Varchar(50) NOT NULL,
	MiddleName Varchar(50) NULL,
	LastName Varchar(100) NOT NULL,
	PhoneNumber Varchar(20) NOT NULL DEFAULT '000-000-0000'

)

Insert into Customer (CustomerID, ProductID, FirstName, LastName)
values(1, 1, 'Angelina', 'Frimpong')

select * from Customer


---METHOD 2---
---Create Table and Constrainst at the same time

CREATE TABLE [dbo].[Product](
	[ProductID] int constraint PK_Product Primary Key,
	[ProductName] [varchar](50) NULL,
	[ProductNumber] [varchar](50) NULL,
	[ProductDescription] [varchar](150) NULL,
	[New_Used_Flag] int Default 0


) 
GO


CREATE TABLE Customer 
(
	CustomerID int not null,
	ProductID int not null,
	FirstName Varchar(50) NOT NULL,
	MiddleName Varchar(50) NULL,
	LastName Varchar(100) NOT NULL,
	PhoneNumber Varchar(20) NOT NULL DEFAULT '000-000-0000'

	constraint PK_Customer Primary Key (CustomerID),
	Constraint FK_Customer_Product Foreign Key (ProductID) References [dbo].[Product] (ProductID)

)


--
ALTER TABLE [dbo].[Product]
Add Constraint [CK_Product] CHECK ([ProductID] < 10)


insert into [dbo].[Product] ([ProductID], [ProductName])
values (9, 'Bicycle')


SELECT TOP (1000) [ProductID]
      ,[ProductName]
      ,[ProductNumber]
      ,[ProductDescription]
      ,[New_Used_Flag]
  FROM [TestDB].[dbo].[Product]