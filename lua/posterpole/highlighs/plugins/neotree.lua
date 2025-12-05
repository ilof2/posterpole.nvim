local M = {}

---@param palette Palette
---@param config PosterpoleConfig
---@return table
function M.setup(palette, config)
	local colors = palette.colors

	return {
		-- NeoTreeFileNameOpened
		-- NeoTreeRootName
		NeoTreeModified = { fg = colors.directory },
		NeoTreeGitAdded = { fg = colors.deepRed },
		NeoTreeGitDeleted = { fg = colors.keyword },
		NeoTreeGitModified = { fg = colors.special },
		NeoTreeGitConflict = { fg = colors.constant },
		NeoTreeGitUntracked = { fg = colors.type },
	}
end

return M
