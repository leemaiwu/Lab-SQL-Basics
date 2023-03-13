-- ORDERS TABLE --

-- 1.
CREATE TABLE orders (
order_id SERIAL PRIMARY KEY,
person_id VARCHAR(40),
product_name TEXT,
product_price DECIMAL,
quantity INTEGER
);

-- 2.
INSERT INTO orders ( person_id, product_name, product_price, quantity)
VALUES ('Laura', 'Sweet Potato Fries', 8, 1),
('Laura', 'BLT Sandwich', 10, 1),
('Laura', 'Creme Brulee', 8, 1),
('Jack', 'Breadsticks', 7, 1),
('Jack', 'Pizza', 12, 1);

-- 3.
SELECT * FROM orders;

-- 4.
SELECT SUM(quantity) FROM orders;

-- 5.
SELECT SUM(product_price * quantity) FROM orders;

-- 6.
SELECT SUM(product_price * quantity)
FROM orders
WHERE person_id = 'Laura';
