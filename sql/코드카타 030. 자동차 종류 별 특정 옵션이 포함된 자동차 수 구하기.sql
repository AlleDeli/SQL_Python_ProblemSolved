-- https://school.programmers.co.kr/learn/courses/30/lessons/151137

SELECT 
    car_type,
    count(*) as 'CARS'
from car_rental_company_car
where options like '%시트%'
group by 1
order by 1
