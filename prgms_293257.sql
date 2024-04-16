# https://school.programmers.co.kr/learn/courses/30/lessons/293257
# 물고기 종류 별 잡은 수 구하기 

# # sol 1
select count(fni.fish_name) as FISH_COUNT, fni.fish_name
from fish_info as fi, fish_name_info as fni
where fi.fish_type = fni.fish_type
group by fni.fish_name
order by fish_count desc;

# # sol 2
SELECT COUNT(FNI.FISH_NAME) AS FISH_COUNT, FNI.FISH_NAME
FROM FISH_INFO AS FI
JOIN FISH_NAME_INFO AS FNI 
WHERE FI.FISH_TYPE = FNI.FISH_TYPE
GROUP BY FNI.FISH_NAME
ORDER BY FISH_COUNT DESC

# sol 3 
WITH CTE AS (
    SELECT COUNT(FISH_TYPE) AS FISH_COUNT, FISH_TYPE
    FROM FISH_INFO
    GROUP BY FISH_TYPE
)

SELECT CTE.FISH_COUNT, FNI.FISH_NAME
FROM CTE LEFT JOIN FISH_NAME_INFO AS FNI
USING (FISH_TYPE)
ORDER BY FISH_COUNT DESC;