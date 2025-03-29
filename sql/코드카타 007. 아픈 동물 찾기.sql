-- https://school.programmers.co.kr/learn/courses/30/lessons/59036

SELECT ANIMAL_ID, NAME
From ANIMAL_INS
where INTAKE_CONDITION = 'Sick'
order by ANIMAL_ID
