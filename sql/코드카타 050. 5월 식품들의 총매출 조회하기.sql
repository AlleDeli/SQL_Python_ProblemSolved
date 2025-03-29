-- https://school.programmers.co.kr/learn/courses/30/lessons/131117

SELECT product_id,
       product_name,
       SUM(sales) as total_sales
FROM
(
SELECT p.product_id,
       p.product_name,
       p.price * o.amount as sales
FROM food_product p LEFT JOIN food_order o on p.product_id=o.product_id
WHERE o.produce_date LIKE '2022-05%'
) As a
GROUP BY 1,2
ORDER BY 3 desc, 1
