-- https://school.programmers.co.kr/learn/courses/30/lessons/131536

SELECT user_id,
       product_id
FROM
(
SELECT user_id,
       product_id,
       count(product_id) as cnt
FROM online_sale
GROUP BY 1,2
) As a 
WHERE cnt > 1
ORDER BY 1, 2 desc
