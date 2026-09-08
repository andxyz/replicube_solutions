--f2
--105
--15.668

if x<0 then x=-x end
if y<0 then y=-y end
if z==0 and x==y then return BLACK end
if z<0 then z=-z end
if x==y and z==y then return BLACK end
if y==0 and x==z then return BLACK end
if x==0 and y==z then return BLACK end
if x==-y then return BLACK end
if y==-z then return BLACK end
if x==-z then return BLACK end
