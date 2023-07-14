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
--Suppliers whose ContactTitle is not Marketing Manager.

select * from suppliers 
where contacttitle <> 'marketing manager'


--7. Products with “queso” in ProductName
--In the products table, we’d like to see the ProductID and ProductName for those products
--where the ProductName includes the string “queso”. 


  select ProductID,ProductName
 from products 
where ProductName like '%queso%'
 


--8. Orders shipping to France or Belgium
--Looking at the Orders table, there’s a field called ShipCountry. Write a query that shows
--the OrderID, CustomerID, and ShipCountry for the orders where the ShipCountry is either
--France or Belgium. 

select  *
 from orders
where ShipCountry = 'france' or ShipCountry ='belgium'



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



select  *
 from orders
where ShipCountry in 
( 'Brazil',
'Mexico',
'Argentina',
'Venezuela'
)



--10. Employees, in order of age
--For all the employees in the Employees table, show the FirstName, LastName, Title, and
--BirthDate. Order the results by BirthDate, so we have the oldest employees first.

select FirstName,LastName,Title,BirthDate
from Employees 
order by BirthDate 


--11. Showing only the Date with a DateTime field
--In the output of the query above, showing the Employees in order of BirthDate, we see the
--time of the BirthDate field, which we don’t want. Show only the date portion of the
--BirthDate field.


select FirstName,LastName,Title,CONVERT(DATE,BirthDate) 
from Employees 
order by CONVERT(DATE,BirthDate) 




--12. Employees full name
--Show the FirstName and LastName columns from the Employees table, and then create a
--new column called FullName, showing FirstName and LastName joined together in one
--column, with a space in-between.

 SELECT 
 FIRSTNAME,
 LASTNAME,
 CONCAT(FIRSTNAME, ' ', LASTNAME) FULLNAME 
 FROM Employees 



--13. OrderDetails amount per line item
--In the OrderDetails table, we have the fields UnitPrice and Quantity. Create a new field,
--TotalPrice, that multiplies these two together. We’ll ignore the Discount field for now.
--In addition, show the OrderID, ProductID, UnitPrice, and Quantity. Order by OrderID and
--ProductID.


select 
orderid,
ProductID,
unitprice, 
quantity, 
TotPrice=(unitprice * quantity)
from orderdetails 


--14. How many customers?
--How many customers do we have in the Customers table? Show one value only, and don’t
--rely on getting the record count at the end of a resultset.

select count(*) as [Count] from customers 


--15. When was the first order?
--Show the date of the first order ever made in the Orders table. 


  select top 1
  orderid, 
  orderdate 
  from orders order by orderdate


-- 16. Countries where there are customers
--Show a list of countries where the Northwind company has customers. 


 SELECT DISTINCT COUNTRY FROM CUSTOMERS 


--17. Contact titles for customers
--Show a list of all the different values in the Customers table for ContactTitles. Also include
--a count for each ContactTitle.
--This is similar in concept to the previous question “Countries where there are customers”,
--except we now want a count for each ContactTitle.SELECT DISTINCT CONTACTTITLE, COUNT(*) AS CNT FROM CUSTOMERS GROUP BY ContactTitle  ORDER BY 2 DESC

--18. Products with associated supplier names
--We’d like to show, for each product, the associated Supplier. Show the ProductID,
--ProductName, and the CompanyName of the Supplier.
--Sort the result by ProductID.
--This question will introduce what may be a new concept—the Join clause in SQL. The Join
--clause is used to join two or more relational database tables together in a logical way. In
--this case, you will join the Suppliers table to the Product


SELECT 
PRODUCTID,
PRODUCTNAME,
COMPANYNAME
FROM PRODUCTS P 
JOIN SUPPLIERS S 
ON P.SUPPLIERID = S.SUPPLIERID


--19. Orders and the Shipper that was used
--We’d like to show a list of the Orders that were made, including the Shipper that was used.
--Show the OrderID, OrderDate (date only), and CompanyName of the Shipper, and sort by
--OrderID.
--In order to not show all the orders (there’s more than 800), show only those rows with an
--OrderID of less than 10270. 


SELECT 
ORDERID,
CONVERT(DATE,ORDERDATE) oDATE,
S.COMPANYNAME
FROM ORDERS O JOIN SHIPPERS S
ON S.SHIPPERID = O.SHIPVIA
WHERE ORDERID < 10270


 --------------------------------------------------------INTERMIDATE LEVEL -------------------------------------------------------------------------------------
 --------------------------------------------------------------------------------------------------------------------------------------------------



--20. Categories, and the total products in each category
--For this problem, we’d like to see the total number of products in each category. Sort the
--results by the total number of products, in descending order



select 
categoryname, 
count(*) as cntofprdc
from categories c 
join products p 
on c.categoryid = p.categoryid
group by c.CategoryName 
order by 2 desc



--21. Total customers per country/city
--In the Customers table, show the total number of customers per Country and City.


  select 
  country,
  city,
  count(*) as cnt
  from customers
  group by country,city 
  order by country,city 








