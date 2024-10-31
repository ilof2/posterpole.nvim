local M = {}

---@param palette Palette
---@param config PosterpoleConfig
---@return table
function M.setup(palette, config)
	local colors = palette.colors

	return {
		-- NeoTreeFileNameOpened
		-- NeoTreeRootName
		NeoTreeModified = { fg = colors.mainCyan },
		NeoTreeGitAdded = { fg = colors.deepRed },
		NeoTreeGitDeleted = { fg = colors.mainRed },
		NeoTreeGitModified = { fg = colors.mainYellow },
		NeoTreeGitConflict = { fg = colors.mainOrange },
		NeoTreeGitUntracked = { fg = colors.mainPurple },
	}
end

return M
