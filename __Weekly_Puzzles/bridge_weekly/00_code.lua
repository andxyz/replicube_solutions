-- Try not to get your feet wet!

-- By adjusting the frequency and amplitude of a sine wave,
-- you can create a variety of effects.
-- This one makes a nice meandering stream.
if y == -extent then
	return abs(x + sin(z/2) * 2)
end