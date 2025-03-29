-- https://school.programmers.co.kr/learn/courses/30/lessons/133026

SELECT i.ingredient_type,
       SUM(f.total_order) as TOTAL_ORDER
FROM first_half f INNER JOIN icecream_info i on f.flavor=i.flavor
GROUP BY 1
ORDER BY 1 DESC
