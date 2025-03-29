-- https://school.programmers.co.kr/learn/courses/30/lessons/151138

SELECT history_id,
       car_id,
       start1,
       end1,
       CASE WHEN DATEDIFF(end1, start1) +1 >= 30 then '장기 대여'
       ELSE '단기 대여' END as RENT_TYPE
FROM
(
SELECT history_id,
       car_id,
       SUBSTR(start_date,1,10) as start1,
       SUBSTR(end_date,1,10) as end1
FROM car_rental_company_rental_history
) As a
WHERE start1 like '2022-09%'
ORDER BY 1 desc
