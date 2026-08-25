-- s2
-- 201
-- 167.282

-- andxyz-debug-toggle® use while working and debugging
-- to avoid "perfect match!"
--if x==7 and y==7 and z==7 then 
--	return BLACK
--end

z= abs(z) -- z-symmetry trick
old_x= x
x= abs(x) -- x-symmetry trick for body, feet, ears

function capsule(ax,ay,az,bx,by,bz)
  if y>0 and ax==5 then
    x= 1-old_x
    ay,by= -by,-ay
  end
  dx= bx-ax
  dy= by-ay
  dz= bz-az
  px= x-ax
  py= y-ay
  pz= z-az

  fdot= clamp((dx*px+dy*py+dz*dz)/(dx*dx+dy*dy+dz*dz), 0, 1)
  return sqrt((px-dx*fdot)^2+(py-dy*fdot)^2+(pz-dz*fdot)^2)
end

return
old_x==-6 and y<=2 and y>=1 and z>=2 and z<=3 and BLACK
or capsule(-3,0,0,3,0,0) <= 4.5
or capsule(5,-6,2,3,-3,2) <= 1.5


--[[ For my records, the old capsule function before the maths simplification

function capsule(ax,ay,az,bx,by,bz) -- externalize radius trick	
	-- chaotic "y" greater-than-zero symmetry flip:
	if y>0 and ax==5 then x= -old_x+1; ay,by = -by,-ay end -- chaotic y>0 symmetry flip
--	if y>0 and bz==2 then -- ears trick
--		if old_x>0 then return GREEN end
--		-- not sure why this needs to be a non-zero color
--		ax,bx= ax-1,bx-1
--		ay,by= -by,-ay
--	end
	
	-- dx,dy,dz is "going from a to b"
	dx= bx-ax
	dy= by-ay
	dz= bz-az
	-- length of the line seqment
	length= sqrt(dx*dx+dy*dy+dz*dz)
	
	-- divide so that now dx,dy,dz is a "unit vector"
	-- in the direction of the line segment
	dx= dx / length
	dy= dy / length
	dz= dz / length
	
	-- px,py,pz is "a to current voxel"
	px= x-ax
	py= y-ay
	pz= z-az
	
	-- project p onto the line segment with dot product
	-- result of this dot product is the length along
	-- the line segment to the projected point p on the
	-- line segment.  clamp to a length between 0 and length
	dot= clamp(dx*px+dy*py+dz*pz, 0, length)
	
	-- finally, what is the distance from the current voxel to this
	-- closest point on the line segment?
	--cdx= px-dx*dot
	--cdy= py-dy*dot
	--cdz= pz-dz*dot
	
	-- distance = sqrt(cdx*cdx+cdy*cdy+cdz*cdz)
	-- return true if distance is <= radius
	return sqrt((px-dx*dot)^2+(py-dy*dot)^2+(pz-dz*dot)^2)
end
--]]
