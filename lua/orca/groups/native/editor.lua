local C = require 'orca.colors'
-- local O = require('orca.config').options

return {
	Normal = { fg = C.fg, bg = C.bg },
	Terminal = { fg = C.fg, bg = C.bg },
	SignColumn = { fg = C.fg },
	FoldColumn = { fg = C.white_grey.linenr_grey },
	VertSplit = { fg = C.black.brighter },
	Folded = { fg = C.white_grey.linenr_grey },
	EndOfBuffer = { fg = C.white_grey.linenr_grey, bg = C.none },
	IncSearch = { fg = C.black.base, bg = C.yellow.base, bold = true },
	Search = { fg = C.black.base, bg = C.yellow.base },
	ColorColumn = { bg = C.black.brighter },
	Conceal = { fg = C.white_grey.grey, bg = C.none },
	Cursor = { fg = C.fg, bg = C.black.darkest, reverse = true },
	vCursor = { fg = C.fg, bg = C.black.darkest, reverse = true },
	iCursor = { fg = C.fg, bg = C.black.darkest, reverse = true },
	lCursor = { fg = C.fg, bg = C.black.darkest, reverse = true },
	CursorIM = { fg = C.fg, bg = C.black.darkest, reverse = true },
	CursorColumn = { bg = C.black.brighter },
	CursorLine = { bg = C.black.brighter },
	LineNr = { fg = C.white_grey.linenr_grey },
	qfLineNr = { fg = C.cyan.base },
	CursorLineNr = { fg = C.blue.base, bold = true },
	Directory = { fg = C.purple.base, bg = C.none },
	ErrorMsg = { fg = C.red.bright, bg = C.none, bold = true },
	WarningMsg = { fg = C.yellow.bright, bg = C.none, bold = true },
	ModeMsg = { fg = C.fg, bg = C.none, bold = true },
	MatchParen = { sp = C.orange.bright, underline = true },
	NonText = { fg = C.white_grey.linenr_grey },
	Whitespace = { fg = C.white_grey.linenr_grey },
	SpecialKey = { fg = C.white_grey.linenr_grey },
	Pmenu = { fg = C.white_grey.grey, bg = C.black.dark },
	PmenuSel = { fg = C.white_grey.base, bg = C.black.brighter },
	PmenuSelBold = { fg = C.white_grey.base, bg = C.blue.base },
	PmenuSbar = { fg = C.white_grey.base, bg = C.black.brighter },
	PmenuThumb = { fg = C.white_grey.bsae, bg = C.white_grey.comment_grey },
	WildMenu = { fg = C.blue.bright },
	Question = { fg = C.yellow.bright },
	NormalFloat = { fg = C.fg },
	FloatBoarder = { fg = C.fg },
	Tabline = { fg = C.white_grey.linenr_grey },
	TabLineFill = {bg = C.None},
	TabLineSel = { fg = C.fg, bg = C.black.brighter, bold = true },
	StatusLine = { fg = C.white_grey.base },
	StatusLineNC = { fg = C.fg },
	SpellBad = { sp = C.red.bright, undercurl = true },
	SpellCap = { sp = C.yellow.bright, undercurl = true },
	SpellLocal = { sp = C.cyan.bright, undercurl = true },
	SpellRare = { sp = C.purple.bright, undercurl = true },
	Visual = { fg = C.fg, bg = C.black.brighter },
	VisualNOS = { fg = C.fg, bg = C.black.brighter },
	QuickFixLine = { bg = C.yellow.base, bold = true },
	Debug = { fg = C.orange.base },
	debugBreakpoint = { fg = C.fg, bg = C.red.base },
	Substitute = { bg = C.cyan.bright, fg = C.black.base },
}
