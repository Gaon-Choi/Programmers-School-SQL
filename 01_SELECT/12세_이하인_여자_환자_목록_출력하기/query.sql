-- 코드를 입력하세요
SELECT  T1.PT_NAME  AS PT_NAME
    ,   T1.PT_NO    AS PT_NO
    ,   T1.GEND_CD  AS GEND_CD
    ,   T1.AGE      AS AGE
    ,   CASE WHEN T1.TLNO IS NULL
        THEN    'NONE'
        ELSE    T1.TLNO
        END         AS TLNO
FROM    PATIENT T1
WHERE   T1.AGE      <= 12
    AND T1.GEND_CD  = 'W'
ORDER BY
        T1.AGE      DESC
    ,   T1.PT_NAME  ASC