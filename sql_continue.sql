
-- MONTHLY REVENUE TREND
-- SELECT 
--     strftime('%Y-%m', order_date) AS month,
--     SUM(revenue) AS monthly_revenue
-- FROM fact_sales
-- GROUP BY month
-- ORDER BY month;

-- TOP 5 PRODUCTS BY REVENUE
-- SELECT 
--     product,
--     SUM(revenue) AS total_revenue
-- FROM fact_sales
-- GROUP BY product
-- ORDER BY total_revenue DESC
-- LIMIT 5;

-- DAILY SALES TRENDSELECT 
-- SELECT 
--     order_date,
--     SUM(revenue) AS daily_revenue
-- FROM fact_sales
-- GROUP BY order_date
-- ORDER BY order_date;


