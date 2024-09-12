-- 코드를 작성해주세요
SELECT  T1.ID   AS ID
    ,   CASE
            WHEN    T1.SIZE_OF_COLONY <= 100    THEN 'LOW'
            WHEN    T1.SIZE_OF_COLONY <= 1000   THEN 'MEDIUM'
            ELSE    'HIGH'
        END AS SIZE
FROM    ECOLI_DATA T1
ORDER BY
        T1.ID   ASC