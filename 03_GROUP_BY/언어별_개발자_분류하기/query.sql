-- 코드를 작성해주세요
SELECT  GRADE
    ,   ID
    ,   EMAIL
FROM    (
    SELECT  CASE    WHEN    T1.SKILL_CODE & (SELECT SUM(CODE)   FROM SKILLCODES WHERE CATEGORY = 'Front End') > 0
                        AND T1.SKILL_CODE & (SELECT CODE        FROM SKILLCODES WHERE NAME = 'Python'       ) > 0 THEN 'A'
                    WHEN    T1.SKILL_CODE & (SELECT CODE        FROM SKILLCODES WHERE NAME = 'C#'           ) > 0 THEN 'B'
                    WHEN    T1.SKILL_CODE & (SELECT SUM(CODE)   FROM SKILLCODES WHERE CATEGORY = 'Front End') > 0 THEN 'C'
                    ELSE    ''
            END AS 'GRADE'
        ,   T1.ID
        ,   T1.EMAIL
    FROM    DEVELOPERS T1
) T
WHERE   GRADE <> ''
ORDER BY
        GRADE   ASC
    ,   ID      ASC