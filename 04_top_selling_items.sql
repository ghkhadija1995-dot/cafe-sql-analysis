USE cafe_db;

-- ============================================
-- 04_top_selling_items.sql
-- ما أكثر 5 أصناف مبيعًا من حيث الكمية والإيرادات؟
-- الدوال: SUM(), GROUP BY, ORDER BY, LIMIT
-- ============================================

SELECT
    item_name,
    SUM(quantity) AS total_quantity_sold,
    ROUND(SUM(quantity * price), 2) AS total_revenue
FROM orders
GROUP BY item_name
ORDER BY total_quantity_sold DESC
LIMIT 5;
