-- https://leetcode.com/problems/product-price-at-a-given-date/description/
-- 1164. Product Price at a Given Date

WITH rankdate AS (
SELECT product_id,
       new_price as price,
       ROW_NUMBER() OVER(PARTITION BY product_id ORDER BY change_date Desc) as daterank
FROM Products
WHERE change_date <= '2019-08-16'
)
SELECT product_id,
       price
FROM rankdate
WHERE daterank = 1
UNION ALL
SELECT product_id,
       10 As price
FROM products
GROUP BY 1
HAVING MIN(change_date) > '2019-08-16'
