-- https://school.programmers.co.kr/learn/courses/30/lessons/157339

SELECT car_id,
       car_type,
       FEE
FROM
(
SELECT c.car_id,
       c.car_type,
       p.duration_type,
       MAX(h.end_date) as max_date,
       ROUND(c.daily_fee * 30 * (1 - p.discount_rate/100),0) As FEE
FROM car_rental_company_car c
INNER JOIN car_rental_company_rental_history h ON c.car_id=h.car_id
INNER JOIN car_rental_company_discount_plan p ON c.car_type=p.car_type
WHERE c.car_type in ('SUV','세단')
AND p.duration_type = '30일 이상'
GROUP BY c.car_id
HAVING max_date <= '2022-11-01 00:00:00'
)as a
WHERE FEE >= 500000 and FEE < 2000000
ORDER BY FEE desc, car_type, car_id desc 

-- 조건 1. 자동차 종류는 '세단','SUV'
-- car_type in 'SUV', '세단'

-- 조건 2. 2022.11.1 ~ 2022.11.30 까지 대여 가능 (11월 한 달간 대여 가능)
-- end_date < 2022.11.01 00:00:00

-- 조건 3. 30일간의 대여 금액이 50만원 <= x < 200만원
-- 조건 4. 자동차 ID, 자동차 종류, 대여 금액(FEE) 출력
-- 조건 5. ORDER BY 대여 금액 내림차순, 자동차 종류, 자동차 ID Desc
