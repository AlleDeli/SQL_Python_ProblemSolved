-- https://school.programmers.co.kr/learn/courses/30/lessons/131535

select
    count(user_id)
from
(
SELECT 
    user_id
from user_info
where age between 20 and 29 
      and joined like '2021%'
) a
