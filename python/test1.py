#!/usr/bin/python
a=0
for b in range(0,10,2):
    a += b + 1

def foo(n):
    for x in range(n):
        yield x**3

for x in foo(5):
    print x,
