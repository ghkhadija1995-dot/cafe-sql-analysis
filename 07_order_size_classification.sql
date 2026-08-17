USE cafe_db;

-- ============================================
-- 07_order_size_classification.sql
-- تصنيف كل طلب حسب قيمته: صغير / متوسط / كبير
-- الدوال: CASE WHEN
-- ============================================

SELECT
    order_id,
    item_name,
    ROUND(quantity * price, 2) AS order_value,
    CASE
        WHEN quantity * price < 30 THEN 'Small'
        WHEN quantity * price < 70 THEN 'Medium'
        ELSE 'Large'
    END AS order_size
FROM orders
ORDER BY order_value DESC;
