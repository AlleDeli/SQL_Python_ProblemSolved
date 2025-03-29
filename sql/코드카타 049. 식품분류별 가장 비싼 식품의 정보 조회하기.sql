-- https://school.programmers.co.kr/learn/courses/30/lessons/131116

SELECT category,
       price as max_price,
       product_name
FROM
(
SELECT 
    category,
    ROW_NUMBER() OVER (PARTITION BY category ORDER BY price desc) as rank_cat,
    price,
    product_name
FROM food_product
) As a
WHERE rank_cat = 1
AND category in ('과자', '국', '김치', '식용유')
ORDER BY max_price desc
