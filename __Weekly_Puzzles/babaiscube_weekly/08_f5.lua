-- f5
-- List of tricks we applied to original solution in order:
	-- Note: sometimes tricks can cancel each other out 
	-- negative space early exits
	-- Add "local" keyword for non global "functions" and "vars" in luajit
	-- ^.5 instead of sqrt() trick
	-- z-symmetry but dont use abs()
	-- inline the clamp() function
	-- externalize radius check trick
	-- x-symmetry but dont use abs()
	-- old_x trick for x-symmetry (old_x is needed for ears, but not for feet)
	-- eyes test can use range checks, faster than squaring
	-- yz-circle trick, instead of calling capsule function for body
	-- yz-circle trick, with early exits per slice
	-- rework eyes test into slice==6 of yz-circle tests
	-- chaotic y>0 x-symmetry inverty flip for ears
	-- We got it down to one function call of capsule, so...
	--   scrap the function and re-inline the radius check
	-- rework the entire function to be shorter via "maths"
	-- rework final distance test into per component check, then do sqrt
-- 468
-- 17.749

-- andxyz-debug-toggle® use while working and debugging
-- to avoid "perfect match!"
--if x==7 and y==7 and z==7 then 
--	return BLACK
--end

if z<-4 or z>4 then return end -- negative space, z cull
if y>4 and x>0 then return end -- negative space, above back
if y<-4 and (x>-3 and x<3) then return end -- negative space, between legs
if y>2 and (x<-3 and x<y-9 or x==7) then return end -- negative space, infront of ears above nose
if y<-2 and (x==7 or x==-7) then return end -- negative space, under front and back
if z==0 and (y>4 or y<-4) then return end -- negative space, inbetween legs and ears on z

if z<0 then z= -z end -- z-symmetry trick

-- body:
-- yz-circle with x-symmetry tricks and early exits per slice
-- original body: if capsule(-3,0,0, 3,0,0)<=4.5 then return WHITE end
local old_x= x
if x<0 then x= -x end -- x-symmetry trick for body and feet
if x<=3 then
	local yz_circ= y^2+z^2
	if yz_circ<=20 then return WHITE end
	if old_x>=0 and x~=3 then return end
end
if x==4 then
	local c= y^2+z^2
	if c<=18 then return WHITE end
end
if x==5 then
	local c= y^2+z^2	
	if c<=16 then return WHITE end
end
if x==7 then
	local c= y^2+z^2	
	if c<=4 then return WHITE end
	return
end
if x==6 then
	-- eyes:
	-- Apply range checks, they are faster than squaring
	-- (remember: we only need concern ourselves with z>0, 
	-- the z-symmetry trick takes care of the rest)
	if old_x==-6 and y<=2 and y>=1 and z>=2 and z<=3 then
		return BLACK
	end
	-- back to body calcs:
	local c= y^2+z^2	
	if c<=10 then return WHITE end
end

-- oldstyle one-function call does it all for all legs and ears:
--if capsule(5,-6,2, 3,-3,2)<=1.5 then return WHITE end -- front legs, back legs, and ears

-- even older style for just solo ears:
--if capsule(4, 3,2, 2, 6,2)<=1.5 then return WHITE end

-- front legs, back legs, and ears:
-- inline our one-function call to capsule() thanks to all the symmetry:
local ax= 5
local bx= 3
local ay= -6
local by= -3
--local function capsule(ax,ay,az,bx,by,bz) -- with externalize radius trick unapplied
	if y>0 then -- mirror'd ears trick
		if old_x>0 then return end -- upper ears mirror'd on the bum. escape hatch!
		ax,bx= ax-1,bx-1
		ay,by= -by,-ay
	end
  local dx= bx-ax
  local dy= by-ay
  local dz= 0 -- bz-az==2-2==0
  local px= x-ax
  local py= y-ay
  local pz= z-2

  local fdot= (dx*px+dy*py+dz*dz)/(dx*dx+dy*dy+dz*dz) -- maths
	if fdot<0 then fdot= 0 elseif fdot>1 then fdot= 1 end -- inline clamp()
	
	local cdx_sq=(px-dx*fdot)^2
  if cdx_sq>1.4 then return end
	local cdz_sq=(pz-dz*fdot)^2
	if cdz_sq>1 then return end
	local cdy_sq=(py-dy*fdot)^2
  --if cdy_sq>1 then return end
	if (cdx_sq+cdy_sq+cdz_sq)^.5 <= 1.5 then 
		return WHITE
	end
--end

-- andxyz-green-toggle® to find help negative space savings
--return GREEN
