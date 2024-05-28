local C = require("orca.colors")

return {
	GitSignsAdd = { fg = C.green.base},
	GitSignsChange = {fg = C.yellow.base},
	GitSignsDelete = {fg = C.red.base},
	GitSignsChangedelete = {fg = C.orange.base},
	GitSignsTopdelete = {fg = C.red.base},
	GitSignsUntracked = {fg = C.blue.bright},
}

