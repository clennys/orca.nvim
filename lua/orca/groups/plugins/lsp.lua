local C = require("orca.colors")
local U = require("orca.utils")

return {
	DiagnosticInfo = { fg = C.cyan.bright },
	DiagnosticError = { fg = C.red.bright },
	DiagnosticHint = { fg = C.cyan.bright },
	DiagnosticWarn = { fg = C.yellow.bright },
	DiagnosticFloatingInfo = { fg = C.cyan.bright },
	DiagnosticFloatingError = { fg = C.red.bright },
	DiagnosticFloatingHint = { fg = C.cyan.bright },
	DiagnosticFloatingWarn = { fg = C.yellow.bright },
	DiagnosticSignInfo = { fg = C.cyan.bright },
	DiagnosticSignError = { fg = C.red.bright },
	DiagnosticSignHint = { fg = C.cyan.bright },
	DiagnosticSignWarn = { fg = C.yellow.bright },
	DiagnosticVirtualTextInfo = { fg = C.cyan.bright, bg = U.darken(C.cyan.bright, 0.7) },
	DiagnosticVirtualTextError = { fg = C.red.bright, bg = U.darken(C.red.bright, 0.7) },
	DiagnosticVirtualTextHint = { fg = C.cyan.bright, bg = U.darken(C.cyan.bright, 0.7) },
	DiagnosticVirtualTextWarn = { fg = C.yellow.bright, bg = U.darken(C.yellow.bright, 0.7) },
}
