-- https://school.programmers.co.kr/learn/courses/30/lessons/131120

SELECT 
    member_id,
    member_name,
    gender,
    substr(date_of_birth,1,10) As date_of_birth
FROM member_profile
WHERE (TLNO is not NULL)
AND (MONTH(date_of_birth) = '3')
AND (gender = 'W')
ORDER BY 1
