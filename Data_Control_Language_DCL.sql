USE TestDB;


-- Creates the login dba_admin with password 'Password123'.  
CREATE LOGIN dba_admin   
    WITH PASSWORD = 'Password123';  
GO  

-- Creates a database user for the login created above.  
CREATE USER dba_admin FOR LOGIN dba_admin;  
GO  

Create Role report_user


---GRANT---
GRANT SELECT ON [dbo].[Customer] TO dba_admin
GRANT DELETE ON [dbo].[Customer] TO dba_admin

GRANT CREATE TABLE TO report_user


---REVOKE

REVOKE SELECT ON [dbo].[Customer] FROM  dba_admin


---DENY
DENY  DELETE ON [dbo].[Customer] TO dba_admin