a = [2, 3, 6, 7, 40, 45]
b = [1, 9, 10, 10, 11, 40]
c = []

def merge_array():
  i = 0
  j = 0
 
  while (i<len(a) and j<len(b)):
    if(a[i]<b[j]):
      c.append(a[i])
      i = i+1
    else:
      c.append(b[j])
      j = j+1
  
  while(i<len(a)):
    c.append(a[i])
    i = i+1
  
  while(j<len(b)):
    c.append(b[j])
    j = j+1
 
merge_array()
for i in c:
  print (i)
