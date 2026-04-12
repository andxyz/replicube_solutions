-- 130
-- cycles/voxel: 13.008

-- Dice are universal. 
-- Dice are simple.
-- I want to make an entire roguelike
-- about going through dungeons, but
-- only using dice for all your attacks
-- and abilities.

-- an attempt at quick interior
--if x^2+y^2+z^2<4 then return WHITE end

if     y == -2 and x^2+z^2<4 and x%2-z%2 == 0 then return BLACK
elseif z == -2 and x^2+y^2<4 and x%2 == 1 then return BLACK
elseif x == -2 and z==y and y^2+z^2<4 then return BLACK
elseif x == 2  and y^2+z^2==2 then return BLACK
elseif y == 2  and x==-z and x^2+z^2==2 then return BLACK
elseif z == 2  and x^2+y^2==0 then return BLACK end

return WHITE