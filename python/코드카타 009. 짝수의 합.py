# https://school.programmers.co.kr/learn/courses/30/lessons/120831

def solution(n):
    number = 0
    if n % 2 == 0:  
        for i in range(2, n+1, 2):
                number += i            
    else:
        for i in range(2, n, 2):
                number += i
    return number
                
