-- 1148. Article Views I
-- https://leetcode.com/problems/article-views-i/description/

SELECT DISTINCT author_id as id
FROM views
WHERE author_id = viewer_id
ORDER BY id
