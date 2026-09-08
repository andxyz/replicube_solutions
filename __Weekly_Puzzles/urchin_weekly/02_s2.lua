--s1
--65
--24.420
x= abs(x)
y= abs(y)
z= abs(z)
return
(
x==y and z==y
or z==0 and x==y
or y==0 and x==z 
or x==0 and y==z
or x==-y 
or y==-z
or x==-z
 
) and BLACK
