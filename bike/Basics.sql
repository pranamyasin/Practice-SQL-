use bike;

# SELECT & FROM

SELECT * FROM orders;

#order by 

SELECT order_id, shipped_date
FROM orders
order by shipped_date;

# DISTINCT

select * from products;

SELECT distinct product_name
from products;

SELECT distinct model_year
from products;

SELECT count(distinct product_name) as "No of unique products"
from products;

#LIMIT

select * from stocks;

SELECT DISTINCT quantity 
FROM stocks
ORDER BY quantity DESC
LIMIT 5;

#WHERE

SELECT * FROM order_items
WHERE product_id>100;

SELECT * from order_items
WHERE item_id = 4 or item_id =5;

SELECT * FROM order_items
WHERE item_id = 5 and discount>0.07;

#LIKE

select * from staffs
WHERE last_name like 'D%';;

SELECT * from staffs
WHERE first_name like "%la";

SELECT * from staffs
WHERE first_name like "%nn%";

SELECT * from staffs
WHERE first_name like "%r_e%";

# IS NULL

SELECT * FROM Customers
where phone is null;

# NOT

SELECT * FROM Customers
WHERE state not in ('CA');

# IN

SELECT * FROM Customers
WHERE zip_code IN ( 11553, 11372, 14580 );

# AGGREGATE FUNCTION & GROUP BY

# COUNT
Select count(order_id) as 'No of orders', store_id
FROM orders
GROUP BY store_id;

# SUM
SELECT sum(quantity), order_id
FROM order_items
GROUP BY order_id;

#HAVING

SELECT * from stocks
HAVING quantity>20;