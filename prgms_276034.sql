# https://school.programmers.co.kr/learn/courses/30/lessons/276034
# 조건에 맞는 개발자 찾기 
# SKILLCODES & DEVELOPERS

# 2진수로 나타낼 수 있는 컬럼이 주어지고, 해당 컬럼을 사용하는 문제라면 
# 비트 연산자 &(and), ^(xor), |(or), ~(not)의 사용을 고려하자 

SELECT ID, EMAIL, FIRST_NAME, LAST_NAME
FROM `DEVELOPERS`
WHERE SKILL_CODE & (SELECT CODE FROM `SKILLCODES` WHERE NAME = 'Python') != 0 
    OR SKILL_CODE & (SELECT CODE FROM `SKILLCODES` WHERE NAME = 'C#') != 0
ORDER BY ID ASC;