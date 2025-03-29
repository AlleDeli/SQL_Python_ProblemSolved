-- https://school.programmers.co.kr/learn/courses/30/lessons/144854

SELECT b.book_id,
       a.author_name,
       substr(b.published_date, 1, 10) 'PUBLISHED_DATE'
from book b left join author a on b.author_id=a.author_id
where b.category='경제'
order by 3
