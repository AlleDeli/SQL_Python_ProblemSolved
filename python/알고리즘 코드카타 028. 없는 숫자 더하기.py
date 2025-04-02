# https://school.programmers.co.kr/learn/courses/30/lessons/86051

def solution(numbers):
    alpha1 = 45
    alpha2 = 0
    for i in numbers:
        if i in range(0, 10):
            alpha2 += i
    
    answer = alpha1 - alpha2

    return answer
