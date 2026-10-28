-- first_pass
-- 137
-- 23.927

-- Break the ground!
local xyz= x+y+z
local shape= 6*exp((-x^2-z^2)/64)

if xyz>0 then
	local mound= y+4 < shape
	if mound then
		local cindex= y//2+5
		if cindex>2 then
			return GREEN else return ({16,15,11,11,11})[cindex]
		end
	end
else
	local mound= y-1 < shape
		if mound then
			local cindex= (y+1)//2+5
			if cindex>5 then
				return GREEN else return ({3,2,1,16,15})[cindex]
			end
	end
end
