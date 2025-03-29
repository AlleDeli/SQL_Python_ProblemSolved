-- https://school.programmers.co.kr/learn/courses/30/lessons/59409

SELECT animal_id,
       name,
       CASE WHEN sex_upon_intake LIKE 'intact%' THEN 'X'
       ELSE 'O' END As '중성화' 
FROM animal_ins
ORDER BY 1
