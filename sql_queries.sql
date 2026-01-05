-- TOTAL REVENUE
-- SELECT 
--     SUM(revenue) AS total_revenue
-- FROM fact_sales;

-- TOTAL ORDERS
-- SELECT 
--     COUNT(DISTINCT order_id) AS total_orders
-- FROM fact_sales;

-- AVERAGE ORDER VALUE (AOV)
-- SELECT 
--     SUM(revenue) * 1.0 / COUNT(DISTINCT order_id) AS avg_order_value
-- FROM fact_sales;

-- REVENUE BY PRODUCT
-- SELECT 
--     product,
--     SUM(revenue) AS total_revenue
-- FROM fact_sales
-- GROUP BY product
-- ORDER BY total_revenue DESC;

-- REVENUE BY REGION
-- SELECT 
--     region,
--     SUM(revenue) AS total_revenue
-- FROM fact_sales
-- GROUP BY region
-- ORDER BY total_revenue DESC;

