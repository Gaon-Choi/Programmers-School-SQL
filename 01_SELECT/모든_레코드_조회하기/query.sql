SELECT  T1.ANIMAL_ID        AS ANIMAL_ID
    ,   T1.ANIMAL_TYPE      AS ANIMAL_TYPE
    ,   T1.DATETIME         AS DATETIME
    ,   T1.INTAKE_CONDITION AS INTAKE_CONDITION
    ,   T1.NAME             AS NAME
    ,   T1.SEX_UPON_INTAKE  AS SEX_UPON_INTAKE
FROM    ANIMAL_INS T1
ORDER BY
        T1.ANIMAL_ID ASC