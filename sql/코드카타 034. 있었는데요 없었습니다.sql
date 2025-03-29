-- https://school.programmers.co.kr/learn/courses/30/lessons/59043

SELECT i.animal_id,
       i.name
from animal_ins i inner join animal_outs o on i.animal_id=o.animal_id
where i.DATETIME > o.DATETIME
order by i.DATETIME
