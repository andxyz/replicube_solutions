-- DOUBLES AS A FORTUNE-TELLING
-- DEVICE HAHA

-- hmmm... I wonder what else we can do to speed it up
local X = x^2
local Z = z^2
local c = X + y^2 + Z
if c > 63 then return end
if c < 64 then 
	if y ~= 7 then return BLACK end
	if Z<2 and X<9 then
		if X==1 and z==0 then return WHITE end 
		return BLACK 
	end
	return WHITE
end
