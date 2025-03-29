-- https://school.programmers.co.kr/learn/courses/30/lessons/59411

SELECT o.animal_id,
       o.name
FROM animal_ins i INNER JOIN animal_outs o on i.animal_id=o.animal_id
ORDER BY DATEDIFF(o.datetime,i.datetime) desc
LIMIT 2
;
