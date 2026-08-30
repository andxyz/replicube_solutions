--s2
--56
--35.783

offset= sign(x+y+z)|1
data= {abs(x+offset),abs(y+offset),abs(z+offset)}
sort(data)

if data[2]|data[3]==14 then -- union of 6 and 8
	return data[1]>=5 and YELLOW or BLACK
end