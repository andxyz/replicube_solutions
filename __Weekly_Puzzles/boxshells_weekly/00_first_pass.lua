--first_pass
--91
--14.347

local mx= max(-x+5,y+5,-z+5)
if mx==9 and x<=-z then return BLUE end
if mx==7 and x-2<=-z then return GREEN end
if mx==5 and x-4<=-z then return YELLOW end
if mx==3 and x-6<=-z then return RED end
if mx==1 and x-8<=-z then return PINK end