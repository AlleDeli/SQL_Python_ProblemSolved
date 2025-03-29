-- https://school.programmers.co.kr/learn/courses/30/lessons/132203

SELECT 
    DR_NAME,
    DR_ID,
    MCDP_CD,
    substr(HIRE_YMD, 1, 10) "HIRE_YMD"
from doctor
where MCDP_CD in ('CS', 'GS')
order by HIRE_YMD desc, DR_NAME asc
