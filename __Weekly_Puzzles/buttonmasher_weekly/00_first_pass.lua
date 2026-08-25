--first_pass
--56
--5.520

if y>=1 then return end -- negative space
if y<=-2 then return GREY end -- bottompart
if t==0 and y==0 then return end -- first_frame early escape

-- the button
local sq= x*x+z*z
if sq<=2 then return RED end
if y==-1 and sq<= 8 then return WHITE end
