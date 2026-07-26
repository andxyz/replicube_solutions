-- f1
-- 215
-- 14.288
if abs(y)>3 then return end
local X= abs(x)
if X>3 then return end
local Z= abs(z)
if Z>4 then return end

if y==2 then
  if X<=1 and Z<=3 then return end
  if X==2 then return YELLOW end
	if X<2 and Z==4 then return BROWN end
end
if y==3 and X<=1 then
	return Z%2==0 and z~=0 and YELLOW or BROWN
end
if y==1 and X<=2 and Z<=3 then return end
if z==0 and x==3 and (y==1 or y==0) then return BLACK end
if y==-3 and (X==3 or Z==4) then return YELLOW end
local Y= abs(y+1)
if X<=2 and Y<=2 and Z<=3 and y~=-3 then return WHITE end
if X==3 and Z==4 and Y<3 then return YELLOW end
if X<=3 and Y<=2 and Z<=4 then return Z==2 and YELLOW or BROWN end
