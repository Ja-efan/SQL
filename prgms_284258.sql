# https://school.programmers.co.kr/learn/courses/30/lessons/284528
# 연간 평가점수에 해당하는 평가 등급 및 성과금 조회하기 

-- 기준점수 96 이상 -> S -> 연봉의 20%
-- 기준점수 90 이상 -> A -> 연봉의 15%
-- 기준점수 80 이상 -> B -> 연봉의 10%
-- 기준점수 80 미만 -> C -> 연봉의 0%

# SOLUTION 1 
WITH SCORES AS (
    SELECT EMP_NO, AVG(SCORE) AS SCORE
    FROM HR_GRADE
    GROUP BY EMP_NO
),
GRADES AS (
    SELECT EMP_NO, 
    CASE 
        WHEN SCORE >= 96 THEN "S"
        WHEN SCORE >= 90 THEN "A"
        WHEN SCORE >= 80  THEN "B"
    ELSE "C"
    END AS GRADE,
    CASE 
        WHEN SCORE >= 96 THEN 0.2
        WHEN SCORE >= 90 THEN 0.15
        WHEN SCORE >= 80 THEN 0.1
        ELSE 0
    END AS BONUS_RATE
    FROM SCORES
)
SELECT E.EMP_NO, E.EMP_NAME, G.GRADE, E.SAL * G.BONUS_RATE AS BONUS
FROM HR_EMPLOYEES AS E
LEFT JOIN GRADES AS G
USING (EMP_NO)
ORDER BY EMP_NO ASC;


# SOLUTION 2 
WITH GRADES AS (
    SELECT EMP_NO,
    CASE 
        WHEN AVG(SCORE) >= 96 THEN "S"
        WHEN AVG(SCORE) >= 90 THEN "A"
        WHEN AVG(SCORE) >= 80 THEN "B"
        ELSE "C"
    END AS GRADE
    FROM HR_GRADE
    GROUP BY EMP_NO 
)
SELECT E.EMP_NO, E.EMP_NAME, G.GRADE,
CASE 
    WHEN G.GRADE = "S" THEN E.SAL * 0.2
    WHEN G.GRADE = "A" THEN E.SAL * 0.15
    WHEN G.GRADE = "B" THEN E.SAL * 0.1
    ELSE 0
END AS BONUS
FROM HR_EMPLOYEES AS E
LEFT JOIN GRADES AS G
USING (EMP_NO)
ORDER BY E.EMP_NO;