---INSERT STATEMENT---

--Insert into TableName values (), ()
--Insert into TableName (Col1, Col3, Col5) values (), ()

Insert into dbo.Customer values (1, 'Angelina', 'S', 'Jolie', 0123456789)

Insert into dbo.Customer (CustomerID, FirstName, LastName) values (2, 'Mark', 'Angel')


----UPDATE STATEMENT---

Update Customer
Set FirstName = 'Noah'
WHere CustomerID = 2

Update Customer
Set FirstName = 'John'
WHere LastName = 'Angel'



--DELETE STATEMENT---

Delete
from Customer
Where CustomerID = 2



---TRUNCATE STATEMENT---

Truncate Table Customer