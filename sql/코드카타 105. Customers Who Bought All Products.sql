-- https://leetcode.com/problems/customers-who-bought-all-products/description/
-- 1045. Customers Who Bought All Products

WITH counts AS (
SELECT *,
       COUNT(*) AS cnt
FROM Product
),
counts2 AS (
    SELECT  customer_id,
            COUNT(DISTINCT product_key) AS cnt
    FROM Customer
    GROUP BY customer_id
)
SELECT customer_id
FROM counts c INNER JOIN counts2 s ON c.cnt=s.cnt
