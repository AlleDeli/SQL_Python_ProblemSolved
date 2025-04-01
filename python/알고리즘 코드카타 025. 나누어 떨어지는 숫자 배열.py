--https://school.programmers.co.kr/learn/courses/30/lessons/12910

def solution(arr, divisor):
    count = 0
    list1 = []
    for i in arr:
        if i % divisor == 0:
            count += 1
            list1 += [i]
        else:
            continue
    
    if count >= 1:
        list1.sort()
        return list1
            
    else:
        list_none = [-1]
        return list_none
