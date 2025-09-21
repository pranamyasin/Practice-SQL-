use bike;

# INNER JOIN

SELECT p.product_name, b.brand_name, c.category_name
FROM products p
INNER JOIN
brands b
INNER JOIN 
categories c;

# Late Shipping

SELECT * FROM orders
WHERE shipped_date > required_date;

# DATE_DIFF

SELECT * , DATEDIFF(shipped_date,required_date) as "days_delay"
FROM orders
WHERE shipped_date > required_date;

SELECT product_name, list_price
FROM products
ORDER BY list_price DESC
limit 5;

# LEFT JOIN
SELECT o.staff_id, s.first_name, s.last_name, count(o.order_id) as 'total_orders'
FROM staffs s
LEFT JOIN
orders o
ON o.staff_id = s.staff_id 
GROUP BY s.staff_id
ORDER BY total_orders DESC;
