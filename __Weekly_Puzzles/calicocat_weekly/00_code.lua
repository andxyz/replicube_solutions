if max(abs(x),abs(z+1.5))<=2 and y<=z+3 then
  if x>0 then return ORANGE
	elseif x<0 then return BROWN
  else return WHITE
	end
end
