-- https://school.programmers.co.kr/learn/courses/30/lessons/132201

SELECT PT_NAME,
       PT_NO,
       GEND_CD,
       AGE,
       if(TLNO is NULL, 'NONE', TLNO) as 'TLNO'
from patient
where AGE <= 12 and GEND_CD = 'W'
order by age desc, PT_NAME
