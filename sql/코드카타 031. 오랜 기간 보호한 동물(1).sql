-- https://school.programmers.co.kr/learn/courses/30/lessons/59044

SELECT i.name,
       i.datetime
FROM animal_ins i LEFT JOIN animal_outs o on i.animal_id=o.animal_id
WHERE o.datetime is NULL
ORDER BY 2
LIMIT 3
