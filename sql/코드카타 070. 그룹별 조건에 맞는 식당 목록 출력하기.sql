-- https://school.programmers.co.kr/learn/courses/30/lessons/131124

WITH count1 as
    (SELECT member_id, COUNT(*) as member_cnt
     FROM rest_review
     GROUP BY member_id
    )

SELECT 
        c.member_name,
        c.review_text,
        c.review_date  
FROM
        (
        SELECT *
        FROM    
                (
                SELECT member_id,
                       RANK() OVER(ORDER BY member_cnt desc) as rank1
                FROM count1 c
                ) as a
        WHERE rank1 = 1
        ) as b
INNER JOIN
        (
        SELECT p.member_id,
               p.member_name,
               r.review_text,
               DATE_FORMAT(r.review_date, '%Y-%m-%d') as review_date
        FROM member_profile p INNER JOIN rest_review r ON p.member_id=r.member_id
        ) as c
ON b.member_id=c.member_id
ORDER BY review_date asc, review_text


-- 조건. 리뷰 가장 많이 작성한 회원 리뷰 조회. 회원 이름, 리뷰 텍스트, 리뷰 작성일
-- 조건. ORDER BY review_date asc, review_text

-- 윈도우 함수 - RANK 함수 예제
