-- https://school.programmers.co.kr/learn/courses/30/lessons/59410

SELECT 
    animal_type,
    if(name is NULL, 'No name', name) as 'name',
    sex_upon_intake
from animal_ins
order by animal_id
