-- https://school.programmers.co.kr/learn/courses/30/lessons/157341

SELECT DISTINCT(r.car_id)
FROM car_rental_company_car r INNER JOIN car_rental_company_rental_history h ON r.car_id=h.car_id
WHERE r.car_type='세단'
AND MONTH(h.start_date) = '10'
ORDER BY 1 desc
