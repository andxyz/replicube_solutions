-- first_pass
-- 182
-- 6.711

if y>6 then return end -- negative space above box
if x>4 or x<-4 or z>3 or z<-3 then return end -- negative space around box
if y>-5 then -- the box
	if y==6 or y==-4 then return RED end
	-- if x<4 and x>-4 and z<2 and z>-3 then return end -- negative space internal
	if y==4 then
		if x<4 and x>-4 then
			if z==2 then return GREY end
			if z==3 then return end
		end
	end
	if z==3 then	
		if (y==1 or y==-1) and (x<3 and x>-3) then return WHITE end
		if x==0 and (y==-2 or y==-3) then return WHITE end
	end
	if x==-4 or x==4 then return RED end
	if z==-3 or z==3 then return RED end
	return
end
if x>1 or x<-1 or z>1 or z<-1 then return end
if z~=0 and (x==-1 or x==1) then return end 
return BLACK
