for each in range(int(input())):
    m = int(input().split(' ')[0])
    a1 = []
    a2 = []
    for i in range(m):
        a1 += [int(k) for j in input() for k in j]
    for i in range(m):
        a2 += [int(k) for j in input() for k in j]
    if a1.count(1) != a2.count(1):
        print(-1)
    else:
        c = 0
        for j in range(len(a1)):
            if a1[j] != a2[j]: 
                c += 1
        print(c//2)
