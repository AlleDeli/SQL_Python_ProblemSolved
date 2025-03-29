-- 197. Rising Temperature
-- https://leetcode.com/problems/rising-temperature/description/

WITH full as (
    SELECT *,
           IFNULL(LAG(temperature) OVER (ORDER BY recordDate), 0) as temp1,
           LAG(recordDate) OVER (ORDER BY recordDate) as datebefore,
           RANK() OVER (ORDER BY recordDate) as rank1
    FROM Weather
)
SELECT id
FROM full
WHERE temperature > temp1
AND rank1 <> 1
AND DATEDIFF(recordDate, datebefore) = 1
;
