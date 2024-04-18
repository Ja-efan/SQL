# https://school.programmers.co.kr/learn/courses/30/lessons/301650
# 특정 세대의 대장균 찾기 

# 3세대 대장균의 ID를 출력하는 SQL문, ID에 대해 오름차순 정렬

SELECT * FROM `ECOLI_DATA`;

WITH RECURSIVE GEN AS (
    # parent_id가 null인 대장균들을 1세대로 지정
    -- NON RECURSIVE
    SELECT ID, PARENT_ID, 1 AS GENERATION
    FROM `ECOLI_DATA`
    WHERE PARENT_ID IS NULL
    UNION ALL 
    -- RECURSIVE 
    SELECT ED.ID, ED.`PARENT_ID`, G.GENERATION + 1
    FROM `ECOLI_DATA` AS ED
        INNER JOIN GEN AS G # 재귀 쿼리 부분에서 재귀 CTE의 참조는 LEFT JOIN의 오른쪽 인자에 위치해서는 안된다. 
        ON ED.`PARENT_ID` = G.ID
)
SELECT `ID`
FROM GEN
WHERE GENERATION = 3
ORDER BY `ID`;
