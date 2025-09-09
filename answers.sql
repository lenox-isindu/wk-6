-- /////////question 1-/////////
SELECT 
    e.firstName, -- i have used e as my alias for employees table
    e.lastName, 
    e.email, 
    e.officeCode
FROM employees e
INNER JOIN offices o -- i have used o as my alias for offices table
    ON e.officeCode = o.officeCode;

    -- inner join for matching tables


    -- ////////-question two -///
    SELECT 
    p.productName, 
    p.productVendor, -- i have used p as my alias for products table
    p.productLine
FROM products p
LEFT JOIN productlines pline -- i have used pline as my alias for productline table
    ON p.productLine = pline.productLine;

 -- ////////-question three -///////
 SELECT 
o.orderDate,
o.shippedDate, -- i have used o as my alias for orders table
o.status,
o.customerNumber
FROM customers c -- i have used c as my alias for customers table
RIGHT JOIN orders o ON 
c.customerNumber = o.customerNumber
LIMIT 10;