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


--6. Suppliers and ContactTitles
--In the Suppliers table, show the SupplierID, ContactName, and ContactTitle for those
--Suppliers whose ContactTitle is not Marketing Manager.select * from suppliers where contacttitle <> 'marketing manager'--7. Products with “queso” in ProductName
--In the products table, we’d like to see the ProductID and ProductName for those products
--where the ProductName includes the string “queso”. 
 






--8. Orders shipping to France or Belgium
--Looking at the Orders table, there’s a field called ShipCountry. Write a query that shows
--the OrderID, CustomerID, and ShipCountry for the orders where the ShipCountry is either
--France or Belgium. 








--9. Orders shipping to any country in Latin America
--Now, instead of just wanting to return all the orders from France or Belgium, we want to
--show all the orders from any Latin American country. But we don’t have a list of Latin
--American countries in a table in the Northwind database. So, we’re going to just use this
--list of Latin American countries that happen to be in the Orders table:
--Brazil
--Mexico
--Argentina
--Venezuela
--It doesn’t make sense to use multiple Or statements anymore. Use the In statement.









--10. Employees, in order of age
--For all the employees in the Employees table, show the FirstName, LastName, Title, and
--BirthDate. Order the results by BirthDate, so we have the oldest employees first.




--11. Showing only the Date with a DateTime field
--In the output of the query above, showing the Employees in order of BirthDate, we see the
--time of the BirthDate field, which we don’t want. Show only the date portion of the
--BirthDate field.




--12. Employees full name
--Show the FirstName and LastName columns from the Employees table, and then create a
--new column called FullName, showing FirstName and LastName joined together in one
--column, with a space in-between.




--13. OrderDetails amount per line item
--In the OrderDetails table, we have the fields UnitPrice and Quantity. Create a new field,
--TotalPrice, that multiplies these two together. We’ll ignore the Discount field for now.
--In addition, show the OrderID, ProductID, UnitPrice, and Quantity. Order by OrderID and
--ProductID.





--14. How many customers?
--How many customers do we have in the Customers table? Show one value only, and don’t
--rely on getting the record count at the end of a resultset.





--15. When was the first order?
--Show the date of the first order ever made in the Orders table. 







