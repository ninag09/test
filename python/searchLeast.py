#!/usr/bin/python
#Nirmith's
arr = [4,2,1,3,5,7,8,1,435,234,68,2,1,3,7,9,]
mini = arr[0]
loc = 0
for i in range(1,len(arr)):
    if mini >= arr[i]:
        mini = arr[i]
        loc = i
print "length of array is: ",len(arr)
print "Minimum location is: ",loc+1


