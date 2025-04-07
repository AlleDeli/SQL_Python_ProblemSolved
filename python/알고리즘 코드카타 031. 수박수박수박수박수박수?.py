# https://school.programmers.co.kr/learn/courses/30/lessons/12922

def solution(n):
    odd = '수'
    even = '박'
    watermelon = '수박'
    
    if n % 2 == 0:
        n1 = int(n/2)
        return watermelon * n1
    
    elif n % 2 == 1:
        n2 = int(((n-1)/2))
        return watermelon * n2 + odd
