xi=0.4014257 -- Angle of inclination of Triton's orbit in radians

function rot_1(point,phi) --Rotates a point relative to the y-axis by phi

 local x1= cos(phi) * point.x + 0    * point.y - sin(phi) * point.z
 local y1= 0        * point.x + 1    * point.y + 0        * point.z
 local z1= sin(phi) * point.x + 0    * point.y + cos(phi) * point.z
 
 return {x=x1,y=y1,z=z1}

end

function rot_2(point,theta) --Describe a function that rotates a point relative to the z-axis by theta

 local x2 = point.x
 local y2 = point.y
 local z2 = point.z
 
 return {x=x2,y=y2,z=z2}

end

--Centre of Triton
p = rot_2(rot_1({x=8,y=0,z=5},t*pi/12),xi)

if (x-p.x)^2+(y-p.y)^2+(z-p.z)^2<=2 then
 return 2
end