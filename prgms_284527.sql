# https://school.programmers.co.kr/learn/courses/30/lessons/284527
# 조건에 맞는 사원 정보 조회하기

# 점수, 사번, 성명, 직책, 이메일 

WITH GRADE AS(
    SELECT EMP_NO, SUM(SCORE) AS SCORE
    FROM HR_GRADE
    GROUP BY EMP_NO
)
SELECT G.SCORE, E.`EMP_NO`, E.`EMP_NAME`, E.`POSITION`, E.`EMAIL`
FROM GRADE AS G
LEFT JOIN `HR_EMPLOYEES` AS E USING (EMP_NO)
WHERE G.SCORE = (SELECT MAX(SCORE) FROM GRADE);
