-- first_pass
-- 175
-- 11.216

if x<0 then return end -- negative space

-- unique stuff on x==0 and z==0 
if x==0 and z==0 then
	if y==4 then return WHITE end
	if y<=0 and y>=-2 then
		if t==0 and y==0 then return WHITE end
		if t==1 and y==-1 then return WHITE end
		if t==2 and y==-2 then return WHITE end
		return
	end
end

-- criss cross
if x==0 and (z==y or z==-y)  
	or z==0 and (x==y or x==-y) then 
	return GREY
end

-- half circle
local c= (x*x+z*z)^.5
if (y==5 or y==-5) and c<=5.5 and c>=5 then 
	return GREY
end

if y+c/3+3<=0 and c<5.5 then return WHITE end -- bottom sand
if c<=y and y<4 and c<5.5 then return WHITE end -- top sand
