--[[

equation for a torus (donut):
r^2 = (sqrt(x^2+z^2) - R)^2 + y^2
little r = radius of the 'tube'
big R = radius of the 'ring'

sqrt(x^2+z^2) - R  <-- this is essentially the distance
from the 'ring' on the XZ plane.

remember, when visualizing values as colors, negative
values will all appear as empty space, because any
number <= 0 becomes an empty voxel.
--]]
local r_tube = 4
local r_ring = 7
local ring_dist = sqrt(x^2+z^2) - r_ring
local ring_dist = sqrt(x^2+z^2) - r_ring

--r^2 = (sqrt(x^2+z^2) - R)^2 + y^2
if ring_dist^2 + y^2 - r_tube^2 < 0 then 
--	return abs(ring_dist)
	return y>0 and PINK or YELLOW
end
