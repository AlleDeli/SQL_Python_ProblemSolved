# https://school.programmers.co.kr/learn/courses/30/lessons/87389

def solution(n):
    a = []
    for i in range(1, n+1):
        if n % i == 1:
            a.append(i)
        else:
            continue
    return min(a)
