local C = require 'orca.colors'

local orca = {}

orca.normal = {
    a = { bg = C.white_grey.grey, fg = C.black.base, gui = 'bold' },
    b = { bg = C.bg, fg = C.fg },
    c = { bg = C.bg, fg = C.fg },
}

orca.insert = {
    a = { bg = C.green.bright, fg = C.black.base, gui = 'bold' },
    b = { bg = C.bg, fg = C.fg },
    c = { bg = C.bg, fg = C.fg },
}

orca.command = {
    a = { bg = C.cyan.bright, fg = C.black.base, gui = 'bold' },
    b = { bg = C.bg, fg = C.fg },
    c = { bg = C.bg, fg = C.fg },
}

orca.visual = {
    a = { bg = C.purple.bright, fg = C.black.base, gui = 'bold' },
    b = { bg = C.bg, fg = C.fg },
    c = { bg = C.bg, fg = C.fg },
}

orca.replace = {
    a = { bg = C.yellow.bright, fg = C.black.base, gui = 'bold' },
    b = { bg = C.bg, fg = C.fg },
    c = { bg = C.bg, fg = C.fg },
}

orca.terminal = {
    a = { bg = C.blue.bright, fg = C.black.base, gui = 'bold' },
    b = { bg = C.bg, fg = C.fg },
    c = { bg = C.bg, fg = C.fg },
}

orca.inactive = {
    a = { bg = C.white_grey.linenr_grey, fg = C.black.base, gui = 'bold' },
    b = { bg = C.bg, fg = C.fg },
    c = { bg = C.bg, fg = C.fg },
}

return orca
