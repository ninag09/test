
s="pcmbzpcmbzppcmmbbzz"

d={}
b={'p':0,'c':0,'m':0,'b':0,'z':0}
for i in s:
    if i in b:
        b[i]=1
    if i in d:
        d[i] += 1
    else:
        d[i]=1

for j in b:
    if not b[j]:
        return 0

minGroups=500000;
for k in d:
    if(d[k] < minGroups):
        minGroups=d[k]
return minGroups
