local M = {}

---@param palette Palette
---@param config PosterpoleConfig
---@return table
function M.setup(palette, config)
  local colors = palette.colors

  return {
    MiniStatuslineModeVisual = { fg = colors.mainBlack, bg=colors.mainOrange },
    MiniStatuslineModeInsert = { fg = colors.mainBlack, bg=colors.mainGreen },
    MiniStatuslineModeCommand = { fg = colors.mainBlack, bg=colors.mainCyan },
    MiniStatuslineModeNormal = { fg = colors.mainBlack, bg=colors.mainYellow },
    MiniStatuslineFileinfo = { fg = colors.mainGreen, bg=colors.bgDarkColor },
    MiniStatuslineDevinfo = { fg = colors.mainGreen, bg=colors.bgDarkColor },
    MiniStatuslineFilename = { fg = colors.mainGreen, bg=palette.bgNoBG},
    MiniStatuslineInactive = { fg = colors.mainGreen, bg=palette.bgNoBG},
  }
end

return M
