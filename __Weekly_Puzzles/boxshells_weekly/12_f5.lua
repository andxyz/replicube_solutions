--f5
--69
--9.243

if y>=-x and y>=-z then
	if y%2==0 then
		if x+y+z>4 then return end -- GREEN end
		return y+9
	else return end
end
if x<=z then
	if x%2==0 then
		return 9-x
	else return end
end
if z%2==0 then
	return 9-z
end

-- Note: After expanding my "elseif" statements into "if" statements 
-- I was finally able to spot a place I could save time
-- Usually I change my elseif's into "if"s just to be typing and moving things around
-- This is the first time it actually shed light on how I could move things to save time.
