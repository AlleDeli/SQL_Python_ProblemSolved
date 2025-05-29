# https://school.programmers.co.kr/learn/courses/30/lessons/12903

def solution(s):
    if len(s) % 2 != 0:
        target1 = int((len(s)+1)/2)
        return s[target1-1]
    elif len(s) % 2 == 0:
        target2 = int(len(s)/2)
        return s[target2-1:target2+1]
