local C = require 'orca.colors'

local orca = {}

orca.normal = {
    a = { bg = C.white_grey.grey, fg = C.black.base, gui = 'bold' },
    b = { bg = C.bg, fg = C.fg },
    c = { bg = C.bg, fg = C.fg },
}

orca.insert = {
    a = { bg = C.green.bright, fg = C.black0, gui = 'bold' },
    b = { bg = C.gray1, fg = C.white1 },
    c = { bg = C.bg_statusline, fg = C.white0 },
}

orca.command = {
    a = { bg = C.cyan.bright, fg = C.black0, gui = 'bold' },
    b = { bg = C.gray1, fg = C.white1 },
    c = { bg = C.bg_statusline, fg = C.white0 },
}

orca.visual = {
    a = { bg = C.red.bright, fg = C.black0, gui = 'bold' },
    b = { bg = C.gray1, fg = C.white1 },
    c = { bg = C.bg_statusline, fg = C.white0 },
}

orca.replace = {
    a = { bg = C.magenta.bright, fg = C.black0, gui = 'bold' },
    b = { bg = C.gray1, fg = C.white1 },
    c = { bg = C.bg_statusline, fg = C.white0 },
}

orca.terminal = {
    a = { bg = C.blue2, fg = C.black0, gui = 'bold' },
    b = { bg = C.gray1, fg = C.white1 },
    c = { bg = C.bg_statusline, fg = C.white0 },
}

orca.inactive = {
    a = { bg = C.gray2, fg = C.black0, gui = 'bold' },
    b = { bg = C.gray1, fg = C.white1 },
    c = { bg = C.bg_statusline, fg = C.white0 },
}

return orca
