-- s1 -- pyramid math + pattern offset math
-- 53
-- 19.314

max_xz= max(abs(x+.5), abs(z+.5))
if max_xz + y/2 < 4 then 
	offset= (y+1)/2//1%2+.5
	return 
	(x+offset)*(z+offset)%2 + 2
end
