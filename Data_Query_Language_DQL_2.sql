---First thing we will do is to simply select everything from a table
select * from HumanResources.Employee


--Now we want to select columns from the same table.
select BusinessEntityID, JobTitle, BirthDate, MaritalStatus, Gender, HireDate, SalariedFlag, VacationHours, SickLeaveHours
from HumanResources.Employee


---Now Let's start using some conditions--
select BusinessEntityID, JobTitle, BirthDate, MaritalStatus, Gender, HireDate, SalariedFlag, VacationHours, SickLeaveHours
from HumanResources.Employee
where BusinessEntityID = 1  --mathematical operator


select BusinessEntityID, JobTitle, BirthDate, MaritalStatus, Gender, HireDate, SalariedFlag, VacationHours, SickLeaveHours
from HumanResources.Employee
where BusinessEntityID IN (10, 15, 20) ---logical operators


--We want employees with more than 2 weeks vacations
--40 hrs = 1 week
--80 hrs = 2 weeks of vacation
select BusinessEntityID, JobTitle, BirthDate, MaritalStatus, Gender, HireDate, SalariedFlag, VacationHours, SickLeaveHours
from HumanResources.Employee
where VacationHours > 80


---Employees with less or equal to 80 hrs of vacation and are single
select BusinessEntityID, JobTitle, BirthDate, MaritalStatus, Gender, HireDate, SalariedFlag, VacationHours, SickLeaveHours
from HumanResources.Employee
where VacationHours <= 80
	AND MaritalStatus = 'S'


---Employees with less or equal to 80 hrs of vacation or are single
select BusinessEntityID, JobTitle, BirthDate, MaritalStatus, Gender, HireDate, SalariedFlag, VacationHours, SickLeaveHours
from HumanResources.Employee
where VacationHours <= 80
	OR MaritalStatus = 'S'