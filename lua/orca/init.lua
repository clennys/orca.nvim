local C = require 'orca.config'
local G = require 'orca.groups'
local U = require 'orca.utils'

local M = {}

function M.load(opts)
    if not U.loaded() then
        vim.api.nvim_command 'hi clear'
        vim.o.termguicolors = true
        vim.g.colors_name = U.NAME
    end

    C.setup(opts)

    -- Apply theme
    require('orca.colors').extend_palette()
    U.highlight(G.get_groups())
    G.set_term_colors()
end

-- Add command to nvim
vim.api.nvim_create_user_command('Orca', function(_)
    vim.api.nvim_command 'colorscheme orca'
end, {
    nargs = 1,
})

M.setup = C.setup

return M
