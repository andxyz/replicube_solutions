-- This trick didnt work out
--function sphere_maybe(a,b,c)
--	return (x+a)^2 + (z+b)^2 + (c<1 and (y+c)^2 or 0)
--end
function circle(a, b) return (x+a)^2+(z+b)^2 end

planet_ring=circle(0, 0)
moon_ring=circle(12, -12)
return
    planet_ring+y*y<57 and GREEN -- planet
    or y==x//2 and planet_ring>=99
    and (planet_ring<=142 and DARKBROWN or planet_ring<=196 and BROWN)
    or moon_ring+(y-4)^2<=3 and PINK -- moon
    or y==4 and moon_ring//-8==-2 and BROWN
    or circle(-6, 0)+(y-7)^2<2 and GREY -- comet
    or y>7 and x==y-1 and circle(0, 12)//-28==-7 and ORANGE -- comet trail
