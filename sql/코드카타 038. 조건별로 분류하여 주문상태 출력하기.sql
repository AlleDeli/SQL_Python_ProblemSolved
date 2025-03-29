-- https://school.programmers.co.kr/learn/courses/30/lessons/131113

select order_id,
       product_id,
       substr(out_date,1,10) as out_date,
       case when out_date is null then '출고미정'
            when out_date > '2022-05-01' then '출고대기' 
            else '출고완료' end as '출고여부'
from food_order
order by 1
