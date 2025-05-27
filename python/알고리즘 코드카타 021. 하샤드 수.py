def solution(x):
    a = []
    for i in str(x):
        a.append(i)
        
    list_a = list(map(int, a))
    
    b = 0
    for number in list_a:
        b += number
        
    if x % b == 0:
        return True
    else:
        return False
