-- https://school.programmers.co.kr/learn/courses/30/lessons/131532

SELECT DATE_FORMAT(o.sales_date, '%Y') AS YEAR,
       DATE_FORMAT(o.sales_date, '%m') AS MONTH,
       i.gender,
       COUNT(DISTINCT i.user_id) As USERS
FROM user_info i INNER JOIN online_sale o ON i.user_id=o.user_id
WHERE i.gender IS NOT NULL
GROUP BY 1, 2, 3
ORDER BY 1, 2, 3
