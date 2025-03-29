-- https://school.programmers.co.kr/learn/courses/30/lessons/59042

SELECT o.animal_id,
       o.name
FROM animal_outs o LEFT JOIN animal_ins i on o.animal_id=i.animal_id
WHERE i.animal_type is NULL
ORDER BY 1
