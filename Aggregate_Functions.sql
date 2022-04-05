--TO DO From the Part 9 of this SQL Series
--CREATE A NEW TABLE Called Employee in your TESTDB with Just the ID, JobTitle and Hiredate

Select BusinessEntityID, JobTitle, HireDate
--into [TestDB].dbo.Employee
FROM HumanResources.Employee


--Table for Demo
select * from Sales.SalesOrderHeader

select SalesOrderId, CustomerId, SalesPersonID, TotalDue 
from Sales.SalesOrderHeader


--SUM
select SUM(TotalDue) from Sales.SalesOrderHeader
select SUM(TotalDue)TotalSales from Sales.SalesOrderHeader


--AVG - mean
select AVG(TotalDue) as AvgSales 
from Sales.SalesOrderHeader


--COUNT - how many rows in the column
select COUNT(TotalDue) as Number_of_sales 
from Sales.SalesOrderHeader

--Note on Count
--To see how many records in the table
select count(*) from Sales.SalesOrderHeader


--MIN
select MIN(TotalDue) as MinSales from Sales.SalesOrderHeader


--MAX
select MAX(TotalDue) as MaxSales from Sales.SalesOrderHeader

--Now, MIN and MAX could be achieved with just the order by
--Then do a TOP 1
select TOP 1 TotalDue 
from Sales.SalesOrderHeader 
order by TotalDue

