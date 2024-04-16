# https://school.programmers.co.kr/learn/courses/30/lessons/298516
# 한 해에 잡은 물고기 수 구하기 

# SOL 1 
SELECT COUNT(ID) AS FISH_COUNT
FROM FISH_INFO
WHERE TIME LIKE "2021%"