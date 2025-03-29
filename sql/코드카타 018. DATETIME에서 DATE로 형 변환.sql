-- https://school.programmers.co.kr/learn/courses/30/lessons/59414

SELECT 
    ANIMAL_ID,
    NAME,
    substr(DATETIME, 1, 10) "날짜"
from animal_ins
order by ANIMAL_ID
