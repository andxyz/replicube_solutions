--s1
--68
--24.997
x=abs(x)
y=abs(y)
z=abs(z)
return
(
x==y and z==y
or x|y==0 
or y|z==0 
or x|z==0
or x==y and z==0
or x==z and y==0
or y==z and x==0
) and BLACK
