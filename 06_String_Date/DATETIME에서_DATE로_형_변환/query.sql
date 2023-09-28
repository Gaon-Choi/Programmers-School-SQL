-- 코드를 입력하세요
SELECT  T1.ANIMAL_ID                            AS ANIMAL_ID
    ,   T1.NAME                                 AS NAME
    ,   DATE_FORMAT(T1.DATETIME, '%Y-%m-%d')    AS 날짜
FROM    ANIMAL_INS T1
ORDER BY
        T1.ANIMAL_ID    ASC