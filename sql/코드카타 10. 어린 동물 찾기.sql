-- https://school.programmers.co.kr/learn/courses/30/lessons/59037

SELECT ANIMAL_ID, NAME
From ANIMAL_INS
where INTAKE_CONDITION <> "Aged"
Order by ANIMAL_ID
