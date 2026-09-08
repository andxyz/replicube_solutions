--s3
--41
--24.924

function f(u,v)
	return
		u*u==v*v
		or u*v==0
end
return
    f(x,y)
and f(y,z)
and f(z,x)
and BLACK
