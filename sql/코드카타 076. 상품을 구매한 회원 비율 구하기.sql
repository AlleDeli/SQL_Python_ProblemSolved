-- https://school.programmers.co.kr/learn/courses/30/lessons/131534

WITH counts AS (
SELECT *
FROM user_info
WHERE DATE_FORMAT(joined, '%Y') = '2021'
)
SELECT `YEAR`,
       `MONTH`,
       PURCHASED_USERS,
       ROUND(PURCHASED_USERS / (SELECT COUNT(*) AS cnt FROM counts), 1) as PUCHASED_RATIO
FROM      
    (
    SELECT YEAR(o.sales_date) as `YEAR`,
           MONTH(o.sales_date) as `MONTH`,
           COUNT(DISTINCT o.user_id) as PURCHASED_USERS
    FROM online_sale o INNER JOIN counts c ON o.user_id=c.user_id
    GROUP BY `YEAR`, `MONTH`
    ) as a
GROUP BY `YEAR`, `MONTH`
ORDER BY `YEAR` Asc, `MONTH` Asc
