local M = {}

---@param palette Palette
---@param config PosterpoleConfig
---@return table
function M.setup(palette, config)
  local colors = palette.colors

  return {
    WhichKey = { bg = palette.bgDark},
    WhichKeyBorder = { link = "Delimiter" },
    WhichKeyDesc = { fg = colors.constant },
    WhichKeyGroup = { fg = colors.fg },
    WhichKeyIcon = { fg = colors.func },
    WhichKeyIconAzure = { fg = colors.diffAdded },
    WhichKeyIconBlue = { fg = colors.func },
    WhichKeyIconCyaa = { fg = colors.directory },
    WhichKeyIconGreen = { fg = colors.string },
    WhichKeyIconGrey = { fg = colors.comment },
    WhichKeyIconOrange = { fg = colors.constant },
    WhichKeyIconPurple = { fg = colors.type },
    WhichKeyIconRed = { fg = colors.keyword },
    WhichKeyIconYellow = { fg = colors.special },
    WhichKeyNormal = { bg = palette.bgDark },
    WhichKeySeparator	= { fg = colors.comment },
    WhichKeyTitle = { fg = colors.special },
    WhichKeyValue = { fg = colors.fg }
  }
end

return M
