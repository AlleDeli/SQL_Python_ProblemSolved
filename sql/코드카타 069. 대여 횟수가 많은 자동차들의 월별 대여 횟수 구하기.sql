-- https://school.programmers.co.kr/learn/courses/30/lessons/151139

WITH alpha as
(   SELECT DATE_FORMAT(start_date, '%m') as MONTH,
       car_id,
       COUNT(CASE WHEN DATE_FORMAT(start_date, '%Y-%m') BETWEEN '2022-08' AND '2022-10' THEN 1 END) as RECORDS 
    FROM car_rental_company_rental_history
    GROUP BY 1, 2
)
SELECT month,
       a.car_id,
       RECORDS
FROM alpha a INNER JOIN 
        (
        SELECT car_id,
               SUM(RECORDS) as sum_records    
        FROM alpha
        GROUP BY car_id
        HAVING sum_records >= 5 
        ) as b
ON a.car_id=b.car_id
WHERE RECORDS <> 0
ORDER BY MONTH Asc, a.car_id DESC

-- 조건. start_date 기준으로 22.8월~10월까지 총 대여 횟수 5회 이상인 자동차 필터링
-- 해당 기간동안 월별 / 자동차별 / ID별 총 대여 횟수 출력 (컬럼명 RECORDS)
-- 월을 기준 오름차순 / 월이 같으면 자동차 ID 기준 내림차순
-- 특정 월의 총 대여 횟수가 0이면 결과서 제외
