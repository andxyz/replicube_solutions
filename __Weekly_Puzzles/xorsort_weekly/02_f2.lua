--f2 -- hardcoded
--230
--5.125
if z~=0 or y==4 or x==4 then return end -- negative space, return early

local a= nil
if t>=11 then 
	a= {WHITE,GREY,BLACK,PEACH,PINK,PURPLE,RED,ORANGE}
elseif t>=8 and t<=10 then
	a= {PINK,PURPLE,RED,ORANGE,WHITE,GREY,BLACK,PEACH}
elseif t>=6 and t<=7 then
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

if y+4<a[x+5] then return a[x+5] end -- display()
