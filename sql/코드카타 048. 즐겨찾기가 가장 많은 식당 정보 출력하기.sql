-- https://school.programmers.co.kr/learn/courses/30/lessons/131123

SELECT food_type,
       rest_id,
       rest_name,
       favorites
FROM
(
SELECT 
       food_type,
       rest_id,
       rest_name,
       favorites,
       ROW_NUMBER() OVER (PARTITION BY food_type ORDER BY favorites desc) as rank_favorite
FROM rest_info
)as a
WHERE rank_favorite = 1
ORDER BY 1 desc
