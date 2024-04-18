-- Active: 1713328275487@@127.0.0.1@3306@programmers
# https://school.programmers.co.kr/learn/courses/30/lessons/284531 
# 노선별 평균 역 사이 거리 조회하기 

SELECT `ROUTE`, CONCAT(ROUND(SUM(`D_BETWEEN_DIST`),1),"km") AS TOTAL_DISTANCE,
CONCAT(ROUND(AVG(`D_BETWEEN_DIST`),2),"km") AS AVERAGE_DISTANCE
FROM `SUBWAY_DISTANCE`
GROUP BY `ROUTE` 
ORDER BY SUM(`D_BETWEEN_DIST`) DESC;
 # ORDER BY를 TOTAL_DISTANCE로 할 경우 뒤에 'km'가 붙은 문자열로 인식되어 문자열 정렬 방식이 적용된다.
 # 따라서 ORDER BY 절에는 SUM()함수로 묶어준 데이터 그대로 사용해야 한다.  
