-- https://school.programmers.co.kr/learn/courses/30/lessons/131118

SELECT i.rest_id,
       i.rest_name,
       i.food_type,
       i.favorites,
       i.address,
       ROUND(AVG(r.review_score),2) as avg_score  
FROM rest_info i INNER JOIN rest_review r on i.rest_id=r.rest_id
WHERE i.address like '서울%'
GROUP BY rest_id
ORDER BY avg_score desc, favorites desc
