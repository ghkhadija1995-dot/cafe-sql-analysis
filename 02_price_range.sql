USE cafe_db;

-- ============================================
-- 02_price_range.sql
-- ما أعلى وأقل سعر لصنف؟
-- الدوال: MAX(), MIN()
-- ============================================

SELECT
    MAX(price) AS highest_price,
    MIN(price) AS lowest_price
FROM orders;
