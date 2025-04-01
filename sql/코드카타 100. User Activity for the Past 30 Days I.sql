-- https://leetcode.com/problems/user-activity-for-the-past-30-days-i/
-- 1141. User Activity for the Past 30 Days I


WITH analysis as (
    SELECT activity_date as `day`,
           COUNT(DISTINCT user_id) as active_users
    FROM Activity
    GROUP BY `day`
)
SELECT `day`,
       active_users
FROM analysis
WHERE `day` BETWEEN DATE_SUB('2019-07-27', INTERVAL 29 DAY) AND '2019-07-27'
