#!/usr/bin/python
import sys
num = int(raw_input())
n = num
total = 0
while(n):
    total = total + n
    n-=1
print

a = 1
b = 1
for i in range (0,num):
    j = i+1
    while j:
        sys.stdout.write(str(b)+' ')
        c = a+b
        a,b = b,c
        j -= 1
    sys.stdout.write('\n')
    sys.stdout.flush()

