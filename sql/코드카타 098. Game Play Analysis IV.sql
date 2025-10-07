-- https://leetcode.com/problems/game-play-analysis-iv/

WITH base AS(
        SELECT *, 
            LEAD(event_date) OVER(PARTITION BY player_id ORDER BY event_date) AS next_date,
            ROW_NUMBER() OVER(PARTITION BY player_id ORDER BY event_date) AS event_rank
        FROM activity
)
, base1 AS(
        SELECT *,
            CASE WHEN DATEDIFF(next_date, event_date) = 1 THEN TRUE
            ELSE FALSE END As streaks
        FROM base
        WHERE event_rank = 1
)
SELECT ROUND(COUNT(DISTINCT CASE WHEN streaks IS TRUE THEN player_id END) / COUNT(DISTINCT player_id), 2) AS fraction
FROM base1


