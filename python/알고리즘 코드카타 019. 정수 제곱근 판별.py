# https://school.programmers.co.kr/learn/courses/30/lessons/12934

def solution(n):
    total = 0
    for x in range(1, n+1):
        if  n == x ** 2:
            total = (x+1) ** 2
            break
                
        else:
            total = -1
            continue
    return total    
