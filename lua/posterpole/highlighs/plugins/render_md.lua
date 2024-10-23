local M = {}

---@param palette Palette
---@param config PosterpoleConfig
---@return table
function M.setup(palette, config)
  local colors = palette.colors
  return {
    RenderMarkdownH1Bg = { bg = colors.deepGreen2, bold = true },
    RenderMarkdownH2Bg = { bg = colors.deepRed1, bold = true },
    RenderMarkdownH3Bg = { bg = colors.deepGreen1, bold = true },
    RenderMarkdownH4Bg = { bg = colors.mainGray, bold = true },
    RenderMarkdownH5Bg = { bg = colors.mainGray, bold = true },
    RenderMarkdownH6Bg = { bg = colors.mainGray, bold = true },
    RenderMarkdownCode = { bg = config.colorless_bg and colors.bgDarkColorless or colors.bgDarkColor },
  }
end

return M
