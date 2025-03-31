-- 1661. Average Time of Process per Machine
-- https://leetcode.com/problems/average-time-of-process-per-machine/description/

SELECT machine_id,
       ROUND(processing / cnt_process,3) as processing_time
FROM
(
    SELECT a1.machine_id,
        ROUND(SUM(a2.timestamp - a1.timestamp),3) as processing,
        COUNT(a1.process_id) as cnt_process
    FROM (SELECT * FROM Activity WHERE activity_type = 'start') as a1 JOIN (SELECT * FROM Activity WHERE activity_type = 'end') a2 ON a1.machine_id = a2.machine_id
    WHERE a1.machine_id = a2.machine_id
    AND a1.process_id = a2.process_id
    GROUP BY a1.machine_id
) as z
GROUP BY machine_id
