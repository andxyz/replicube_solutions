--[[ From Wikipedia: Xicalcoliuhqui is a common motif in Mesoamerican art.
It is composed of three or more steps connected to a hook or spiral,
reminiscent of a "greek-key" meander. Pre-Columbian examples may be
found on everything from jewelry, masks, ceramics, sculpture, textiles
and featherwork to painted murals, codices and architectural elements
of buildings.The motif has been in continual use from the pre-Columbian era
to the present.]]

if z<7 or y%7==0 then return 2 end
if y<0 then
	x=-x
	y=-y
end
return y<x+7 and x<7 and 9 