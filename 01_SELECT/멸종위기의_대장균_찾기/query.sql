-- 코드를 작성해주세요

WITH RECURSIVE cte_count 
AS ( 
    SELECT  *
        ,   (
                SELECT  COUNT(*)
                FROM    ECOLI_DATA AS TT1
                WHERE   TT1.PARENT_ID = T1.ID
            )   AS CHILD_COUNT
        ,   1   AS GENERATION
    FROM    ECOLI_DATA AS T1
    WHERE   PARENT_ID IS NULL
    
    UNION ALL
    
    SELECT  T1.*
        ,   (
                SELECT  COUNT(*)
                FROM    ECOLI_DATA AS TT1
                WHERE   TT1.PARENT_ID = T1.ID
            )   AS CHILD_COUNT
        ,   T2.GENERATION + 1
    FROM    ECOLI_DATA AS T1
    JOIN    cte_count AS T2
        ON  T1.PARENT_ID = T2.ID
)

SELECT  COUNT(*)    AS COUNT
    ,   GENERATION
FROM    cte_count
WHERE   CHILD_COUNT = 0
GROUP BY
        GENERATION
ORDER BY
        GENERATION