local M = {}

---@param palette Palette
---@param config PosterpoleConfig
---@return table
function M.setup(palette, config)
	local colors = palette.colors
	return {
		RenderMarkdownH1Bg = { bg = colors.diffAdded, bold = true },
		RenderMarkdownH2Bg = { bg = colors.diffDel, bold = true },
		RenderMarkdownH3Bg = { bg = colors.diffChanged, bold = true },
		RenderMarkdownH4Bg = { bg = colors.comment, bold = true },
		RenderMarkdownH5Bg = { bg = colors.comment, bold = true },
		RenderMarkdownH6Bg = { bg = colors.comment, bold = true },
		RenderMarkdownCode = { bg = colors.bgSurface},
	}
end

return M
