local O = require('orca.config').options

local palette = {
	bg = "#1c2023",
	fg = "#d8dee9",
	none = "NONE",
	blue = {
		base = "#81a1c1",
		bright = "#88c0d0",
		dark = "#5e81ac"
	},
	cyan = {
		base = '#8FBCBB',
		bright = '#9FC6C5',
		dim = '#80B3B2',
	},
	red = {
		base = '#BF616A',
		bright = '#C5727A',
		dim = '#B74E58',
	},
	orange = {
		base = '#D08770',
		bright = '#D79784',
		dim = '#CB775D',
	},
	yellow = {
		base = '#EBCB8B',
		bright = '#EFD49F',
		dim = '#E7C173',
	},
	green = {
		base = '#A3BE8C',
		bright = '#B1C89D',
		dim = '#97B67C',
	},
	purple = {
		base = '#B48EAD',
		bright = '#BE9DB8',
		dim = '#A97EA1',
	},
	white_grey = {
		base = "#eceff4", -- white0
		grey = "#acb1ba", -- white1
		comment_grey = "#697884",
		linenr_grey = "#4e5961",

	},
	black = {
		dark = "#242a2e", -- black 0
		brighter = "#2d3439", -- black 1
		darkest = '#101315', -- black 2
	}
}

return palette
