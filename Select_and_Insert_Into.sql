---TO DO from Previous Video---
---Using the [AdventureWorks2019].[Person].[Address] table, Concat the following columns with a comma and space separator and return one column as Full Address
--[AddressLine1], [AddressLine2], [City], [PostalCode]

SELECT CONCAT_WS(', ', [AddressLine1], [AddressLine2], [City], [PostalCode]) as [Full Address]
FROM [AdventureWorks2019].[Person].[Address]




---1---
---SELECT INTO
---Select * Into NEWTable from ExistingTable

select FirstName, MiddleName, LastName, CONCAT_WS(' ', FirstName, MiddleName, LastName) FullName 
Into dbo.People
from [AdventureWorks2019].Person.Person



select FirstName, MiddleName, LastName, CONCAT_WS(' ', FirstName, MiddleName, LastName) FullName 
Into dbo.Person
from [AdventureWorks2019].Person.Person
where BusinessEntityID = 0





---2---
---INSERT INTO
---Insert Into NEWTable Select * from ExistingTable

Insert into [dbo].[Person]
select FirstName, MiddleName, LastName, CONCAT_WS(' ', FirstName, MiddleName, LastName) FullName 
from [AdventureWorks2019].Person.Person




---TO DO---
--CREATE A NEW TABLE Called Employee in your TESTDB with Just the ID, JobTitle and Hiredate
Select * FROM [AdventureWorks2019].HumanResources.Employee