-- Total revenue by city
SELECT 
    c.city,
    SUM(o.order_amount) AS total_revenue
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
GROUP BY c.city
ORDER BY total_revenue DESC;
