-- f4
-- List of tricks we applied in order:
	-- Note: sometimes tricks cancel each other out 
	-- negative space early exits
	-- Add "local" keyword for non global "functions" and "vars" in luajit
	-- ^.5 for sqrt() trick
	-- z-symmetry but dont use abs()
	-- inline clamp() function
	-- externalize radius trick
	-- x-symmetry but dont use abs()
	-- old_x trick for x-symmetry (needed for ears)
	-- range checks faster than squaring trick
	-- yz-circle trick, instead of capsule for body
	-- chaotic y>0 symmetry flip for ears
	-- We got it down to one function call of capsule, so...
	--   scrap the function and re-inline the radius check
-- 403
-- 26.110

-- andxyz-debug-toggle® use while working and debugging
-- to avoid "perfect match!"
--if x==7 and y==7 and z==7 then 
--	return BLACK
--end

if z<-4 or z>4 then return end -- negative space
if z<0 then z= -z end -- z-symmetry trick

-- eyes
-- Apply range checks, they are faster than squaring
-- (remember: we only need concern ourselves with z>0, 
-- the symmetry trick takes care of the rest)
if x==-6 and y<=2 and y>=1 and z>=2 and z<=3 then
	return BLACK
end

-- body
-- yz-circle with x-symmetry tricks:
-- orignal body: if capsule(-3,0,0, 3,0,0)<=4.5 then return WHITE end
local old_x= x
if x<0 then x= -x end -- x-symmetry trick for body and feet
if x<=3 then
	local yz_circ= y^2+z^2
	if yz_circ<=20 then return WHITE end
end
if x==4 then
	local c= y^2+z^2
	if c<=18 then return WHITE end
end
if x==5 then
	local c= y^2+z^2	
	if c<=16 then return WHITE end
end
if x==6 then
	local c= y^2+z^2	
	if c<=10 then return WHITE end
end
if x==7 then
	local c= y^2+z^2	
	if c<=4 then return WHITE end
end

-- oldstyle one function call:
--if capsule(5,-6,2, 3,-3,2)<=1.5 then return WHITE end -- front legs, back legs, and ears

-- oldstyle solo ears
--if capsule(4, 3,2, 2, 6,2)<=1.5 then return WHITE end

-- inline our function:

-- distance to a line segment is a way of
-- drawing a capsule by selecting any voxel
-- where the distance to the line segment is
-- less than or equal to radius.
-- ax,ay,az are the first endpoint of the line
-- bx,by,bz is the second endpoint of the line
--local function capsule(ax,ay,az,bx,by,bz,radius)
local ax= 5
local ay= -6
local az= 2
local bx= 3
local by= -3
local bz= 2
--local function capsule(ax,ay,az,bx,by,bz) -- externalize radius trick
	
	-- chaotic "y" greater-than-zero symmetry flip:
	--	if y>0 then x= -old_x+1; ay,by = -by,-ay end -- chaotic y>0 symmetry flip
	if y>0 then -- ears trick
		if old_x>0 then return end -- not sure why this needs to be a non-zero color
		ax,bx= ax-1,bx-1
		ay,by= -by,-ay
	end
	
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
	return (cdx*cdx+cdy*cdy+cdz*cdz)^.5 <= 1.5
--end