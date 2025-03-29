-- https://school.programmers.co.kr/learn/courses/30/lessons/144853

SELECT book_id,
       substr(published_date, 1, 10) as published_date
from book
where category = '인문'
and published_date like '2021%'
order by 2
