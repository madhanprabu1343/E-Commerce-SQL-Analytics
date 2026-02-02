# E-Commerce SQL Analytics Project

## Objective
Analyze e-commerce transactional data to derive actionable business
insights related to sales performance, customer behavior, and
operational efficiency using SQL.

## Dataset Overview
- customers: customer demographic and signup data
- products: product catalog and pricing
- orders: order-level transactions
- order_items: product-level order details
- payments: payment status and modes

## Key Business Questions
- What is the total and monthly revenue?
- Who are the top customers contributing to revenue?
- Which product categories perform best?
- What percentage of customers are repeat buyers?
- How do payment failures impact revenue?

## KPIs Calculated
- Total Revenue
- Monthly Revenue Trend
- Average Order Value (AOV)
- Repeat Customer Rate
- Top 10% Revenue Contributors

## Tools Used
- SQL (MySQL / PostgreSQL)
- GitHub for version control
- AI tools for query validation and optimization

## Sample Query
```sql
SELECT 
    SUM(order_amount) AS total_revenue
FROM orders
WHERE status = 'Completed';
