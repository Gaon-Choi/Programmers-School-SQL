-- 코드를 작성해주세요
SELECT  T1.EMP_NO
    ,   T1.EMP_NAME
    ,   T2.GRADE
    ,   T1.SAL * CASE    T2.GRADE
            WHEN 'S'    THEN 0.2
            WHEN 'A'    THEN 0.15
            WHEN 'B'    THEN 0.1
            ELSE 0
        END AS BONUS
FROM    HR_EMPLOYEES T1
JOIN    (
SELECT  TT1.EMP_NO
    ,   CASE    WHEN SUM(TT1.SCORE) / 2 >= 96 THEN 'S'
                WHEN SUM(TT1.SCORE) / 2 >= 90 THEN 'A'
                WHEN SUM(TT1.SCORE) / 2 >= 80 THEN 'B'
                ELSE 'C'
        END AS 'GRADE'
FROM    HR_GRADE TT1
GROUP BY
        TT1.EMP_NO
) T2
    ON  T2.EMP_NO   = T1.EMP_NO
ORDER BY
        T1.EMP_NO