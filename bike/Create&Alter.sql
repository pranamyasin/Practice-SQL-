create database bike;
use bike;

# Basics
select * from stores;
desc customers;

# ALTER TABLES

Alter table customers
ADD PRIMARY KEY (customer_id);

ALTER TABLE orders
ADD PRIMARY KEY (order_id);

ALTER TABLE staffs
ADD PRIMARY KEY (staff_id);

ALTER TABLE stores
ADD PRIMARY KEY (store_id);


ALTER TABLE order_items
ADD FOREIGN KEY (order_id)
REFERENCES orders (order_id);

ALTER TABLE products
ADD PRIMARY KEY (product_id);

ALTER TABLE order_items
ADD FOREIGN KEY (product_id)
REFERENCES products (product_id);

ALTER TABLE categories
ADD PRIMARY KEY (category_id); 

ALTER TABLE brands 
ADD PRIMARY KEY (brand_id);


