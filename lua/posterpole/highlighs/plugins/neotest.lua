local M = {}


---@param palette Palette
---@param config PosterpoleConfig
---@return table
function M.setup(palette, config)
  local colors = palette.colors

  return {
    NeotestPassed = { fg = colors.mainGreen },
    NeotestFailed = { fg = colors.mainRed },
    NeotestRunning = { fg = colors.mainOrange, bold = true },
    NeotestSkipped = { fg = colors.gray2 },
    -- NeotestNamespace
    NeotestFocused = { fg = colors.mainYellow, underline = true },
    NeotestFile = { fg = colors.mainWhite },
    NeotestDir = { fg = colors.mainCyan },
    -- NeotestIndent
    -- NeotestExpandMarker
    NeotestAdapterName = { fg = colors.mainRed },
    -- NeotestWinSelect
    -- NeotestMarked
    -- NeotestTarget
    NeotestWatching = { fg = colors.mainPurple },
  }
end

return M
