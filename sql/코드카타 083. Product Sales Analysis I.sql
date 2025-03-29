-- 1068. Product Sales Analysis I
-- https://leetcode.com/problems/product-sales-analysis-i/description/

SELECT p.product_name,
       s.year,
       s.price
FROM product p INNER JOIN sales s ON p.product_id=s.product_id
