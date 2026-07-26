-- f2
-- 111
-- 7.464

if z==-16 then return WHITE end

-- simple negative space early exit
if x<=-9 or x>=9 or y>=11 or y<=-11 then return end

if z==-5 or z==0 or z==5 then
	local i= z/5 
	local X= (x-i)^2 --x_component
	local Y= (y-i*3)^2 --y_component
	local c= X+Y --circle
	if c<=52 and c>=11 then return BLACK end -- black circles on special locations
	if c>5 then return end -- tiny weird tunnel the line is within
	end
if x==y//2.9 and y==z//1.5 then return YELLOW end -- the line

-- Note: finding the intersecting planes for the line was extremely difficult and errorprone.
-- I didnt have a good way to find it and there was some fiddling and hoping

-- fancy negative space attempt
--local slant= z*3/5
--if slant-8>=y or slant+8<=y then return end
--slant= z/5
--if slant-8>=x or slant+8<=x then return end

