--f3
--67
--10.576

local v= x+y+z
if v>4 then return end
if y>=-x and y>=-z then
	if y%2==0 then
		return y+9
	end
	return
end
if x<=z then
	if x%2==0 then
		return 9-x
	end
	return
end
if z%2==0 then
	return 9-z
end
