-- 코드를 작성해주세요
SELECT  T1.ITEM_ID      AS 'ITEM_ID'
    ,   T1.ITEM_NAME    AS 'ITEM_NAME'
    ,   T1.RARITY       AS 'RARITY'
FROM    ITEM_INFO T1
JOIN    ITEM_TREE T2
    ON  T2.ITEM_ID  = T1.ITEM_ID
WHERE   T2.PARENT_ITEM_ID   IN (
    SELECT  TT1.ITEM_ID 
    FROM    ITEM_INFO TT1
    WHERE   TT1.RARITY  = 'RARE'
)
ORDER BY
        T2.ITEM_ID  DESC