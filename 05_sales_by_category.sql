USE cafe_db;

-- ============================================
-- 05_sales_by_category.sql
-- ما إجمالي المبيعات لكل فئة (مشروبات / مأكولات / حلويات)؟
-- الدوال: SUM(), GROUP BY, ORDER BY
-- ============================================

SELECT
    category,
    ROUND(SUM(quantity * price), 2) AS category_revenue,
    COUNT(order_id) AS number_of_orders
FROM orders
GROUP BY category
ORDER BY category_revenue DESC;
