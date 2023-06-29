--1. Which shippers do we have?
--   We have a table called Shippers. Return all the fields from all the shippers

   select * 
   from shippers 

--   2. Certain fields from Categories
--In the Categories table, selecting all the fields using this SQL:

 select * 
 from categories 

-- 3. Sales Representatives
--We’d like to see just the FirstName, LastName, and HireDate of all the employees with the
--title of Sales Representative. Write a SQL statement that returns only those employees

  select 
  Firstname,
  lastname,
  hiredate 
  from employees 
  where title = 'Sales Representative'

--  4. Sales Representatives in the United States
--Now we’d like to see the same columns as above, but only for those employees that both
--have the title of Sales Representative, and also are in the United States.

  select 
  Firstname,
  lastname,
  hiredate 
  from employees 
  where title = 'Sales Representative' and country='USA'


--  5. Orders placed by specific EmployeeID
--Show all the orders placed by a specific employee. The EmployeeID for this Employee
--(Steven Buchanan) is 5.

select * 
from orders 
where EmployeeID = 5