local C = require 'orca.colors'
local O = require('orca.config').options

-- TODO:
-- HACK:
-- WARN:
-- PERF:
-- NOTE:
return {
	Boolean = { fg = C.purple.base },
	Number = { fg = C.orange.base },
	Float = { fg = C.cyan.base },
	PreProc = { fg = C.red.base },
	PreCondit = { fg = C.red.base },
	Include = { fg = C.purple.base },
	Define = { fg = C.red.base },
	Conditional = { fg = C.blue.base },
	Repeat = { fg = C.purple.base },
	Keyword = { fg = C.blue.base },
	Typedef = { fg = C.blue.base },
	Exception = { fg = C.red.base },
	Statement = { fg = C.red.base },
	Error = { fg = C.red.base },
	StorageClass = { fg = C.blue.base },
	Tag = { fg = C.blue.base },
	Label = { fg = C.blue.base },
	Structure = { fg = C.yellow.base },
	Operator = { fg = C.red.base },
	Title = { fg = C.blue.base, bold = true },
	Special = { fg = C.blue.dark },
	SpecialChar = { fg = C.orange.base },
	Type = { fg = C.blue.bright },
	Function = { fg = C.yellow.base },
	String = { fg = C.green.base },
	Character = { fg = C.green.bright },
	Constant = { fg = C.orange.base },
	Macro = { fg = C.cyan.base },
	Identifier = { fg = C.fg },

	Comment = { fg = C.white_grey.comment_grey },
	SpecialComment = { fg = C.purple.dim, italic = true },
	Todo = { bg = C.red.base },
	Delimiter = { fg = C.red.base },
	Ignore = { fg = C.white_grey.linenr_grey },
	Underlined = { underline = true },

}
