# https://school.programmers.co.kr/learn/courses/30/lessons/12948

def solution(phone_number):
    back = phone_number[-4:]
    front = phone_number[0:-4]
    list1 = []
    for i in range(len(front)):
        i = '*'
        list1.append(i)
    list2 = ''.join(list1)
    answer = list2 + back
    return answer
