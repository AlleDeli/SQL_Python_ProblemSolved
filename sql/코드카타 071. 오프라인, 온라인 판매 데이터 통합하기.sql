-- https://school.programmers.co.kr/learn/courses/30/lessons/131537

SELECT DATE_FORMAT(sales_date,'%Y-%m-%d') as sales_date,
       product_id,
       user_id,
       sales_amount
FROM
(
SELECT *
FROM online_sale 
UNION ALL
SELECT offline_sale_id,
       NULL as user_id,
       product_id,
       sales_amount,
       sales_date
FROM offline_sale 
) as a
WHERE DATE_FORMAT(sales_date, '%Y-%m') = '2022-03'
ORDER BY sales_date Asc, product_id Asc, user_id Asc
