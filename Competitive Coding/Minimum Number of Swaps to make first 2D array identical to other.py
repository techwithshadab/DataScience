for _ in range(int(input())):
    a=''.join([input() for _ in range(int(input().split(' ')[0])*2)])
    x=len(a)//2
    print(sum([a[i]!=a[i+x] for i in range(x)])//2) if a[:x].count('0')==a[x:].count('0') else print(-1)
