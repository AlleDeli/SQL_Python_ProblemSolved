-- https://school.programmers.co.kr/learn/courses/30/lessons/62284

SELECT cart_id
FROM
(
SELECT cart_id,
       GROUP_CONCAT(name) As combined_name
FROM cart_products
GROUP BY cart_id
) As a
WHERE combined_name LIKE '%Milk%'
AND combined_name LIKE '%Yogurt%'
