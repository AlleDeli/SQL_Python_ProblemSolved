-- https://school.programmers.co.kr/learn/courses/30/lessons/59041

select
    name,
    count(*) as count
from ANIMAL_INS
where name <> 'NULL'
group by name
having count(*)>1
order by name
