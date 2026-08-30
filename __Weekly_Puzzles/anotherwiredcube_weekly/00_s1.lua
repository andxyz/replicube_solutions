--s1
--58
--34.211

offset= sign(x+y+z)|1
data= {abs(x+offset),abs(y+offset),abs(z+offset)}
sort(data)

return
(data[2]==6 and data[3]==8)
and (data[1]>=5 and YELLOW or BLACK)
