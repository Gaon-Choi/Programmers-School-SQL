-- 코드를 작성해주세요

SELECT  SCORE
    ,   T1.EMP_NO
    ,   EMP_NAME
    ,   POSITION
    ,   EMAIL
FROM    HR_EMPLOYEES T1
JOIN    (
SELECT  TT1.EMP_NO      AS 'EMP_NO'
    ,   SUM(TT1.SCORE)  AS 'SCORE'
FROM    HR_GRADE    TT1
GROUP BY
        TT1.EMP_NO
) T2
    ON  T2.EMP_NO   = T1.EMP_NO
JOIN    HR_DEPARTMENT T3
    ON  T3.DEPT_ID  = T1.DEPT_ID
ORDER BY
        T2.SCORE    DESC
LIMIT   1
--  HR_DEPARTMENT   : 부서 정보
--  HR_EMPLOYEES    : 사원 정보
--  HR_GRADE        : 2022년 사원의 평가 정보