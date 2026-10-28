-- I remember building these towers when I was a child.
-- The tower in the +Z -X quandrant is more complex because I had to put the pillars in different orientations so that the tower is more robust to constaints in all directions.

if y==-16 then 
	return LIGHTBLUE
end

if x//3==0 and y==-15 and z//10==0 then return PINK end
if (x+4)//10==0 and y==-15 and (z+4)//3==0 then return PEACH end
if (x+4)//1==0 and (y+15)//3==0 and (z-1)//10==0 then return GREEN end
if (x-8)//1==0 and (y+15)//10==0 and (z-8)//3==0 then return YELLOW end

pos_x = 6
pos_y = -15
pos_z = 0

-- to have different orientations you can change which axis gets which size in the list [1, 3, 10]
size_x = 10
size_y = 3
size_z = 1
if (x-pos_x)//size_x==0 
	 and (y-pos_y)//size_y==0
	 and (z-pos_z)//size_z==0 then
	
	return DARKBLUE
end