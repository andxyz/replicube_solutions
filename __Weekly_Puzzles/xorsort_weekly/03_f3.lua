--f3 -- hardcoded optimized
--224
--4.999

if z~=0 or y==4 or x==4 then return end -- negative space, return early

local a
if t>=11 then
	a= {WHITE,GREY,BLACK,PEACH,PINK,PURPLE,RED,ORANGE}
elseif t>=8 then -- and t<=10
	a= {PINK,PURPLE,RED,ORANGE,WHITE,GREY,BLACK,PEACH}
elseif t>=6 then -- and t<=7
	a= {PINK,PURPLE,RED,ORANGE,BLACK,PEACH,WHITE,GREY}
elseif t==5 or t==4 then
	a= {RED,ORANGE,PINK,PURPLE,BLACK,PEACH,WHITE,GREY}
elseif t==3 then
	a= {RED,ORANGE,PINK,PURPLE,BLACK,PEACH,GREY,WHITE}
elseif t==2 then
	a= {RED,ORANGE,PINK,PURPLE,PEACH,BLACK,GREY,WHITE}
elseif t==1 then
	a= {RED,ORANGE,PURPLE,PINK,PEACH,BLACK,GREY,WHITE}
else -- t==0
	a= {ORANGE,RED,PURPLE,PINK,PEACH,BLACK,GREY,WHITE}
end

local v= a[x+5]
local Y= y+4
if Y<v then return v end -- display()
