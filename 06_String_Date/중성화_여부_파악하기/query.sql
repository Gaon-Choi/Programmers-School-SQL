-- 코드를 입력하세요
SELECT  ANIMAL_ID
    ,   NAME
    ,   CASE WHEN (
            INSTR(T1.SEX_UPON_INTAKE, 'Neutered') > 0
            OR
            INSTR(T1.SEX_UPON_INTAKE, 'Spayed')  > 0
        )   THEN    'O'
        ELSE        'X'
        END AS '중성화'
FROM    ANIMAL_INS T1
ORDER BY
        T1.ANIMAL_ID    ASC
    