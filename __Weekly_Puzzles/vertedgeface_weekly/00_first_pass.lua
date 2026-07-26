-- first_pass

m1n= min(x, y, z)
mx= max(x, y, z)
if m1n<=-1 then
	if abs(x)==5 and abs(y)==5 and abs(z)==5
		 or abs(x-2)==3 and abs(y-2)==3 and abs(z-2)==3 then
		return WHITE
	end
	mx= max(x, y, z)
	if m1n==-1 and (mx==5 or (x==-1 and y==-1
												  or x==-1 and z==-1
		                      or y==-1 and z==-1)) then return ORANGE end
	if m1n==-5 and (mx==5 or (
		x==-5 and y==-5
		or x==-5 and z==-5
		or y==-5 and z==-5)) or (x==5 and y==5
												  or x==5 and z==5
		                      or y==5 and z==5)
		 then return ORANGE end
	return (m1n==-1 or m1n==-5 or m1n<=-1 and mx>=5) and DARKBLUE
end