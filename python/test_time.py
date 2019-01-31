#!/usr/bin/python
import math
import timeit

numInputs = (int (input()))

start = timeit.default_timer()
circles = list()
for i in range(0, numInputs):
    inp = input().split(' ')
    circleInfo = list(map(int, inp))
    circles.append(circleInfo)

def mergeSort(c):
	if len(c) > 1:
		mid = len(c)//2 
		left = c[:mid]
		right = c[mid:]
		
		mergeSort(left)
		mergeSort(right)
		
		i = 0
		j = 0
		k = 0
		
		while i < len(left) and j < len(right):
			if left[i] > right[j]:
				c[k] = left[i]
				i = i + 1
			else:
				c[k] = right[j]
				j = j + 1
			k = k + 1
		
		while i < len(left):
			c[k] = left[i]
			i = i + 1
			k = k + 1
			
		while j < len(right):
			c[k] = right[j]
			j = j + 1
			k = k + 1
	return c

merge = timeit.default_timer()
sortedCircles = mergeSort(circles)
mergesortend = timeit.default_timer()

maxAltitude = [0]*len(sortedCircles)
	
#def insideother(c1, c2):
#    if c1[2] > c2[2]:
#        return (math.sqrt((c1[0] - c2[0])**2 + (c1[1] - c2[1])**2) <= c1[2])
#    else:
#        return (math.sqrt((c1[0] - c2[0])**2 + (c1[1] - c2[1])**2) <= c2[2])
#	return (((c1[0] - c2[0])**2 + (c1[1] - c2[1])**2)) <= ((c1[2] - c2[2])**2)

algost = timeit.default_timer()
length = len(sortedCircles)
for i in range(0, length):
    temp = sortedCircles[i]
    for j in range(0,i):
		if not (((sortedCircles[j][0] - temp[0])**2 + (sortedCircles[j][1] - temp[1])**2) >=
            (sortedCircles[j][2]
            - temp[2])**2):
		#if insideother(sortedCircles[j], temp):
			if maxAltitude[i] < ( 1 + maxAltitude[j]):
			    maxAltitude[i] = ( 1 + maxAltitude[j])
algoend = timeit.default_timer()

print (max(maxAltitude))

stop = timeit.default_timer()
print start, stop
print 'total',(stop - start)
print 'sort',(mergesortend - merge)
print 'algoTime',(algoend - algost)
#print 'algoTime',(stop - algost)
