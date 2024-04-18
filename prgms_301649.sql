# https://school.programmers.co.kr/learn/courses/30/lessons/301649
# 대장균의 크기에 따라 분류하기 
# https://school.programmers.co.kr/learn/courses/30/lessons/301649
# 대장균의 크기에 따라 분류하기 

WITH RANK_DATA AS (
    SELECT ID,
        PERCENT_RANK() OVER(ORDER BY SIZE_OF_COLONY DESC) AS SIZE_RANK
    FROM `ECOLI_DATA`
)
SELECT ID, 
    CASE 
        WHEN RD.SIZE_RANK <= 0.25 THEN "CRITICAL"
        WHEN RD.SIZE_RANK <= 0.50 THEN "HIGH"
        WHEN RD.SIZE_RANK <= 0.75 THEN "MEDIUM"
        ELSE "LOW"
    END AS COLONY_NAME
FROM `ECOLI_DATA` AS ED
LEFT JOIN `RANK_DATA` AS RD
USING (ID)
ORDER BY ID ASC;



