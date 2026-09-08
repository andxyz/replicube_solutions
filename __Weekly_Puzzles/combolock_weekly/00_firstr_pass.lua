--first_pass
--141
--8.598

if z>2 or z<-2 then return end

-- lock u-shape
if z==0 and y>=-4 and floor(x^2/4+y^2/22-1)==0 then
	if y<=-1 then
		if x>0 then return GREY else return YELLOW end
	end
	return GREY
end

-- combinations
if x>=1 and x<=3 and z<=1 and z>=-1 then
	if y==0 or y==-2 or y==-4 then
		if y==-2 then
			z=z+1
		end
		return (z+x+t)%2==1 and GREY or BLACK
	end
end

-- lock body
if y<=1 and x^2/15+z^2/8-1<=0 then
	return YELLOW
end
