-- 코드를 입력하세요
SELECT  T1.NAME     AS NAME
    ,   COUNT(*)    AS COUNT
FROM    ANIMAL_INS T1
GROUP BY
        T1.NAME
HAVING  COUNT(*) >= 2
    AND T1.NAME IS NOT NULL
ORDER BY
        T1.NAME ASC