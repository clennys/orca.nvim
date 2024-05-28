local merge = require("orca.utils").merge
local C = require("orca.config")

local M = {}

M.integrations = {
	"nvim-tree",
	"nvim-cmp",
	"lsp",
	"nvim-tree",
	"treesitter",
	"gitsigns",
	"vimtex"
}

M.native = {
	"editor",
	"syntax",
	"diff",
}

function M.get_groups()
	local groups = {}
	for _, native in ipairs(M.native) do
		groups = merge(groups, require("orca.groups.native." .. native))
	end
	for _, integration in ipairs(M.integrations) do
		groups = merge(groups, require("orca.groups.plugins." .. integration))
	end
	return merge(groups, C.options.override)
end

function M.set_term_colors()
	local colors = require("orca.groups.native.terminal")
	for term, col in pairs(colors) do
		vim.g[term] = col
	end
end

return M
