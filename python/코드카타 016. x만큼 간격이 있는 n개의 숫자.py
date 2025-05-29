# https://school.programmers.co.kr/learn/courses/30/lessons/12954

def solution(x, n):
    if x != 0:
        answer = [ x for x in range(x, (n+1)*x, x)]
       
    else:
        answer = []
        i = 1
        while i <= n:    
            answer.append(0)
            i += 1 
    return answer
