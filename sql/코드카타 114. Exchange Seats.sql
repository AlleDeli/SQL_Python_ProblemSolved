-- https://leetcode.com/problems/exchange-seats/
-- 626. Exchange Seats


WITH ranked AS (
SELECT *,
       ROW_NUMBER() OVER(ORDER BY id Desc) as rank1
FROM seat
)
SELECT id,
       CASE 
            WHEN id % 2 = 1 AND rank1 <>1 THEN LEAD(student) OVER(ORDER BY id)
            WHEN id % 2 = 0 AND rank1 <>1 THEN LAG(student) OVER(ORDER BY id)
            WHEN id % 2 = 1 AND rank1 = 1 THEN student
            WHEN id % 2 = 0 AND rank1 = 1 THEN LAG(student) OVER(ORDER BY id)
        END As student
FROM ranked
GROUP BY id
ORDER BY id
