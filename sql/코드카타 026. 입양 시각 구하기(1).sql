-- https://school.programmers.co.kr/learn/courses/30/lessons/59412

SELECT 
      substr(DATETIME, 12, 2) as HOUR,
      count(*) as 'COUNT' 
from animal_outs
where substr(DATETIME, 12, 2) between 9 and 19
group by 1
order by 1
