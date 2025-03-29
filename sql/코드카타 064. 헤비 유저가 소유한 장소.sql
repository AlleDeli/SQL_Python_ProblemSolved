-- https://school.programmers.co.kr/learn/courses/30/lessons/77487

SELECT p.id,
       p.name,
       p.host_id
FROM places p inner join
(
SELECT 
       host_id,
       COUNT(*) as cnt
FROM places
GROUP BY host_id
) As a
on p.host_id=a.host_id
WHERE a.cnt > 1
