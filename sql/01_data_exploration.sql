-- 01_data_exploration.sql
-- Basic data exploration queries for e-commerce analysis

-- List all customers from Bangalore
SELECT *
FROM customers
WHERE city = 'Bangalore';

-- Count total customers per city
SELECT 
    city,
    COUNT(*) AS total_customers
FROM customers
GROUP BY city;

-- Show completed orders sorted by order amount
SELECT *
FROM orders
WHERE status = 'Completed'
ORDER BY order_amount DESC;

-- Calculate total revenue from completed orders
SELECT 
    SUM(order_amount) AS total_revenue
FROM orders
WHERE status = 'Completed';
