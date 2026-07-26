-- first_pass
-- 197
-- 14.907
if abs(y)>3 then return end
local X= abs(x)
if X>3 then return end
local Z= abs(z)
if Z>4 then return end
local Y= abs(y+1)

return
y==3 and X<=1 and (Z%2==0 and z~=0 and YELLOW or BROWN)
or y==2 and (X<=1 and Z<=3 and 0 or X==2 and 9 or X<2 and Z==4 and BROWN)
or z==0 and (y==1 or y==0) and x==3 and BLACK
or y==1 and (X<=2 and Z<=3 and 0)
or X<=2 and Y<=2 and Z<=3 and y~=-3
or X==3 and Z==4 and Y<3 and YELLOW
or y==-3 and (X==3 or Z==4) and YELLOW
or X<=3 and Y<=2 and Z<=4 and (Z==2 and YELLOW or BROWN)
