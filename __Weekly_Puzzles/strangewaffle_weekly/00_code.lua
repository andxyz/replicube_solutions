-- This strange waffle has seen too much
-- 
-- Waffle: "Cells Interlinked, Cells Interlinked, Cells Interlinked"
-- Interviewer: "You are wayyy off baseline strange waffle"

local function f(x,y,z)
	return (y==abs(x) or y==abs(z))
end

return f(x/t,y,z/t) and ({7,8,9,10,11})[clamp(y,1,5)]
