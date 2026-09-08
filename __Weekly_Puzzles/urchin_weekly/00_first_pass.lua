--first_pass
--73
--30.641

return 
(
x*x==y*y and z*z==y*y 
or x|y==0 
or y|z==0 
or x|z==0
or abs(x)==abs(y) and z==0
or abs(z)==abs(y) and x==0
or abs(x)==abs(z) and y==0
) and BLACK