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
    NeotestSkipped = { fg = colors.mainGray },
    NeotestFocused = { fg = colors.mainYellow, underline = true },
    NeotestFile = { fg = colors.mainWhite },
    NeotestDir = { fg = colors.mainCyan },
    -- NeotestIndent
    -- NeotestExpandMarker
    NeotestAdapterName = { fg = colors.mainRed },
    -- NeotestMarked
    -- NeotestTarget
    NeotestWatching = { fg = colors.mainPurple },
    NeotestNamespace = { link = "Type" },
    NeotestWinSelect = { fg = colors.mainCyan },
    NeotestMarked = { link = "QuickFixLine" },
    NeotestTarget = { link = "Keyword" },
  }
end

return M
