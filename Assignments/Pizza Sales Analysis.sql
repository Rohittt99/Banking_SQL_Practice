-- 1
CREATE DATABASE Pizza_Sales_Analysis;

-- 2
SHOW DATABASES;

USE Pizza_Sales_Analysis;

-- 3
CREATE TABLE `order` (
    id INT,
    date DATE
);

-- 4
ALTER TABLE `order`
ADD COLUMN time TIME AFTER date;

-- 5
RENAME TABLE `order` TO orders;

-- 6
ALTER TABLE orders
ADD PRIMARY KEY (id);

DESC orders;

