-- f1
-- 116
-- 20.502

-- Break the ground!
local shape= 6*exp((-x^2-z^2)/64)
if y-1>=shape then return end

local xyz= x+y+z
if xyz>0 then
	if y+4>=shape then return end
	local cindex= y//2+5
	if cindex>2 then
		return GREEN else return ({16,15,11,11,11})[cindex]
	end
end
local cindex= (y+1)//2+5
if cindex>5 then
	return GREEN else return ({3,2,1,16,15})[cindex]
end
