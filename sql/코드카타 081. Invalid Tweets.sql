-- 1683. Invalid Tweets
-- https://leetcode.com/problems/invalid-tweets/description/

SELECT tweet_id
FROM tweets
WHERE LENGTH(content) > 15
