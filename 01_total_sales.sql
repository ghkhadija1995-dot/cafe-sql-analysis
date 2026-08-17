USE cafe_db;

-- ============================================
-- 01_total_sales.sql
-- ما إجمالي المبيعات؟ وكم عدد الطلبات؟
-- الدوال: SUM(), COUNT(), ROUND()
-- ============================================

SELECT
    COUNT(order_id) AS total_orders,
    ROUND(SUM(quantity * price), 2) AS total_revenue
FROM orders;
