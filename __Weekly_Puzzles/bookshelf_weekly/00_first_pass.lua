-- first_pass
if x>3 or x<-3 then return end
if z>1 or z<-3 then return end
if z==-3 then return BROWN end
if y%5==0 then return BROWN end
if x==3 or x==-3 then return BROWN end
if z==1 then return end
if y==4 or y==-1 then return end
if y>0 then
	return ({3,1,4,1,5})[x+3]
else
	return ({9,2,6,5,3})[x+3]
end
