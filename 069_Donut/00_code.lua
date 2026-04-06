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
local big_r = 6
local big_r_dist = sqrt(x^2+z^2) - big_r

return big_r_dist
