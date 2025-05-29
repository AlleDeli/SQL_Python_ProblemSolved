# https://school.programmers.co.kr/learn/courses/30/lessons/12933

def solution(n):
    a = []
    for i in str(n):
        a.append(i)
    a.sort(reverse=True)
    a2 = ''.join(a)
    a3 = int(a2)
    return a3
