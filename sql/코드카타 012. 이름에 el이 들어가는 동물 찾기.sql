-- https://school.programmers.co.kr/learn/courses/30/lessons/59047

SELECT animal_id, name
from ANIMAL_INS
where name like '%el%' and animal_type = 'dog'
order by name
