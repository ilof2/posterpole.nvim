local M = {}

---@param palette Palette
---@param config PosterpoleConfig
---@return table
function M.setup(palette, config)
  local colors = palette.colors

  return {
    MiniStatuslineModeVisual = { fg = colors.black, bg=colors.constant },
    MiniStatuslineModeInsert = { fg = colors.black, bg=colors.string },
    MiniStatuslineModeCommand = { fg = colors.black, bg=colors.directory },
    MiniStatuslineModeNormal = { fg = colors.black, bg=colors.special },
    MiniStatuslineFileinfo = { fg = colors.string, bg=colors.bgDarkColor },
    MiniStatuslineDevinfo = { fg = colors.string, bg=colors.bgDarkColor },
    MiniStatuslineFilename = { fg = colors.string, bg=palette.bgTransp},
    MiniStatuslineInactive = { fg = colors.string, bg=palette.bgTransp},
  }
end

return M
