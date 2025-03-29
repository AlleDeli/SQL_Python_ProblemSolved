-- https://school.programmers.co.kr/learn/courses/30/lessons/131533

SELECT 
    p.product_code,
    sum(p.price * o.sales_amount) as 'sales'
from offline_sale o inner join product p on o.product_id=p.product_id
group by 1
order by sales desc, product_code
