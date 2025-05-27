# https://school.programmers.co.kr/learn/courses/30/lessons/12943

def solution(num):
    if num == 1:
        return 0
    else:
        count = 0
        while count <= 500:
            if num == 1:
                return count
            else:
                if num % 2 ==0:
                    num = num / 2
                elif num % 2 != 0:
                    num = (num * 3) + 1
            count += 1
            
        return -1
