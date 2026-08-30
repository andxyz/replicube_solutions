--f2
--137
--13.773

if (x<5 and x>-5) and (
	  (y<5 and y>-5) or (z<5 and z>-5)
	) or (y<5 and y>-5) and (z<5 and z>-5) then 
return end -- negative space, empty tunnels thru middle

if x~=7 and y~=7 and z~=7 and x~=-7 and y~=-7 and z~=-7 
	then return -- negative space, a point on the line always has a 7 or -7
end
 
local offset= sign(x+y+z)|1 
local data= {abs(x+offset),abs(y+offset),abs(z+offset)}
sort(data)

if data[2]~=6 or data[3]~=8 then return end
if data[1]>=5 then
	return YELLOW else return BLACK
end
