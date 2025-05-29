# https://school.programmers.co.kr/learn/courses/30/lessons/12912

def solution(a, b):
    total = 0
    if a > b:
        for i in range(b, a+1):
            total += i  
    elif a < b:
        for i in range(a, b+1):
            total += i            
    else:
        total += a or b 
    return total
