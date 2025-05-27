-- https://leetcode.com/problems/product-sales-analysis-iii/description/
-- 1070. Product Sales Analysis III

WITH first as (
SELECT *,
       DENSE_RANK() OVER(PARTITION BY product_id ORDER BY `year`) AS rank1
FROM Sales
)
SELECT product_id,
       `year` as first_year,
       quantity,
       price
FROM first
WHERE rank1 = 1
