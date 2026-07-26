-- f1
-- 114
-- 8.736

if z==-16 then return WHITE end

-- simple negative space early exit
if x<=-9 or x>=9 or y>=11 or y<=-11 then return end

local i= z/5
local X= (x-i)^2
local Y= (y-i*3)^2
local c= X+Y
if c>=53 then return end -- early exit on bigger than circle 
if z==-5 or z==0 or z==5 then
	if c>=11 then return BLACK end -- black circles on special locations
end
if c>5 then return end -- weird tunnel the line happens to go thru
if x==y//2.9 and y==z//1.5 then return YELLOW end -- the line

-- fancy negative space attempt
--local slant= z*3/5
--if slant-8>=y or slant+8<=y then return end
--slant= z/5
--if slant-8>=x or slant+8<=x then return end
