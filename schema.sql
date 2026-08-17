-- ============================================
-- schema.sql (MySQL version)
-- هيكل قاعدة بيانات كافيه/مطعم بسيط
-- ============================================

CREATE DATABASE IF NOT EXISTS cafe_db;
USE cafe_db;

DROP TABLE IF EXISTS orders;

CREATE TABLE orders (
    order_id     INT AUTO_INCREMENT PRIMARY KEY,
    order_date   DATE,
    item_name    VARCHAR(50),
    category     VARCHAR(20),
    quantity     INT,
    price        DECIMAL(10,2),
    branch       VARCHAR(30)
);
