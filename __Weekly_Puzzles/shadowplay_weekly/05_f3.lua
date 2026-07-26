-- f3
-- 174
-- 7.323

if z==-16 then return WHITE end -- wall

-- simple negative space early exit
if x<=-9 or x>=9 or y>=11 or y<=-11 then return end

if x==y//2.9 and y==z//1.5 then return YELLOW end -- the line

-- Doing "the line" first is expensive but good 
-- because then we can do this simple bounds check for negative space
if z>5 or z<-5 then return end

if z==0 then
	local c= x^2+y^2 --circle
	if c<=52 and c>=11 then return BLACK end -- black circle on special locations
	return
end
if z==-5 then
	local X= (x+1)^2 --x_component
	local Y= (y+3)^2 --y_component
	local c= X+Y --circle
	if c<=52 and c>=11 then return BLACK end -- black circle on special locations
	return
end
if z==5 then
	local X= (x-1)^2 --x_component
	local Y= (y-3)^2 --y_component
	local c= X+Y --circle
	if c<=52 and c>=11 then return BLACK end -- black circle on special locations
	return
end

-- Note: finding the intersecting planes for the line was extremely difficult and errorprone.
-- I didnt have a good way to find it and there was some fiddling and hoping

-- fancy negative space attempt
--local slant= z*3/5
--if slant-8>=y or slant+8<=y then return end
--slant= z/5
--if slant-8>=x or slant+8<=x then return end
