-- Kinda tricky to communicate 'building'
-- in just a few voxels, but I think having the
-- windows lit up helped.

-- Notes:
-- make sure to peak inside, it helps
-- to see how the blue edges were made.

-- tower body
if y<3 and x^2 + z^2 < 9 then
	if x^2 == z^2 then return DARKBLUE end
	if y%2 == 1 then return YELLOW end
	return DARKBLUE
end 
-- peak
if y>2 and x^2 + z^2 < ((y-2)~3)^2 then 
--	if x == 0 and z ==0 then 
--	print("y = " .. y)
--	print((y-2)~3) end
	return DARKBLUE
end
