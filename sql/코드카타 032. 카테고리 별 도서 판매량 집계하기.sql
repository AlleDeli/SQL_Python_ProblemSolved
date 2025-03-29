-- https://school.programmers.co.kr/learn/courses/30/lessons/144855

SELECT b.category as 'CATEGORY',
       sum(s.sales) as 'TOTAL_SALES'
from book b inner join book_sales s on b.book_id=s.book_id 
where s.sales_date like '2022-01%'
group by 1
order by 1
