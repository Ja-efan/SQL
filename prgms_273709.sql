# 조건에 맞는 아이템들의 가격의 총합 구하기 
# https://school.programmers.co.kr/learn/courses/30/lessons/273709

select sum(price) as TOTAL_PRICE 
from ITEM_INFO 
where rarity = "LEGEND";