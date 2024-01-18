local C = require("orca.colors")

return {
	DiffAdd = { bg = C.diff.add, bold = true }, -- diff mode: Added line |diff.txt|
	DiffChange = { bg = C.diff.change0 }, -- diff mode: Changed line |diff.txt|
	DiffDelete = { bg = C.diff.delete, bold = true }, -- diff mode: Deleted line |diff.txt|
	DiffText = { bg = C.diff.change1, bold = true }, -- diff mode: Changed text within a changed line |diff.txt|

	diffAdded = { fg = C.green.base },
	diffRemoved = { fg = C.red.base },
	diffChanged = { fg = C.blue.base },
	diffOldFile = { fg = C.fg },
	diffNewFile = { fg = C.green.base },
	diffFile = { fg = C.fg },

	diffLine = {},
	diffIndexLine = {},
}
