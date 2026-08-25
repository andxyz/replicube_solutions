-- f1b
-- Using: "local", ^.5 for sqrt() trick, and z-symmetry
-- 286
-- 233.312

-- distance to a line segment is a way of
-- drawing a capsule by selecting any voxel
-- where the distance to the line segment is
-- less than or equal to radius.
-- ax,ay,az are the first endpoint of the line
-- bx,by,bz is the second endpoint of the line
local function capsule(ax,ay,az,bx,by,bz,radius)

	-- dx,dy,dz is "going from a to b"
	local dx= bx-ax
	local dy= by-ay
	local dz= bz-az
	
	-- length of the line seqment
	local length = (dx*dx+dy*dy+dz*dz)^.5
	
	-- divide so that now dx,dy,dz is a "unit vector"
	-- in the direction of the line segment
	local dx= dx / length
	local dy= dy / length
	local dz= dz / length
	
	-- px,py,pz is "a to current voxel"
	local px= x - ax
	local py= y - ay
	local pz= abs(z) - az
	
	-- project p onto the line segment with dot product
	local dot= dx*px+dy*py+dz*pz
	
	-- result of this dot product is the length along
	-- the line segment to the projected point p on the
	-- line segment.  clamp to a length between 0 and length
	dot= clamp(dot, 0, length)
	
	-- now find the closest point to the current voxel that is
	-- *on the line segment*
	local cx= ax + dx*dot
	local cy= ay + dy*dot
	local cz= az + dz*dot
	
	-- finally, what is the distance from the current voxel to this
	-- closest point on the line segment?
	local cdx= x - cx
	local cdy= y - cy
	local cdz= abs(z) - cz
	
	-- distance = (cdx*cdx+cdy*cdy+cdz*cdz)^.5
	-- return true if distance is <= radius
	return (cdx*cdx+cdy*cdy+cdz*cdz)^.5 <= radius
end

-- example capsule going from (3,3,3) to (-3,-3,-3) with a radius
-- of 4.5
--return capsule(3,3,3,-3,-3,-3,4.5)

return
x==-6 and 
(
	(y-1.5)^2+(z-2.5)^2<=1 or (y-1.5)^2+(z+2.5)^2<=1
) and  BLACK
or
capsule(-3,0,0,  3,0,0,  4.5) -- body
or
capsule(-4,3,2,  -2,6,2,  1.5) -- ears
or
capsule(-5,-6,2,  -3,-3,2,  1.5) -- front legs
or
capsule(5,-6,2,  3,-3,2,  1.5) -- back legs
