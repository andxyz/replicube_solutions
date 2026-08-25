--first_pass
--127 
--8.364

if y>2 or y<-2 then return end -- negative space
-- Note: round() without the function call + .5)//1
if y==(cos(x*pi/4)+(cos(z*pi/4))+ .5)//1 then
	local c= x^2+z^2
	if c<=0 then return 5 end
	if c<=2 then return 6 end
	if c<=9 then return 7 end
	if c<=18 then return 8 end
	if c<=29 then return 9 end
	if c<=45 then return 10 end
	if c<=65 then return 11 end
	if c<=85 then return 12 end
	if c<=100 then return 13 end
	return 14
end
