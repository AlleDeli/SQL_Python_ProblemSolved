-- https://school.programmers.co.kr/learn/courses/30/lessons/157342

SELECT car_id,AVERAGE_DURATION
FROM
(
SELECT car_id,
       ROUND(AVG(diff),1) as AVERAGE_DURATION
FROM
    (
    SELECT car_id,
           DATEDIFF(end_date, start_date) + 1 as diff
    FROM car_rental_company_rental_history
    ) AS a
GROUP BY car_id
) As b
WHERE AVERAGE_DURATION >= 7
ORDER BY AVERAGE_DURATION desc, car_id desc
