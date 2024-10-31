local M = {}


---@param palette Palette
---@param config PosterpoleConfig
---@return table
function M.setup(palette, config)

  local colors = palette.colors

  return {
    FzfLuaHeaderText = { link = "Label" },
    FzfLuaLiveSym = { link = "Label" },
    FzfLuaHeaderBind = { link = "Normal" },
    FzfLuaBufName = { link = "Macro" },
    FzfLuaBackdrop = { link = "Normal" },
    FzfLuaPathLineNr = { link = "LineNr" },
    FzfLuaBufNr = { link = "LineNr" },
    FzfLuaBufFlagCur = { fg = colors.mainRed },
    FzfLuaBufFlagAlt = { link = "Directory" },
    FzfLuaPathColNr = { link = "Directory" },
    FzfLuaTabTitle = { link = "Directory" },
    FzfLuaTabMarker = { fg = colors.mainWhite },
    FzfLuaScrollFloatEmpty = { link = "Normal" },
    FzfLuaDirPart = { link = "String" },
    FzfLuaFzfMatch = { link = "CurSearch"},
    FzfLuaSearch = { link = "CurSearch" }
  }
end

return M
