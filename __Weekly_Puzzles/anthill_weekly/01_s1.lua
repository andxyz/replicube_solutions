-- s1
-- 261
-- 14.019

function hill(a,a_max,b,b_h,c,a_min,offset1,offset2,cutoff)
	if a<=a_max then
		if b==b_h and c==0 then return BLACK end
		if a>=a_min then
			h= (x+offset1)^2+(z+offset2)^2
			if h<cutoff and h<(y+6)^2 then return BLACK end
		end
	end
end

-- hill(x,9,y,-10,z,3,-6,0,14)
--if x>0 and z>=-3 and z<=3 and y<=-7 then -- hill_big
--	if x<=9 then
--		if y==-10 and z==0 then return BLACK end
--		if x>=3 then
--			local hill3= (x-6)^2+z^2
--			if hill3<14 and hill3<(y+6)^2 then return BLACK end
--		end
--	end
--end
-- hill(z,8,y,-9,x,4,0,-6,9)
--if z>0 and x>=-2 and x<=2 and y<=-7 and y>=-9 then -- hill_medium
--	if z<=8 then
--		if y==-9 and x==0 then return BLACK end
--		if z>=4 then
--			local hill2= x^2+(z-6)^2
--			if hill2<9 and hill2<(y+6)^2 then return BLACK end
--		end
--	end
--end
--hill(x,-7,y,-8,z,-5,6,0,3)
--if x<0 and z>=-1 and z<=1 and y<-6 and y>-9 then -- hill_small
--	if x>=-7 then
--		if y==-8 and z==0 then return BLACK end
--		if x<=-5 then
--			local hill1= (x+6)^2+z^2
--			if hill1<3 and hill1<(y+6)^2 then return BLACK end
--		end
--	end
--end
--
return 
y>0 and 0 -- negative space
or 
x==0 and z==0 and BLACK -- the tunnel downward
or
y==-4 and BROWN -- dirt
or
y>-4 and x^2+z^2<(y-2)^2 and BROWN -- anthill
or
y==-3 and GREEN -- grass
or 
z<0 and x==0 and y==-7 and z>=-6 and BLACK -- line1
or 
x>0 and z>=-3 and z<=3 and y<=-7 and hill(x,9,y,-10,z,3,-6,0,14) -- hill_big
or
z>0 and x>=-2 and x<=2 and y<=-7 and y>=-9 and hill(z,8,y,-9,x,4,0,-6,9) -- hill_medium
or
x<0 and z>=-1 and z<=1 and y<-6 and y>-9 and hill(-x,7,y,-8,z,-5,6,0,3) -- hill_small
