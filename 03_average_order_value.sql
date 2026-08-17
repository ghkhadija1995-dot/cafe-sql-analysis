USE cafe_db;

-- ============================================
-- 03_average_order_value.sql
-- ما متوسط قيمة الطلب الواحد؟
-- الدوال: AVG(), ROUND()
-- ============================================

SELECT
    ROUND(AVG(quantity * price), 2) AS average_order_value
FROM orders;
