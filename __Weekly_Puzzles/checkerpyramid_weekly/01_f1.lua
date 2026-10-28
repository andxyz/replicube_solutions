-- f1 -- manual approach with if statements
-- 252
-- 11.123

local Y= y/2
if Y<=-3 then -- L1
	if x<7 and z<7 then
		return (x+1.5)*(z+1.5)%2+2
	end
elseif Y<=-2 then -- L2
	if x<6 and x>-7 and z<6 and z>-7 then
		return (x+.5)*(z+.5)%2+2
	end
elseif Y<=-1 then -- L3
	if x<5 and x>-6 and z<5 and z>-6 then
		return (x+1.5)*(z+1.5)%2+2
	end
elseif Y<=0 then -- L4
	if x<4 and x>-5 and z<4 and z>-5 then
		return (x+.5)*(z+.5)%2+2
	end
elseif Y<=1 then -- L5
	if x<3 and x>-4 and z<3 and z>-4 then
		return (x+1.5)*(z+1.5)%2+2
	end
elseif Y<=2 then -- L6
	if x<2 and x>-3 and z<2 and z>-3 then
		return (x+.5)*(z+.5)%2+2
	end
elseif Y<=3 then -- L7
	if x<1 and x>-2 and z<1 and z>-2 then
		return 2 
	end
end
