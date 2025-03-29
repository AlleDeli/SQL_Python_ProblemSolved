-- https://school.programmers.co.kr/learn/courses/30/lessons/132202

SELECT MCDP_CD as '진료과코드',
       count(substr(APNT_YMD, 6, 2)) as '5월예약건수'
from appointment
where substr(APNT_YMD, 6, 2) = 05
group by 1
order by 2, 1
