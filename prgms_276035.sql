# https://school.programmers.co.kr/learn/courses/30/lessons/276035
# FrontEnd 개발자 찾기
# SKILLCODES & DEVELOPERS 

WITH FRONTEND AS (
    select SUM(CODE) AS CODE 
    from `SKILLCODES`
    where category = 'front end'
)
SELECT ID, EMAIL, FIRST_NAME, LAST_NAME 
FROM DEVELOPERS 
WHERE SKILL_CODE & (SELECT * FROM FRONTEND) != 0
ORDER BY ID ASC; 