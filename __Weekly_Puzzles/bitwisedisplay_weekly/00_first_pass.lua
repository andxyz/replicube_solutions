--first_pass
--150
--6.465

if z>1 or z<-1 then return end -- negative space
if y>2 or y<-2 then return end -- negative space
if z<1 then return DARKBLUE end -- back half
if y>1 or y<-1 then return DARKBLUE end -- upper and lower lines
if x%2==1 then return DARKBLUE end -- odd lines

if t>0 then
	-- lookup table for t, 1 to 7
	local L= {
		{3,3,7}, --t==1
		{3,7,3}, --t==2
		{3,7,7}, --t==3
		{7,3,3}, --t==4
		{7,3,7}, --t==5
		{7,7,3}, --t==6
		{7,7,7} --t==7
	}
	-- poormans ceiling function with fewer assignments
	local val= (x+3)/2
	local frac= val%1
  if frac>0 then
  	return L[t][val-frac+1]
  else
		return L[t][val-frac]
  end
end

return BLACK -- t==0
