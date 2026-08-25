-- f1
-- Using: z-symmetry trick
-- 269
-- 408.664

-- distance to a line segment is a way of
-- drawing a capsule by selecting any voxel
-- where the distance to the line segment is
-- less than or equal to radius.
-- ax,ay,az are the first endpoint of the line
-- bx,by,bz is the second endpoint of the line
function capsule(ax,ay,az,bx,by,bz,radius)

	-- dx,dy,dz is "going from a to b"
	dx = bx-ax
	dy = by-ay
	dz = bz-az
	
	-- length of the line seqment
	length = sqrt(dx*dx+dy*dy+dz*dz)
	
	-- divide so that now dx,dy,dz is a "unit vector"
	-- in the direction of the line segment
	dx = dx / length
	dy = dy / length
	dz = dz / length
	
	-- px,py,pz is "a to current voxel"
	px = x - ax
	py = y - ay
	pz = abs(z) - az
	
	-- project p onto the line segment with dot product
	dot = dx*px+dy*py+dz*pz
	
	-- result of this dot product is the length along
	-- the line segment to the projected point p on the
	-- line segment.  clamp to a length between 0 and length
	dot = clamp(dot, 0, length)
	
	-- now find the closest point to the current voxel that is
	-- *on the line segment*
	cx = ax + dx*dot
	cy = ay + dy*dot
	cz = az + dz*dot
	
	-- finally, what is the distance from the current voxel to this
	-- closest point on the line segment?
	cdx = x - cx
	cdy = y - cy
	cdz = abs(z) - cz
	
	distance = sqrt(cdx*cdx+cdy*cdy+cdz*cdz)
	
	-- return true if distance is <= radius
	return distance<=radius
	
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
capsule(-3,0,0,  3,0,0,  4.5)
or
capsule(-4,3,2,  -2,6,2,  1.5)
or
capsule(-5,-6,2,  -3,-3,2,  1.5)
or
capsule(5,-6,2,  3,-3,2,  1.5)