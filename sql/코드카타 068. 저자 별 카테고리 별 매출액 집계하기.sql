-- https://school.programmers.co.kr/learn/courses/30/lessons/144856

SELECT author_id,
       author_name,
       category,
       sum(multi_sales) as total_sales
FROM
(
SELECT ba.author_id,
       ba.author_name,
       ba.category,
       ba.price * s.sales as multi_sales
FROM
    (
    SELECT b.book_id,
           b.category,
           b.author_id,
           b.price,
           b.published_date,
           a.author_name
    FROM book b INNER JOIN author a on b.author_id=a.author_id
    ) as ba
INNER JOIN book_sales s on ba.book_id=s.book_id
WHERE s.sales_date like '2022-01%'
) as c
GROUP BY author_id, category
ORDER BY author_id, category desc




-- 조건 1. 2022년 1월 기준
-- 조건 2. 판매량 * 판매가 를 저자별, 카테고리별로 GROUP BY 해야 함
-- 조건 3. 최종 출력은 저자 ID, 저자명, 카테고리, 매출액 이 출력되어야 함
-- 조건 4. ORDER BY author_id, category desc
