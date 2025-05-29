# https://school.programmers.co.kr/learn/courses/30/lessons/12932

def solution(n):
    a = []
    for i in str(n):
        a.append(i)
    a_int = list(map(int, a)) 
    a_int.reverse()
    return a_int
