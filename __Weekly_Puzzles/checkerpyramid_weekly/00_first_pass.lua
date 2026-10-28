-- first_pass
-- 214
-- 17.060

local Y= y/2
local X=(x+.5)^2
local Z=(z+.5)^2
if Y<=-3 and X<49 and Z<49 then
	return (x+1.5)*(z+1.5)%2+2
elseif Y<=-2 and X<36 and Z<36 then
	return (x+.5)*(z+.5)%2+2
elseif Y<=-1 and X<25 and Z<25 then
	return (x+1.5)*(z+1.5)%2+2
elseif Y<=0 and X<16 and Z<16 then
	return (x+.5)*(z+.5)%2+2
elseif Y<=1 and X<9 and Z<9 then
	return (x+1.5)*(z+1.5)%2+2
elseif Y<=2 and X<4 and Z<4 then
	return (x+.5)*(z+.5)%2+2
elseif Y<=3 and X<1 and Z<1 then
	return 2
end
