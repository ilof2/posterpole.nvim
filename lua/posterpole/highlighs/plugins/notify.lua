local M = {}

---@param palette Palette
---@param config PosterpoleConfig
---@return table
function M.setup(palette, config)
	local colors = palette.colors
	return {
		NotifyERRORBorder = { bg = palette.bgDark },
		NotifyWARNBorder = { bg = palette.bgDark },
		NotifyINFOBorder = { bg = palette.bgDark },
		NotifyDEBUGBorder = { bg = palette.bgDark },
		NotifyTRACEBorder = { bg = palette.bgDark },

		NotifyERRORIcon = { link = "DiagnosticError" },
		NotifyWARNIcon = { link = "DiagnosticWarn" },
		NotifyINFOIcon = { link = "DiagnosticOk" },
		NotifyDEBUGIcon = { link = "DiagnosticInfo" },
		NotifyTRACEIcon = { link = "MoreMsg" },

		NotifyERRORTitle = { link = "DiagnosticError" },
		NotifyWARNTitle = { link = "DiagnosticWarn" },
		NotifyINFOTitle = { link = "DiagnosticOk" },
		NotifyDEBUGTitle = { link = "DiagnosticInfo" },
		NotifyTRACETitle = { link = "MoreMsg" },

		NotifyERRORBody = { bg = palette.bgDark },
		NotifyWARNBody = { bg = palette.bgDark },
		NotifyINFOBody = { bg = palette.bgDark },
		NotifyDEBUGBody = { bg = palette.bgDark },
		NotifyTRACEBody = { bg = palette.bgDark },
		NotifyBackground = { bg = palette.bgDark },
	}
end

return M
