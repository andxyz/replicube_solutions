box1 = max(abs(x-2),abs(y-2),abs(z-2))
box2 = max(abs(x+2),abs(y+2),abs(z+2))
return min(box1,box2) == 4 and WHITE
