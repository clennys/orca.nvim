local orca = {
	bg = "#1c2023", -- 1
	fg = "#d8dee9", -- 8
	red = "#bf616a", -- 3
	orange = "#d08770", -- 2
	yellow = "#ebcb8b", -- 9
	purple = "#b48ead", -- 4
	cyan = "#96b4b5", -- 0, 12
	green = "#a3be8c", -- 7
	light_green = "#8FBCBB",
	blue = "#81a1c1", -- 5
	light_blue = "#88c0d0", -- 6
	dark_blue = "#5e81ac", -- 10
	comment_grey = "#697884", --11
	linenr_grey = "#4e5961", -- 17
	black0 = "#242a2e", -- 16
	black1 = "#2d3439", --13
	white0 = "#eceff4", -- 14
	white1 = "#acb1ba",
	none = "NONE",
}
function orca.terminal_color()
	vim.g.terminal_color_0 = orca.bg
	vim.g.terminal_color_1 = orca.red
	vim.g.terminal_color_2 = orca.green
	vim.g.terminal_color_3 = orca.yellow
	vim.g.terminal_color_4 = orca.blue
	vim.g.terminal_color_5 = orca.purple
	vim.g.terminal_color_6 = orca.cyan
	vim.g.terminal_color_7 = orca.fg
	vim.g.terminal_color_8 = orca.comment_grey
	vim.g.terminal_color_9 = orca.red
	vim.g.terminal_color_10 = orca.green
	vim.g.terminal_color_11 = orca.yellow
	vim.g.terminal_color_12 = orca.blue
	vim.g.terminal_color_13 = orca.purple
	vim.g.terminal_color_14 = orca.cyan
	vim.g.terminal_color_15 = orca.fg
end

function orca.highlight(group, color)
	local style = color.style and "gui=" .. color.style or "gui=NONE"
	local fg = color.fg and "guifg=" .. color.fg or "guifg=NONE"
	local bg = color.bg and "guibg=" .. color.bg or "guibg=NONE"
	local sp = color.sp and "guisp=" .. color.sp or ""
	vim.api.nvim_command("highlight " .. group .. " " .. style .. " " .. fg .. " " .. bg .. " " .. sp)
end

function orca.load_syntax()
	local syntax = {
		Normal = { fg = orca.fg, bg = orca.bg },
		Terminal = { fg = orca.fg, bg = orca.bg },
		SignColumn = { fg = orca.fg, bg = orca.bg },
		FoldColumn = { fg = orca.linenr_grey, bg = orca.bg },
		VertSplit = { fg = orca.black1, bg = orca.bg },
		Folded = { fg = orca.linenr_grey, bg = orca.bg },
		EndOfBuffer = { fg = orca.bg, bg = orca.none },
		IncSearch = { fg = orca.bg, bg = orca.yellow, style = "underline" },
		Search = { fg = orca.bg, bg = orca.yellow },
		ColorColumn = { fg = orca.none, bg = orca.black1 },
		Conceal = { fg = orca.linenr_grey, bg = orca.none },
		Cursor = { fg = orca.none, bg = orca.none, style = "reverse" },
		vCursor = { fg = orca.none, bg = orca.none, style = "reverse" },
		iCursor = { fg = orca.none, bg = orca.none, style = "reverse" },
		lCursor = { fg = orca.none, bg = orca.none, style = "reverse" },
		CursorIM = { fg = orca.none, bg = orca.none, style = "reverse" },
		CursorColumn = { fg = orca.none, bg = orca.bg },
		CursorLine = { fg = orca.none, bg = orca.bg },
		LineNr = { fg = orca.linenr_grey },
		qfLineNr = { fg = orca.cyan },
		CursorLineNr = { fg = orca.blue, style="bold" },
		DiffAdd = { fg = orca.green, bg = orca.bg },
		DiffChange = { fg = orca.yellow, bg = orca.bg },
		DiffDelete = { fg = orca.red, bg = orca.bg },
		DiffText = { fg = orca.blue, bg = orca.bg },
		Directory = { fg = orca.purple, bg = orca.none },
		ErrorMsg = { fg = orca.red, bg = orca.none, style = "bold" },
		WarningMsg = { fg = orca.yellow, bg = orca.none, style = "bold" },
		ModeMsg = { fg = orca.fg, bg = orca.none, style = "bold" },
		MatchParen = { fg = orca.bg, bg = orca.fg },
		NonText = { fg = orca.linenr_grey },
		Whitespace = { fg = orca.linenr_grey },
		SpecialKey = { fg = orca.linenr_grey },
		Pmenu = { fg = orca.white1, bg = orca.black0 },
		PmenuSel = { fg = orca.white0, bg = orca.black1 },
		PmenuSelBold = { fg = orca.white0, g = orca.blue },
		PmenuSbar = { fg = orca.white0, bg = orca.black1 },
		PmenuThumb = { fg = orca.white0, bg = orca.comment_grey },
		WildMenu = { fg = orca.light_blue, bg = orca.bg },
		Question = { fg = orca.yellow },
		NormalFloat = { fg = orca.fg, bg = orca.black0 },
		Tabline = { fg = orca.linenr_grey, bg = orca.bg },
		TabLineFill = { style = orca.none },
		TabLineSel = { fg = orca.fg, bg = orca.black1, style = "bold" },
		StatusLine = { fg = orca.white0, bg = orca.bg, style = orca.none },
		StatusLineNC = { fg = orca.fg, bg = orca.bg, style = orca.none },
		SpellBad = { fg = orca.red, bg = orca.none, style = "undercurl" },
		SpellCap = { fg = orca.yellow, bg = orca.none, style = "undercurl" },
		SpellLocal = { fg = orca.cyan, bg = orca.none, style = "undercurl" },
		SpellRare = { fg = orca.purple, bg = orca.none, style = "undercurl" },
		Visual = { fg = orca.fg, bg = orca.black1 },
		VisualNOS = { fg = orca.fg, bg = orca.black1 },
		QuickFixLine = { fg = orca.yellow, style = "bold" },
		Debug = { fg = orca.orange },
		debugBreakpoint = { fg = orca.fg, bg = orca.red },

		Boolean = { fg = orca.orange },
		Number = { fg = orca.orange },
		Float = { fg = orca.purple },
		PreProc = { fg = orca.blue },
		PreCondit = { fg = orca.blue },
		Include = { fg = orca.purple },
		Define = { fg = orca.red },
		Conditional = { fg = orca.blue },
		Repeat = { fg = orca.purple },
		Keyword = { fg = orca.blue },
		Typedef = { fg = orca.blue },
		Exception = { fg = orca.red },
		Statement = { fg = orca.red },
		Error = { fg = orca.red },
		StorageClass = { fg = orca.blue },
		Tag = { fg = orca.blue },
		Label = { fg = orca.blue },
		Structure = { fg = orca.yellow },
		Operator = { fg = orca.red },
		Title = { fg = orca.dark_blue, style = "bold" },
		Special = { fg = orca.dark_blue },
		SpecialChar = { fg = orca.dark_blue },
		Type = { fg = orca.light_green },
		Function = { fg = orca.yellow },
		String = { fg = orca.green },
		Character = { fg = orca.blue },
		Constant = { fg = orca.orange },
		Macro = { fg = orca.cyan },
		Identifier = { fg = orca.blue },

		Comment = { fg = orca.comment_grey },
		SpecialComment = { fg = orca.dark_blue, style = "italic" },
		Todo = { fg = orca.red },
		Delimiter = { fg = orca.red },
		Ignore = { fg = orca.linenr_grey },
		Underlined = { fg = orca.none, style = "underline" },

		DashboardShortCut = { fg = orca.purple },
		DashboardHeader = { fg = orca.orange },
		DashboardCenter = { fg = orca.cyan },
		DashboardFooter = { fg = orca.yellow, style = "bold" },

		markdownCode = { fg = orca.green },
	}
	return syntax
end

function orca.load_plugin_syntax()
	local plugin_syntax = {

		-- Treesitter
		TSAnnotation = { fg = orca.orange },
		TSAttribute = { fg = orca.cyan },
		TSBoolean = { fg = orca.orange },
		TSCharacter = { fg = orca.green },
		TSConditional = { fg = orca.blue },
		TSConstBuiltin = { fg = orca.orange },
		TSConstMacro = { fg = orca.red },
		TSConstant = { fg = orca.orange },
		TSConstructor = { fg = orca.purple },
		TSEmphasis = { fg = orca.orange },
		TSError = { fg = orca.red, style = "underline" },
		TSException = { fg = orca.blue },
		TSField = { fg = orca.fg },
		TSFloat = { fg = orca.purple },
		TSFuncBuiltin = { fg = orca.light_green },
		TSFuncMacro = { fg = orca.blue},
		TSFunction = { fg = orca.yellow, style = "italic" },
		TSInclude = { fg = orca.purple },
		TSKeyword = { fg = orca.blue },
		TSKeywordFunction = { fg = orca.blue },
		TSKeywordOperator = { fg = orca.red },
		TSLabel = { fg = orca.light_blue },
		TSLiteral = { fg = orca.yellow },
		TSMethod = { fg = orca.green },
		TSNamespace = { fg = orca.light_green },
		TSNone = { fg = orca.fg },
		TSNumber = { fg = orca.light_green },
		TSOperator = { fg = orca.red },
		TSParameter = { fg = orca.fg },
		TSParameterReference = { fg = orca.blue },
		TSProperty = { fg = orca.blue },
		TSPunctBracket = { fg = orca.fg },
		TSPunctDelimiter = { fg = orca.dark_blue },
		TSPunctSpecial = { fg = orca.white0 },
		TSRepeat = { fg = orca.purple },
		TSStrike = { style = "strikethrough" },
		TSString = { fg = orca.green },
		TSStringEscape = { fg = orca.light_blue },
		TSStringRegex = { fg = orca.purple },
		TSStrong = { fg = orca.yellow },
		TSTag = { fg = orca.blue },
		TSTagDelimiter = { fg = orca.comment_grey },
		TSText = { fg = orca.yellow },
		TSTitle = { fg = orca.dark_blue },
		TSType = { fg = orca.light_blue },
		TSTypeBuiltin = { fg = orca.light_blue },
		TSURI = { fg = orca.yellow },
		TSUnderline = { fg = orca.yellow },
		TSVariable = { fg = orca.fg },
		TSVariableBuiltin = { fg = orca.blue },
		TSEnvironment = { fg = orca.blue },
		TSEnvironmentName = { fg = orca.light_blue },
		TSMath = { fg = orca.red },

		-- nvim-cmp
		CmpItemMenu = { fg = orca.fg, bg = orca.black0 },
		CmpItemAbbr = { fg = orca.white1, bg = orca.black0 },
		CmpItemAbbrDeprecated = { fg = orca.comment_grey, bg = orca.black0, style = "strikethrough" },
		CmpItemAbbrMatch = { fg = orca.yellow, bg = orca.black0 },
		CmpItemAbbrMatchFuzzy = { fg = orca.yellow, bg = orca.black0 },
		CmpItemKind = { fg = orca.blue, bg = orca.black0 },
		CmpItemKindVariable = { fg = orca.fg, bg = orca.black0 },
		CmpItemKindInterface = { fg = orca.bg0, bg = orca.black0 },
		CmpItemKindText = { fg = orca.bg0, bg = orca.black0 },
		CmpItemKindFunction = { fg = orca.yellow },
		CmpItemKindMethod = { fg = orca.green },
		CmpItemKindKeyword = { fg = orca.blue },
		CmpItemKindProperty = { fg = orca.blue },
		CmpItemKindUnit = { fg = orca.purple, bg = orca.black0 },
		CmpItemKindClass = { fg = orca.light_blue, bg = orca.black0 },
		CmpItemKindModule = { fg = orca.purple, bg = orca.black0 },
		CmpItemKindConstant = { fg = orca.red, bg = orca.black0 },
		CmpItemKindEnum = { fg = orca.dark_blue, bg = orca.black0 },
		CmpItemKindSnippet = { fg = orca.cyan, bg = orca.black0 },
		CmpItemKindFolder = { fg = orca.light_green, bg = orca.black0 },
		CmpItemKindFile = { fg = orca.light_green, bg = orca.black0 },
		CmpItemKindValue = { fg = orca.blue, bg = orca.black0 },
		CmpItemKindField = { fg = orca.blue, bg = orca.black0 },
		CmpItemKindStruct = { fg = orca.yellow },
		CompeDocumentation = { fg = orca.fg, bg = orca.black0 },
		CompeDocumentationBorder = { fg = orca.fg, bg = orca.black0 },

		-- Diagnostic
		DiagnosticInfo = { fg = orca.cyan },
		DiagnosticError = { fg = orca.red },
		DiagnosticHint = { fg = orca.cyan },
		DiagnosticWarn = { fg = orca.yellow },
		DiagnosticFloatingInfo = { fg = orca.cyan },
		DiagnosticFloatingError = { fg = orca.red },
		DiagnosticFloatingHint = { fg = orca.cyan },
		DiagnosticFloatingWarn = { fg = orca.yellow },
		DiagnosticSignInfo = { fg = orca.cyan },
		DiagnosticSignError = { fg = orca.red },
		DiagnosticSignHint = { fg = orca.cyan },
		DiagnosticSignWarn = { fg = orca.yellow },
		DiagnosticVirtualTextInfo = { fg = orca.cyan },
		DiagnosticVirtualTextError = { fg = orca.red },
		DiagnosticVirtualTextHint = { fg = orca.cyan },
		DiagnosticVirtualTextWarn = { fg = orca.yellow },

		-- Nvim-Tree
		NvimTreeExecFile = { fg = orca.green, bg = orca.bg },
		NvimTreeFolderIcon = { fg = orca.yellow, bg = orca.bg },
		NvimTreeFolderName = { fg = orca.comment_grey, bg = orca.bg },
		NvimTreeGitDeleted = { fg = orca.blue },
		NvimTreeGitDirty = { fg = orca.red, bg = orca.bg },
		NvimTreeGitMerge = { fg = orca.red, bg = orca.bg },
		NvimTreeGitNew = { fg = orca.red, bg = orca.bg },
		NvimTreeGitRenamed = { fg = orca.red, bg = orca.bg },
		NvimTreeGitStaged = { fg = orca.red, bg = orca.bg },
		NvimTreeImageFile = { fg = orca.blue, style = "bold" },
		NvimTreeIndentMarker = { fg = orca.linenr_grey, bg = orca.bg },
		NvimTreeRootFolder = { fg = orca.green, bg = orca.bg },
		NvimTreeSpecialFile = { fg = orca.blue, style = "underline" },
		NvimTreeSymlink = { fg = orca.blue, style = "bold" },
		NvimTreeOpenedFolderName = {fg=orca.purple},

		-- notify-nvim
		NotifyERRORBorder = {fg = orca.red},
		NotifyWARNBorder = {fg = orca.yellow},
		NotifyINFOBorder = {fg = orca.cyan},
		NotifyDEBUGBorder = {fg = orca.white1},
		NotifyTRACEBorder = {fg = orca.purple},
		NotifyERRORIcon = {fg = orca.red},
		NotifyWARNIcon = {fg = orca.yellow},
		NotifyINFOIcon = {fg = orca.cyan},
		NotifyDEBUGIcon = {fg = orca.white1},
		NotifyTRACEIcon = {fg = orca.purple},
		NotifyERRORTitle  = {fg = orca.red},
		NotifyWARNTitle = {fg = orca.yellow},
		NotifyINFOTitle = {fg = orca.cyan},
		NotifyDEBUGTitle  = {fg = orca.white1},
		NotifyTRACETitle  = {fg = orca.purple},
	}
	return plugin_syntax
end

local async_load_plugin

async_load_plugin = vim.loop.new_async(vim.schedule_wrap(function()
	orca.terminal_color()
	local syntax = orca.load_plugin_syntax()
	for group, colors in pairs(syntax) do
		orca.highlight(group, colors)
	end
	async_load_plugin:close()
end))

function orca.colorscheme()
	vim.api.nvim_command("hi clear")
	if vim.fn.exists("syntax_on") then
		vim.api.nvim_command("syntax reset")
	end
	vim.o.background = "dark"
	vim.o.termguicolors = true
	vim.g.colors_name = "orca"
	local syntax = orca.load_syntax()
	for group, colors in pairs(syntax) do
		orca.highlight(group, colors)
	end
	async_load_plugin:send()
end

orca.colorscheme()

return orca
