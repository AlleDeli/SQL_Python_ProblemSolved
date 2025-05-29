# https://school.programmers.co.kr/learn/courses/30/lessons/12931

def solution(number):
    a = []
    for i in str(number):
        a.append(i)
    a_int = list(map(int, a))    
    total = 0
    for z in a_int:
        total += z
    return total
