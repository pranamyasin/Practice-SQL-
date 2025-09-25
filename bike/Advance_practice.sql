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
