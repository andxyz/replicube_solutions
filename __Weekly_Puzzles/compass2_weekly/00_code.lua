-- Which way is North?
if y == 0 and x^2 + z^2 < 5^2 then

	if t == 3 then t = 1 end
	if x == t - 1 then return GREY end
	
	return WHITE
	
end
