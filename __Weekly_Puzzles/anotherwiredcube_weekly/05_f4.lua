--f4
--147
--13.005

local X= x*x
local Y= y*y
local Z= z*z
if X<=16 and (Y<=16 or Z<=16) or Y<=16 and Z<=16 then return end  -- negative space, empty tunnels thru middle
if X~=49 and Y~=49 and Z~=49 then return end -- negative space, a point on the line always has a 7 or -7
if x*y>=36 or x*z>=36 or y*z>=36 then return end -- negative space, the tiny cubes in corners

local offset= sign(x+y+z)|1
local data= {abs(x+offset),abs(y+offset),abs(z+offset)}
sort(data)

if data[2]==6 and data[3]==8 then
	if data[1]>=5 then
		return YELLOW else return BLACK
	end
end
