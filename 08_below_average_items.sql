USE cafe_db;

-- ============================================
-- 08_below_average_items.sql
-- ما الأصناف التي إيراداتها أقل من متوسط إيرادات جميع الأصناف؟
-- الدوال: Subquery, AVG(), GROUP BY, HAVING
-- ============================================

SELECT
    item_name,
    ROUND(SUM(quantity * price), 2) AS item_revenue
FROM orders
GROUP BY item_name
HAVING SUM(quantity * price) < (
    SELECT AVG(item_total) FROM (
        SELECT SUM(quantity * price) AS item_total
        FROM orders
        GROUP BY item_name
    ) AS sub
)
ORDER BY item_revenue ASC;
