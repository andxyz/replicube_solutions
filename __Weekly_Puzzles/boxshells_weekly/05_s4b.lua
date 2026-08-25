--s4b
--44
--26.683

v= {x,-y,z} sort(v)
mn,m,mx= unpack(v)
if x+y+z<=4 then
	return (9-mn)%2*(9-mn)
end
