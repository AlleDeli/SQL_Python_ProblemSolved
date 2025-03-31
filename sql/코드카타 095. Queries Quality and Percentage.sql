-- https://leetcode.com/problems/queries-quality-and-percentage/description/
-- 1211. Queries Quality and Percentage

WITH ratings AS (
SELECT query_name,
       SUM(rating / `position`) AS sum_rating,
       COUNT(query_name) as cnt,
       COUNT(CASE WHEN rating < 3 THEN 1 END) AS poor_rating  
FROM Queries
GROUP BY query_name
)
SELECT query_name,
       ROUND(sum_rating / cnt, 2) AS quality,
       ROUND((poor_rating / cnt)*100, 2) AS poor_query_percentage
FROM ratings
GROUP BY query_name
