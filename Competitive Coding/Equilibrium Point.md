##### Given an array A of N positive numbers. The task is to find the position where equilibrium first occurs in the array. Equilibrium position in an array is a position such that the sum of elements before it is equal to the sum of elements after it.

<b>Input:</b> <br>
The first line of input contains an integer T, denoting the number of test cases. Then T test cases follow. First line of each test case contains an integer N denoting the size of the array. Then in the next line are N space separated values of the array A.
<br>
<br>
<b>Output:</b><br>
For each test case in a new  line print the position at which the elements are at equilibrium if no equilibrium point exists print -1.
<br>
<br>
<b>Constraints:</b><br>
1 <= T <= 100<br>
1 <= N <= 106<br>
1 <= Ai <= 108<br>
<br>
<br>
<b>Example:</b><br>
<b>Input:</b><br>
2<br>
1<br>
1<br>
5<br>
1 3 5 2 2<br>
<br>
<b>Output:</b><br>
1<br>
3<br>
<br>
<b>Explanation:</b><br>
Testcase 1: Since its the only element hence its the only equilibrium point.<br>
Testcase 2: For second test case equilibrium point is at position 3 as elements below it (1+3) = elements after it (2+2).
<br>
<br>
<b>Python Solution:</b><br>

    def eqindex(a):
        l = 0
        t = sum(a)
        for i, d in enumerate(a):
            t -= d
            if l == t:
                return i+1
            l += d
        return -1
   
    for _ in range(int(input())):
        n = int(input())
        q = list(map(int, input().rstrip().split()))
        print(eqindex(q))
        
<br>
<b>Reference:</b> <a href="https://rosettacode.org/wiki/Equilibrium_index"> Equilibrium Index</a> <br>
<b> Problem originally posted on <a href="https://practice.geeksforgeeks.org/problems/equilibrium-point/0/?track=md-arrays&batchId=144">Geeks For Geeks</a></b>
