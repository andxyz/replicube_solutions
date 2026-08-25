--f1 -- some swapping
--234 
--6.981
if z~=0 then return end -- negative space, return early

-- color array (in this case "a" is a table)
local a= nil
if t>=11 then 
	a= {WHITE,GREY,BLACK,PEACH,PINK,PURPLE,RED,ORANGE,EMPTY}
else
	a= {ORANGE,RED,PURPLE,PINK,PEACH,BLACK,GREY,WHITE,EMPTY}
	-- do all the swaps we need, in the correct order
	if t>=1 then a[1],a[2]= a[2],a[1] end
	if t>=2 then a[3],a[4]= a[4],a[3] end
	if t>=3 then a[5],a[6]= a[6],a[5] end
	if t>=4 then a[7],a[8]= a[8],a[7] end
	--
	if t>=6 then a[1],a[2],a[3],a[4]= a[3],a[4],a[1],a[2] end
	--
	if t>=8 then a[5],a[6],a[7],a[8]= a[7],a[8],a[5],a[6] end
end
if y+4<a[x+5] then return a[x+5] end -- display()
