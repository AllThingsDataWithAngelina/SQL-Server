---WILDCARDS

---First thing we will do is to simply select everything from a table
select * from HumanResources.Employee

--Now we want to select columns from the same table.
select BusinessEntityID, JobTitle, BirthDate, MaritalStatus, Gender, HireDate, SalariedFlag, VacationHours, SickLeaveHours
from HumanResources.Employee




--1--
---Percentage Symbol % (Used to specify the start of the wild card. Beginning of string, end of the string, and anywhere in the string)---
--All JobTitles starting with R 
select BusinessEntityID, JobTitle, BirthDate, MaritalStatus, Gender, HireDate, SalariedFlag, VacationHours, SickLeaveHours
from HumanResources.Employee
where JobTitle like 'R%'

--Ends with R**
select BusinessEntityID, JobTitle, BirthDate, MaritalStatus, Gender, HireDate, SalariedFlag, VacationHours, SickLeaveHours
from HumanResources.Employee
where JobTitle like '%R'

--Contains with Chief**
select BusinessEntityID, JobTitle, BirthDate, MaritalStatus, Gender, HireDate, SalariedFlag, VacationHours, SickLeaveHours
from HumanResources.Employee
where JobTitle like '%Chief%'



--2--
---Using the square brackets [] (Used to give a range of values)---
--All job titles that begins with the characters m through p--
select BusinessEntityID, JobTitle, BirthDate, MaritalStatus, Gender, HireDate, SalariedFlag, VacationHours, SickLeaveHours
from HumanResources.Employee
where JobTitle like '[m-p]%'

--All job titles that begins with either c, o or s (very specific)--
select BusinessEntityID, JobTitle, BirthDate, MaritalStatus, Gender, HireDate, SalariedFlag, VacationHours, SickLeaveHours
from HumanResources.Employee 
where JobTitle like '[c, o, s]%'



--3--
--Using the symbol ^ or ! exclamation (Used to specify what the results should NOT match. Easier to use Not like)
--This uses three out of the four wild card symbols
--Does not begin with R or M
select BusinessEntityID, JobTitle, BirthDate, MaritalStatus, Gender, HireDate, SalariedFlag, VacationHours, SickLeaveHours
from HumanResources.Employee 
where JobTitle like '[^R, M]%'

--Does not begin with P
select BusinessEntityID, JobTitle, BirthDate, MaritalStatus, Gender, HireDate, SalariedFlag, VacationHours, SickLeaveHours
from HumanResources.Employee  
where JobTitle like '[^P]%'

---This is easier, with the logical operator NOT LIKE
select BusinessEntityID, JobTitle, BirthDate, MaritalStatus, Gender, HireDate, SalariedFlag, VacationHours, SickLeaveHours
from HumanResources.Employee  
where JobTitle not like 'P%'



--4--
---Using the Symbol _ (Used to mark an empty value where we know there’s something, but not sure what, basically something for holding spaces)

--JobTitle where there is an 'e' after the first character
select BusinessEntityID, JobTitle, BirthDate, MaritalStatus, Gender, HireDate, SalariedFlag, VacationHours, SickLeaveHours
from HumanResources.Employee  
where JobTitle like '_e%'


--You can combine a few wild cards using 
--JobTitle where there is an 'e' after the first character and the JobTitle Contains the word 'Engineer'
select BusinessEntityID, JobTitle, BirthDate, MaritalStatus, Gender, HireDate, SalariedFlag, VacationHours, SickLeaveHours
from HumanResources.Employee  
where JobTitle like '_e%' and jobtitle like '%Engineer%'


--JoTitle Starts with D, then any charater then s, then any character then g
select BusinessEntityID, JobTitle, BirthDate, MaritalStatus, Gender, HireDate, SalariedFlag, VacationHours, SickLeaveHours
from HumanResources.Employee  
where JobTitle like 'D_s_g%' 


--Escape clause to escape a wild card symbol
--If we are looking for a name that contains the % symbol, We need to use the ESCAPE Clause to make it work
select BusinessEntityID, JobTitle, BirthDate, MaritalStatus, Gender, HireDate, SalariedFlag, VacationHours, SickLeaveHours
from HumanResources.Employee  
where JobTitle like '__e%' and jobtitle like '%T%%' Escape 'T'
