-- 코드를 입력하세요
SELECT  T1.APNT_NO  AS 'APNT_NO'
    ,   T2.PT_NAME  AS 'PT_NAME'
    ,   T2.PT_NO    AS 'PT_NO'
    ,   T1.MCDP_CD  AS 'MCDP_CD'
    ,   T3.DR_NAME  AS 'DR_NAME'
    ,   T1.APNT_YMD AS 'APNT_YMD'
FROM    APPOINTMENT T1
JOIN    PATIENT T2
    ON  T2.PT_NO    = T1.PT_NO
JOIN    DOCTOR T3
    ON  T3.DR_ID    = T1.MDDR_ID
WHERE   DATE(T1.APNT_YMD)   = '2022-04-13'
    AND T1.APNT_CNCL_YN     = 'N'
    AND T1.MCDP_CD          = 'CS'
ORDER BY
        T1.APNT_YMD ASC

-- PATIENT      : 환자
-- DOCTOR       : 의사
-- APPOINTMENT  : 진료 예약목록