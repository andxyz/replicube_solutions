-- f3 -- pyramid math + pattern offset math
-- 59
-- 15.319

local max_xz= max((x+.5)^2, (z+.5)^2)
if max_xz^.5 + y/2 < 4 then 
	local offset= (y+1)/2//1%2+.5
	return 
	(x+offset)*(z+offset)%2 + 2
end

--local t= {(x+.5)^2, (z+.5)^2} sort(t)
--if t[2]^.5 + y/2 < 4 then 
--	local offset=  floor((y+1)/2)%2
--	return 
--	(x+.5+offset)*(z+.5+offset)%2 + 2
--end
--