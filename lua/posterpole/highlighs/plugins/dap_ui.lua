local M = {}

---@param palette Palette
---@param config PosterpoleConfig
---@return table
function M.setup(palette, config)
	local colors = palette.colors

	return {
		debugPC = { bg = colors.diffDel },
		DapUIDecoration = { link = "Keyword"  },
		DapUIFloatBorder = { link = "Keyword"  },
		DapUIWatchesEmpty = { link = "Keyword"  },
		DapUIWatchesError = { link = "Keyword"  },
		DapUIStop = { link = "Keyword"  },
		DapUIStopNC = { link = "Keyword"  },
		DapUIModifiedValue = { fg = colors.special, bold = true },
		DapUIStoppedThread = { link = "Special"  },
		DapUIWatchesValue = { link = "Constant" },
		DapUIStepOver = { link = "Directory" },
		DapUIStepInto = { link = "Directory" },
		DapUIStepBack = { link = "Directory" },
		DapUIStepOut = { link = "Directory" },

		DapUIStepOverNC = { link = "Directory" },
		DapUIStepIntoNC = { link = "Directory" },
		DapUIStepBackNC = { link = "Directory" },
		DapUIStepOutNC = { link = "Directory" },
		DapUIBreakpointsPath = { link = "Directory" },
		DapUILineNumber = { link = "Directory" },
		DapUIScope = { link = "Directory" },
		DapUIWinSelect = { fg = colors.directory, bold = true },
		DapUIType = { link = "Type" },
		DapUISource = { link = "Type" },
		DapUIBreakpointsInfo = { link = "String" },
		DapUIBreakpointsCurrentLine = { fg = colors.string, bold = true },
		DapUIThread = { link = "String" },

		DapUIPlayPause = { link = "String" },
		DapUIRestart = { fg = colors.string, bold = true },

		DapUIPlayPauseNC = { link = "String" },
		DapUIRestartNC = {link = "String" },
	}
end

return M
