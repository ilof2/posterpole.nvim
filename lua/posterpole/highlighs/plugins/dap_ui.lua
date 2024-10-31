local M = {}

---@param palette Palette
---@param config PosterpoleConfig
---@return table
function M.setup(palette, config)
	local colors = palette.colors

	return {
		debugPC = { bg = colors.deepRed },
		DapUIDecoration = { fg = colors.mainRed },
		DapUIFloatBorder = { fg = colors.mainRed },
		DapUIWatchesEmpty = { fg = colors.mainRed },
		DapUIWatchesError = { fg = colors.mainRed },
		DapUIStop = { fg = colors.mainRed },
		DapUIStopNC = { fg = colors.mainRed },
		DapUIModifiedValue = { fg = colors.mainYellow, bold = true },
		DapUIStoppedThread = { fg = colors.mainYellow },
		DapUIWatchesValue = { fg = colors.mainOrange },
		DapUIStepOver = { fg = colors.mainCyan },
		DapUIStepInto = { fg = colors.mainCyan },
		DapUIStepBack = { fg = colors.mainCyan },
		DapUIStepOut = { fg = colors.mainCyan },

		DapUIStepOverNC = { fg = colors.mainCyan },
		DapUIStepIntoNC = { fg = colors.mainCyan },
		DapUIStepBackNC = { fg = colors.mainCyan },
		DapUIStepOutNC = { fg = colors.mainCyan },
		DapUIBreakpointsPath = { fg = colors.mainCyan },
		DapUILineNumber = { fg = colors.mainCyan },
		DapUIScope = { fg = colors.mainCyan },
		DapUIWinSelect = { fg = colors.mainCyan, bold = true },
		DapUIType = { fg = colors.mainPurple },
		DapUISource = { fg = colors.mainPurple },
		DapUIBreakpointsInfo = { fg = colors.mainGreen },
		DapUIBreakpointsCurrentLine = { fg = colors.mainGreen, bold = true },
		DapUIThread = { fg = colors.mainGreen },

		DapUIPlayPause = { fg = colors.mainGreen },
		DapUIRestart = { fg = colors.mainGreen, bold = true },

		DapUIPlayPauseNC = { fg = colors.mainGreen },
		DapUIRestartNC = { fg = colors.mainGreen },
	}
end

return M
