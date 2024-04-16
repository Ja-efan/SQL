# 잔챙이 잡은 수 구하기 
# https://school.programmers.co.kr/learn/courses/30/lessons/293258
select count(id) as FISH_COUNT
from fish_info
where length is NULL