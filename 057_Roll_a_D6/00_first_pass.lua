-- codesize: 114

-- Dice are universal. 
-- Dice are simple.
-- I want to make an entire roguelike
-- about going through dungeons, but
-- only using dice for all your attacks
-- and abilities.
XY=x^2+y^2
XZ=x^2+z^2
YZ=y^2+z^2
return 
y==-2 and XZ<4 and x%2-z%2==0 and BLACK or
z==-2 and XY<4 and x%2==1 and BLACK or
x==-2 and z==y and YZ<4 and BLACK or
x==2  and YZ==2 and BLACK or
y==2  and x==-z and XZ==2 and BLACK or
z==2  and XY==0 and BLACK or WHITE
