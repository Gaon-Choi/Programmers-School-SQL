-- 코드를 입력하세요
SELECT  T1.MCDP_CD  AS '진료과코드'
    ,   COUNT(*)    AS '5월예약건수'
FROM    APPOINTMENT T1
WHERE   YEAR(T1.APNT_YMD)   = 2022
    AND MONTH(T1.APNT_YMD)  = 5
GROUP BY
        T1.MCDP_CD
ORDER BY
        COUNT(*)    ASC
    ,   T1.MCDP_CD  ASC
    