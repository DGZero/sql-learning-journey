-- Lesson 6 - JOINs

-- INNER JOIN

SELECT *
FROM orders
INNER JOIN customers
ON orders.customer_id = customers.customer_id;

-- LEFT JOIN

SELECT *
FROM customers
LEFT JOIN orders
ON customers.customer_id = orders.customer_id;
