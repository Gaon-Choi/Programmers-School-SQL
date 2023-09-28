-- 코드를 입력하세요
SELECT  T1.ANIMAL_ID    AS ANIMAL_ID
    ,   T1.NAME         AS NAME
FROM    ANIMAL_INS T1
WHERE   LOWER(T1.NAME) LIKE '%el%'
    AND T1.NAME IS NOT NULL
    AND T1.ANIMAL_TYPE  = 'Dog'
ORDER BY
        T1.NAME ASC