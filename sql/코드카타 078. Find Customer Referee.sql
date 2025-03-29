-- 584. Find Customer Referee
-- https://leetcode.com/problems/find-customer-referee/description/

SELECT name
FROM customer
WHERE referee_id <> 2 or referee_id is NULL
