# orca.nvim (WIP)
New nord inspired neovim colorscheme. Feel free to try it out.
Feedback is very welcome!

### Install
```lua
{
    'clennys/orca.nvim',
    lazy = false,
    priority = 1000,
	config = function()
		require 'orca' .setup{
			transparent_bg = false,
            -- TODO: Add more options
		}
        require 'orca' .load()
	end,
}
```
Lualine theme:
```lua
require'lualine'.setup {
    options = {
        theme = 'orca'
    }
}
```

### Screenshots
- TODO Add new screenshots

### Credits
- [nord](https://www.nordtheme.com/)
- [nordic.nvim](https://github.com/AlexvZyl/nordic.nvim)
- [tokyonight.nvim](https://github.com/folke/tokyonight.nvim)
