-- 코드를 작성해주세요
SELECT  T1.ID           AS 'ID'
    ,   T1.EMAIL        AS 'EMAIL'
    ,   T1.FIRST_NAME   AS 'FIRST_NAME'
    ,   T1.LAST_NAME    AS 'LAST_NAME'
FROM    DEVELOPER_INFOS T1
WHERE   T1.SKILL_1 = 'Python'
    OR  T1.SKILL_2 = 'Python'
    OR  T1.SKILL_3 = 'Python'
ORDER BY
        T1.ID   ASC