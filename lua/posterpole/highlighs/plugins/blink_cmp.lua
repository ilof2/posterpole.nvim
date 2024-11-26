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
		BlinkCmpLabel = { fg = colors.mainYellow },
		BlinkCmpLabelDepricated = { fg = colors.mainGray, strikethrough = true },
		BlinkCmpLabelMatch = { link = "PmenuSel" },
		BlinkCmpGhostText = { link = "Comment" },

		BlinkCmpKindText = { link = "Normal" },
		BlinkCmpKindFunction = { link = "Function" },
		BlinkCmpKindVariable = { link = "Variable" },
		BlinkCmpKindEnum = { link = "Constant" },
		BlinkCmpKindSnippet = { link = "String" },
		BlinkCmpKindField = { fg = colors.mainCyan },
		BlinkCmpKindClass = { link = "Type" },
		BlinkCmpKindConstant = { link = "Constant" },
		BlinkCmpKindMethod = { link = "Function" },
	}
end

return M
