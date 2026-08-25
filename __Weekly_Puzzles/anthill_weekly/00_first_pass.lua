-- first_pass
-- 302
-- 9.632

if y>0 then return end-- negative space

if x==0 and z==0 then return BLACK end -- the tunnel downward

-- the hill, grass and dirt
if y==-4 then return BROWN end
if y>-4 and x^2+z^2<(y-2)^2 then return BROWN end
if y==-3 then return GREEN end

if x>0 and z>=-3 and z<=3 and y<=-7 then -- hill_big
	if x<=9 then
		if y==-10 and z==0 then return BLACK end
		if x>=3 then
			local hill3= (x-6)^2+z^2
			if hill3<14 and hill3<(y+6)^2 then return BLACK end
		end
	end
end
if z>0 and x>=-2 and x<=2 and y<=-7 and y>=-9 then -- hill_medium
	if z<=8 then
		if y==-9 and x==0 then return BLACK end
		if z>=4 then
			local hill2= x^2+(z-6)^2
			if hill2<9 and hill2<(y+6)^2 then return BLACK end
		end
	end
end
if x<0 and z>=-1 and z<=1 and y<-6 and y>-9 then -- hill_small
	if x>=-7 then
		if y==-8 and z==0 then return BLACK end
		if x<=-5 then
			local hill1= (x+6)^2+z^2
			if hill1<3 and hill1<(y+6)^2 then return BLACK end
		end
	end
end
if z<0 and x==0 and y==-7 and z>=-6 then return BLACK end -- line1
