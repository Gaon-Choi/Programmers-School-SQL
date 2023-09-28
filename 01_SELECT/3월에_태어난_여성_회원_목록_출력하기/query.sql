-- 코드를 입력하세요
SELECT  T1.MEMBER_ID                                AS MEMBER_ID
    ,   T1.MEMBER_NAME                              AS MEMBER_NAME
    ,   T1.GENDER                                   AS GENDER
    ,   DATE_FORMAT(T1.DATE_OF_BIRTH, '%Y-%m-%d')   AS DATE_OF_BIRTH
FROM    MEMBER_PROFILE T1
WHERE   T1.GENDER               = 'W'
    AND MONTH(T1.DATE_OF_BIRTH) = 3
    AND T1.TLNO IS NOT NULL
ORDER BY
        T1.MEMBER_ID    ASC