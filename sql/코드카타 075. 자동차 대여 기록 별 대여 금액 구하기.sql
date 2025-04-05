-- https://school.programmers.co.kr/learn/courses/30/lessons/151141

WITH trucks AS (
SELECT b.history_id,
       a.daily_fee,
       b.start_date,
       b.end_date,
        CASE WHEN DATEDIFF(end_date, start_date) >= 89 THEN 12
             WHEN DATEDIFF(end_date, start_date) >= 29 THEN 11
             WHEN DATEDIFF(end_date, start_date) >= 6 THEN 10
             ELSE 0 END As plan_id
FROM car_rental_company_car a INNER JOIN car_rental_company_rental_history as b
ON a.car_id=b.car_id
WHERE car_type = '트럭'
)   
SELECT t.history_id,
       CASE
            WHEN t.plan_id = 0 AND DATEDIFF(t.end_date,t.start_date) = 0 THEN t.daily_fee
            WHEN t.plan_id = 0 AND DATEDIFF(t.end_date,t.start_date) >0 THEN ROUND(t.daily_fee * (DATEDIFF(t.end_date, t.start_date)+1),0)
            ELSE ROUND(t.daily_fee * (1-d.discount_rate/100) * (DATEDIFF(t.end_date, t.start_date)+1),0)
        END As FEE
FROM trucks t LEFT JOIN car_rental_company_discount_plan d ON t.plan_id=d.plan_id
GROUP BY t.history_id
ORDER BY FEE Desc, t.history_id Desc



# 조건 1. 자동차 종류 = 트럭
# 조건 2. 대여기록 별 대여 금액(FEE) -> 정수부분만 출력
# 조건 3. 대여 기록 ID, FEE 출력
# 조건 4. FEE 내림차순, 대여 기록 ID 내림차순
# 주의사항: FEE의 경우 예시처럼 정수부분만 출력되어야 합니다. 
# 524,546,581,586,618,627,705,711 -> 대여기간 1일


## 7일 이상 = plan id 10 / 30일 이상 11 / 90일 이상 12
