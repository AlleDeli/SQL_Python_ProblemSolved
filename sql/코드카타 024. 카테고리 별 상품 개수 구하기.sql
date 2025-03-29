-- https://school.programmers.co.kr/learn/courses/30/lessons/131529

SELECT 
    substr(product_code, 1, 2) as CATEGORY,
    count(*) as 'count'
from product
group by 1
order by 1
