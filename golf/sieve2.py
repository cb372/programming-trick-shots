m,n,r=set(),1001,range
for i in r(2,n):
 if{i}-m:
	print i
	for j in r(i*i,n,i):m.add(j)
