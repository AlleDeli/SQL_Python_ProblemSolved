-- https://school.programmers.co.kr/learn/courses/30/lessons/164668

SELECT user_id,
       nickname,
       total_sales
FROM
(
SELECT u.user_id,
       u.nickname,
       SUM(g.price) as total_sales
FROM used_goods_board g INNER JOIN used_goods_user u ON g.writer_id = u.user_id
WHERE g.status ='DONE'
GROUP BY 1, 2
) As a
WHERE total_sales >= 700000
ORDER BY 3
