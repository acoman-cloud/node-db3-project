-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
select 
    productname, categoryname
from product as p
join category as c
    on c.id = p.categoryid;
-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
SELECT 
    o.id, s.companyname, orderdate
FROM "order" as o
join shipper as s
    on o.shipvia = s.id
where orderdate < '2012-08-09';
-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
SELECT 
    productname, quantityperunit
FROM orderdetail as o
join product as p
    on o.productid = p.id
where orderid = 10251
order by productname;
-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
SELECT 
    o.id as OrderID, CompanyName as "Company Name", LastName
FROM "order" as o
left join customer as c
    on o.customerid = c.id
left join employee as e
    on o.employeeid = e.id