--
--
--

--[[ From Wikipedia: Xicalcoliuhqui is a common motif in Mesoamerican art.
It is composed of three or more steps connected to a hook or spiral,
reminiscent of a "greek-key" meander. Pre-Columbian examples may be
found on everything from jewelry, masks, ceramics, sculpture, textiles
and featherwork to painted murals, codices and architectural elements
of buildings.The motif has been in continual use from the pre-Columbian era
to the present.]]
Z= abs(z)
X= abs(x)
Y= abs(y)
if (Z<7 and X<7) or y%7==0 then return 2 end

if Z==7 and X<7 then
	if y<0 then x=-x end
	if z<0 then x=-x end
	return Y<x+7 and YELLOW
end

if X==7 and Z<7 then
	if y<0 then z=-z end
  if x>0 then z=-z end
	return Y<z+7 and YELLOW
end
