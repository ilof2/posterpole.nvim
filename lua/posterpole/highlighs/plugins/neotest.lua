local M = {}

---@param palette Palette
---@param config PosterpoleConfig
---@return table
function M.setup(palette, config)
  local colors = palette.colors

  return {
    NeotestPassed = { fg = colors.string },
    NeotestFailed = { fg = colors.keyword },
    NeotestRunning = { fg = colors.constant, bold = true },
    NeotestSkipped = { fg = colors.comment },
    NeotestFocused = { fg = colors.special, underline = true },
    NeotestFile = { fg = colors.fg },
    NeotestDir = { link = "Directory" },
    -- NeotestIndent
    -- NeotestExpandMarker
    NeotestAdapterName = { fg = colors.keyword },
    -- NeotestMarked
    -- NeotestTarget
    NeotestWatching = { link = "Type" },
    NeotestNamespace = { link = "Type" },
    NeotestWinSelect = { link = "Directory" },
    NeotestMarked = { link = "QuickFixLine" },
    NeotestTarget = { link = "Keyword" },
  }
end

return M
