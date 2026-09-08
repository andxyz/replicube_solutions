--f1
--93
--20.420
local x= abs(x)
local y= abs(y)
local z= abs(z)
if x==y and z==y then return BLACK end
if z==0 and x==y then return BLACK end
if y==0 and x==z then return BLACK end
if x==0 and y==z then return BLACK end
if x==-y then return BLACK end
if y==-z then return BLACK end
if x==-z then return BLACK end
