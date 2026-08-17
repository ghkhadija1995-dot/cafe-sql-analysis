USE cafe_db;

-- ============================================
-- 06_monthly_sales.sql
-- ما إجمالي المبيعات في كل شهر من عام 2024؟
-- الدوال: DATE_FORMAT(), SUM(), GROUP BY
-- (في SQLite يقابلها strftime، وفي PostgreSQL يقابلها TO_CHAR)
-- ============================================

SELECT
    DATE_FORMAT(order_date, '%Y-%m') AS month,
    ROUND(SUM(quantity * price), 2) AS monthly_revenue,
    COUNT(order_id) AS number_of_orders
FROM orders
GROUP BY month
ORDER BY month;
