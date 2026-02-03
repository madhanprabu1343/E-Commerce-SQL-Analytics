-- Total revenue by city
SELECT 
    c.city,
    SUM(o.order_amount) AS total_revenue
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
GROUP BY c.city
ORDER BY total_revenue DESC;

-- Customers by number of orders
SELECT 
    c.name,
    COUNT(o.order_id) AS total_orders
FROM customers c
LEFT JOIN orders o
    ON c.customer_id = o.customer_id
GROUP BY c.name
ORDER BY total_orders DESC;
