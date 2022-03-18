--Task from Previous Video
--Using AdventureWorks2019, answer the following with Syntax

---Retrieve just ID, Title, Marital status and gender
--1.) Retrieve the list of JobTitles with Development in the name
select BusinessEntityID, JobTitle, MaritalStatus, Gender
from HumanResources.Employee
WHERE JobTitle like '%development%'

---Retrieve just ID, Title and hire date
--2.) Retrieve all jobs with title ending in 'er'
select BusinessEntityID, JobTitle, HireDate
from HumanResources.Employee
WHERE JobTitle like '%er'


select * from [Person].[Person]

select * from [Sales].[vIndividualCustomer]
where CountryRegionName = 'United States'





--1--
--ALIASES assigning a different name
select 
	FirstName as [First Name], 
	MiddleName as 'Middle_Name', 
	LastName Last_Name
from [Sales].[vIndividualCustomer]
where CountryRegionName = 'United States'


--2--
--STUFF ( character_expression , start , length , replaceWith_expression )
--It deletes a specified length of characters in the first string at the start position and then inserts the second string into the first string at the start position.

SELECT STUFF('abcdef', 2, 3, 'mnop');
GO

select FirstName as First_Name, MiddleName as 'Middle_Name', LastName Last_Name, stuff(FirstName, 2, 15, '.'+LastName) as FirstInitial_LastName
from [Person].[Person]



--3--
--REPLACE ( string_expression , string_pattern , string_replacement ) 
--Replaces all occurrences of a specified string value with another string value.

SELECT REPLACE('abcdefghicde','cde','aaa');
GO

SELECT ('This is Angelina')

SELECT REPLACE('This is Angelina', 'Angelina',  'Lina');
GO


--4--
--SUBSTRING ( expression ,start , length ) 
--Returns part of a character, binary, text, or image expression in SQL Server.

select FirstName, MiddleName, LastName, SUBSTRING(FirstName, 1, 1) First_Name_Initial, SUBSTRING(FirstName, 2, 4) Substring_Rest_of_Name
from [Person].[Person]



--5--
--CONCAT ( string_value1, string_value2 [, string_valueN ] ) 
--This function returns a string resulting from the concatenation, or joining, of two or more string values in an end-to-end manner. (To add a separating value during concatenation, see [CONCAT_WS](https://docs.microsoft.com/en-us/sql/t-sql/functions/concat-ws-transact-sql?view=sql-server-ver15).)

--Using Plus where there are no values or NULL values, evaluates the entire string to NULL. So be mindful of that
select FirstName,  MiddleName, LastName, FirstName + ' ' + LastName as FullName
from [Person].[Person]

select FirstName,  MiddleName, LastName, CONCAT(FirstName, ' ', MiddleName , ' ' , LastName)  as FullName
from [Person].[Person]


--6--
--CONCAT_WS ( separator, argument1, argument2 [, argumentN]... ) 
select FirstName,  MiddleName, LastName, CONCAT_WS(' ' , FirstName, MiddleName, LastName)  as FullName
from [Person].[Person]



---STRING FUNCTIONS--
--7--
--CHARINDEX ( expressionToFind , expressionToSearch [ , start_location ] ) 
--This function searches for one character expression inside a second character expression, returning the starting position of the first expression if found

select FirstName + LastName as FullName,  CHARINDEX('m', FirstName + LastName)
from [Sales].[vIndividualCustomer]
where CountryRegionName = 'United States'



--8--
--REVERSE ( string_expression ) 
--Returns the reverse order of a string value.

select FirstName , MiddleName, LastName, REVERSE(FirstName) AS Reverse
from [Person].[Person]
WHERE BusinessEntityID < 15


SELECT REVERSE(1234) AS Reversed ;
GO



--9---
--UPPER ( character_expression )  AND LOWER ( character_expression )
--Returns a character expression with lowercase character data converted to uppercase.

select UPPER(FirstName) as FirstName , MiddleName, LOWER(LastName) LastName--, REVERSE(FirstName) AS Reverse
from [Person].[Person]
WHERE BusinessEntityID < 15



--11--
--RIGHT ( character_expression , integer_expression )  AND LEFT
--Returns the right part of a character string with the specified number of characters.
select FirstName , MiddleName, LastName, RIGHT(FirstName, 5) AS 'Right_First_Name', LEFT(FirstName, 5) AS 'Left_First_Name'
from [Person].[Person]
WHERE BusinessEntityID < 15



--13--
--LEN ( character_expression )

--Returns the lenght of the string
select FirstName , MiddleName, LastName, len(FirstName) AS 'Length_of_First_Name', Len(LastName) AS 'Length_of_Last_Name'
from [Sales].[vIndividualCustomer]
where CountryRegionName = 'United States'




---TO DO---
---Using the [AdventureWorks2019].[Person].[Address] table, Concat the following columns with a comma and space separator and return one column as Full Address
--[AddressLine1], [AddressLine2], [City], [PostalCode]

SELECT *
FROM [AdventureWorks2019].[Person].[Address]

