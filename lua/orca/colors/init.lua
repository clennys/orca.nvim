local U = require 'orca.utils'
local O = require('orca.config').options
local C = require 'orca.colors.palette'

function C.extend_palette()
	-- Modify the palette before generating colors.
	C = O.on_palette(C)

	local diff_blend = 0.2

	C.diff = {
		change0 = U.blend(C.blue.base, C.bg, 0.05),
		change1 = U.blend(C.blue.bright, C.bg, diff_blend),
		add = U.blend(C.green.base, C.bg, diff_blend),
		delete = U.blend(C.red.base, C.bg, diff_blend),
	}
end

return C
