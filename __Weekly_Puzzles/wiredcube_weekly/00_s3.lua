--s3
--55
--36.767

offset= sign(x+y+z)|1
data= {abs(x+offset),abs(y+offset),abs(z+offset)}
sort(data)

return 
data[2]|data[3]==14 -- union of 6 and 8
and (data[1]>=5 and YELLOW or BLACK)