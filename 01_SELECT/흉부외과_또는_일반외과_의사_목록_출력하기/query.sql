-- 코드를 입력하세요
SELECT  T1.DR_NAME                              AS 'DR_NAME'
    ,   T1.DR_ID                                AS 'DR_ID'
    ,   T1.MCDP_CD                              AS 'MCDP_CD'
    ,   DATE_FORMAT(T1.HIRE_YMD, '%Y-%m-%d')    AS 'HIRE_YMD'
FROM    DOCTOR T1
WHERE   T1.MCDP_CD  IN ('CS', 'GS')
ORDER BY
        T1.HIRE_YMD DESC
    ,   T1.DR_NAME  ASC