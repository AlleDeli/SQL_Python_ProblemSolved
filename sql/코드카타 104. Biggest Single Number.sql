-- https://leetcode.com/problems/biggest-single-number/
-- 619. Biggest Single Number

WITH counts as(
SELECT num,
       COUNT(*) as cnt
FROM MyNumbers
GROUP BY num
HAVING cnt = 1
)
SELECT 
      CASE WHEN num IS NOT NULL THEN MAX(num)
           ELSE NULL END As num
FROM counts
