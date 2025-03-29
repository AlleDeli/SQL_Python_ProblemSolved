-- https://school.programmers.co.kr/learn/courses/30/lessons/59407

SELECT ANIMAL_ID
from animal_ins
where NAME <> null or NAME <> ''
order by ANIMAL_ID
