-- https://school.programmers.co.kr/learn/courses/30/lessons/132204

SELECT a.apnt_no,
       p.pt_name,
       p.pt_no,
       a.mcdp_cd,
       d.dr_name,
       a.apnt_ymd
FROM patient p 
INNER JOIN appointment a ON p.pt_no=a.pt_no
INNER JOIN doctor d ON a.mddr_id=d.dr_id
WHERE DATE(apnt_ymd) = '2022-04-13'
AND a.apnt_cncl_yn <> 'Y'
AND a.mcdp_cd = 'CS'
ORDER BY a.apnt_ymd
