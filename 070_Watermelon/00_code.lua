-- watermelon = portion of a sphere
-- plate = circle
local X,Y,Z = x^2,y^2,z^2

-- plate
if y==-7 and Z+X<=48 then return WHITE end

-- water melon
if abs(z)<-y+1 then 

	return round(X+Y+Z)<=36 and GREEN
end


