-- https://school.programmers.co.kr/learn/courses/30/lessons/133027

SELECT flavor
FROM
(
SELECT flavor,
       SUM(total_order) as sum_order
FROM
(
SELECT *
FROM JULY
UNION ALL
SELECT *
FROM first_half
) as a
GROUP BY flavor
ORDER BY sum_order desc
limit 3
) as b
