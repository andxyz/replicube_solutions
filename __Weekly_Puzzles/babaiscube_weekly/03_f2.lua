-- f2
-- Using: 
	-- negative space early exits
	-- add "local" keyword for vars in luajit
	-- ^.5 for sqrt() trick
	-- z-symmetry with "z= abs(z)"
	-- inline clamp() function
	-- externalize radius trick
	-- x-symmetry with "x= abs(x)"
	-- old_x trick for x-symmetry
	-- range checks faster than squaring trick
-- 291
-- 80.096

-- andxyz-debug-toggle® use while working
--if x==7 and y==7 and z==7 then 
--	return BLACK 
--end

if z<-4 or z>4 then return end -- negative space
z= abs(z) -- z-symmetry trick

-- distance to a line segment is a way of
-- drawing a capsule by selecting any voxel
-- where the distance to the line segment is
-- less than or equal to radius.
-- ax,ay,az are the first endpoint of the line
-- bx,by,bz is the second endpoint of the line
--local function capsule(ax,ay,az,bx,by,bz,radius)
-- externalize radius trick
local function capsule(ax,ay,az,bx,by,bz)
	-- dx,dy,dz is "going from a to b"
	local dx= bx-ax
	local dy= by-ay
	local dz= bz-az
	
	-- length of the line seqment
	-- apply sqrt() trick
	local length= (dx*dx+dy*dy+dz*dz)^.5
	
	-- divide so that now dx,dy,dz is a "unit vector"
	-- in the direction of the line segment
	local dx= dx / length
	local dy= dy / length
	local dz= dz / length
	
	-- px,py,pz is "a to current voxel"
	local px= x - ax
	local py= y - ay
	local pz= z - az
	
	-- project p onto the line segment with dot product
	local dot= dx*px+dy*py+dz*pz
	
	-- result of this dot product is the length along
	-- the line segment to the projected point p on the
	-- line segment.  clamp to a length between 0 and length
	
	--dot= clamp(dot, 0, length)
	-- inline clamp() function call
	if dot<0 then dot= 0 end
	if dot>length then dot= length end
	
	-- now find the closest point to the current voxel that is
	-- *on the line segment*
	local cx= ax + dx*dot
	local cy= ay + dy*dot
	local cz= az + dz*dot
	
	-- finally, what is the distance from the current voxel to this
	-- closest point on the line segment?
	local cdx= x - cx
	local cdy= y - cy
	local cdz= z - cz
	
	--distance = (cdx*cdx+cdy*cdy+cdz*cdz)^.5
	-- return true if distance is <= radius
	-- apply sqrt() trick
	--return (cdx*cdx+cdy*cdy+cdz*cdz)^.5 <= radius
	return (cdx*cdx+cdy*cdy+cdz*cdz)^.5
end

-- example capsule going from (3,3,3) to (-3,-3,-3) with a radius
-- of 4.5
--return capsule(3,3,3,-3,-3,-3,4.5)

-- eyes
-- Apply range checks, they are faster than squaring
-- (remember: we only need concern ourselves with z>0, 
-- the symmetry trick takes care of the rest)
if x==-6 and y<=2 and y>=1 and z>=2 and z<=3 then
	return BLACK 
end

-- body
if capsule(-3,0,0, 3,0,0)<=4.5 then return WHITE end

-- front legs and back legs
local old_x= x
x= abs(x) -- x-symmetry trick
if capsule(5,-6,2, 3,-3,2)<=1.5  then return WHITE end

-- ears
x= old_x
if capsule(-4,3,2, -2,6,2)<=1.5 then return WHITE end
