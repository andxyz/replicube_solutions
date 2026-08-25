--f1
--61
--4.172
if z~=0 then return end
if y==2 or y==-2 then return BLUE end
if x==2 or x==-2 then return BLUE end
if t==0 then
	if y==-abs(x) then return WHITE end
else 
	if y==abs(x) then return WHITE end
end
return BLUE
