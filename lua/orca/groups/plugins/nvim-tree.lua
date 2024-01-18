local C = require("orca.colors")

return { -- Nvim-Tree
	NvimTreeExecFile = { fg = C.green.base },
	NvimTreeFolderIcon = { fg = C.yellow.base },
	NvimTreeFolderName = { fg = C.white_grey.comment_grey },
	NvimTreeGitDeleted = { fg = C.blue.base },
	NvimTreeGitDirty = { fg = C.red.base },
	NvimTreeGitMerge = { fg = C.red.base },
	NvimTreeGitNew = { fg = C.red.base },
	NvimTreeGitRenamed = { fg = C.red.base },
	NvimTreeGitStaged = { fg = C.red.base },
	NvimTreeImageFile = { fg = C.blue.base },
	NvimTreeIndentMarker = { fg = C.white_grey.linenr_grey },
	NvimTreeRootFolder = { fg = C.green.base },
	NvimTreeSpecialFile = { fg = C.blue.base, underline = true },
	NvimTreeSymlink = { fg = C.blue.base, italic = true },
	NvimTreeOpenedFolderName = { fg = C.purple.base },
}
