d={}
a=[6,6,3,9,3,5,1]
k=12

count=0
for i in a:
    if not i in d:
        d[i]=True
    else:
        if (i*2 == k):
            count += 1
print(d)
for j in d:
    if(k-j) in d and d[j] and j != (k-j):
            print(j, k-j)
            count += 1
            d[k-j]=False

print(count)
