-- 코드를 입력하세요
SELECT  T1.ANIMAL_ID        AS ANIMAL_ID
    ,   T1.NAME             AS NAME
    ,   T1.SEX_UPON_INTAKE  AS SEX_UPON_INTAKE
FROM    ANIMAL_INS T1
WHERE   T1.NAME IN ('Lucy', 'Ella', 'Pickle', 'Rogan', 'Sabrina', 'Mitty')
ORDER BY
        T1.ANIMAL_ID    ASC