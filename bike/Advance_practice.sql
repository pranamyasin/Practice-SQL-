use bike;
SELECT sum(oi.quantity*oi.list_price) as'total_sales', o.store_id 
FROM order_items oi
JOIN
orders o
ON o.order_id = oi.order_id
GROUP BY store_id;

SELECT o.product_id, p.product_name, o.quantity
FROM order_items o
JOIN
products p
ON o.product_id = p.product_id
ORDER BY quantity DESC
LIMIT 5;

SELECT SUM(oi.quantity*oi.list_price) as 'Total_revenue',c.category_name
FROM order_items oi
JOIN products p 
ON p.product_id = oi.product_id
JOIN orders o
ON oi.order_id = o.order_id
JOIN categories c 
ON p.category_id = c.category_id
WHERE year(o.order_date)=YEAR(curdate())-1
GROUP BY c.category_name
ORDER BY Total_revenue DESC;

SELECT c.customer_id, AVG(order_total) as "avg_order_value"
FROM customers c
JOIN
orders o 
ON c.customer_id = o.customer_id
JOIN( SELECT
oi.order_id,
SUM(oi.quantity * oi.list_price * (1-oi.discount)) as order_total
FROM order_items oi
GROUP BY oi.order_id
) oi
ON o.order_id = oi.order_id
GROUP BY c.customer_id
ORDER BY avg_order_value DESC;

SELECT st.store_name, p.product_name, SUM(s.quantity) as "total_stock"
FROM stocks s
JOIN
products p 
ON s.product_id = p.product_id
JOIN
stores st
ON st.store_id = s.store_id 
GROUP BY st.store_name, p.product_name
ORDER BY total_stock Asc;

SELECT b.brand_name, SUM(oi.quantity * oi.list_price * (1-oi.discount))  as "revenue"
FROM brands b
JOIN
products p 
ON b.brand_id = p.brand_id
JOIN
order_items oi
ON p.product_id = oi.product_id
GROUP BY b.brand_name
ORDER BY revenue DESC;

SELECT c.customer_id ,c.first_name, c.last_name, COUNT(o.order_id) as "no_of_orders"
FROM customers c
JOIN
orders o
ON
c.customer_id = o.customer_id
GROUP BY customer_id
ORDER BY no_of_orders DESC, first_name ASC, last_name ASC
LIMIT 3;
