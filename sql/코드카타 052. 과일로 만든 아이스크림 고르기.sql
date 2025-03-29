-- https://school.programmers.co.kr/learn/courses/30/lessons/133025

SELECT f.flavor
FROM first_half f LEFT JOIN icecream_info i on f.flavor=i.flavor
WHERE total_order > 3000
AND i.ingredient_type = 'fruit_based'
ORDER BY total_order desc
