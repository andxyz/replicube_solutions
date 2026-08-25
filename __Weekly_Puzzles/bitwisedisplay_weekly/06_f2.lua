--f2
--90
--5.507

if z>1 or z<-1 then return end -- negative space
if y>2 or y<-2 then return end -- negative space

if z==1 and y>=-1 and y<=1 then -- inside the display segments
	if x==-2 then -- segment1
		if t<=3 then return BLACK end
		return RED
	end
	if x==0 then -- segment2
		if t&2==0 then return BLACK end
		return RED
	end
	if x==2 then -- segment3
		if t&1==0 then return BLACK end
		return RED
	end
end
return DARKBLUE -- the rest of the clanker
