-- 코드를 입력하세요
SELECT  COUNT(*)    AS USERS
FROM    USER_INFO T1
WHERE   T1.AGE >= 20
    AND T1.AGE <= 29
    AND YEAR(JOINED) = '2021'