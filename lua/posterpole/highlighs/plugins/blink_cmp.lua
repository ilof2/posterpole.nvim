local M = {}

---@param palette Palette
---@param config PosterpoleConfig
---@return table
function M.setup(palette, config)
	local colors = palette.colors

	return {
		BlinkCmpMenu = { link = "Pmenu" },
		BlinkCmpDoc = { link = "Pmenu" },

		BlinkCmpMenuBorder = { link = "WinSeparator" },
		BlinkCmpDocBorder = { link = "WinSeparator" },
		BlinkCmpSignatureHelpBorder = { link = "WinSeparator" },

		BlinkCmpMenuSelection = { link = "Visual" },
		BlinkCmpLabel = { link = "Special"},
		BlinkCmpLabelDepricated = { fg = colors.comment, strikethrough = true },
		BlinkCmpLabelMatch = { link = "PmenuSel" },
		BlinkCmpGhostText = { link = "Comment" },

		BlinkCmpKindText = { link = "String" },
		BlinkCmpKindFunction = { link = "Function" },
		BlinkCmpKindVariable = { link = "Variable" },
		BlinkCmpKindEnum = { link = "Constant" },
		BlinkCmpKindSnippet = { link = "Macro" },
		BlinkCmpKindField = { fg = colors.directory },
		BlinkCmpKindClass = { link = "Type" },
		BlinkCmpKindConstant = { link = "Constant" },
		BlinkCmpKindMethod = { link = "Function" },
    BlinkCmpKindTypeParameter = { link = "Type"},
    BlinkCmpKindProperty = { link = "Constant"},
    BlinkCmpKindKeyword = { link = "Constant"}
	}
end

return M
