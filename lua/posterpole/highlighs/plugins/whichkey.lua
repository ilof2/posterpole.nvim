local M = {}

---@param palette Palette
---@param config PosterpoleConfig
---@return table
function M.setup(palette, config)
  local colors = palette.colors

  return {
    WhichKey = { bg = palette.bgDark},
    WhichKeyBorder = { fg = colors.mainWhite },
    WhichKeyDesc = { fg = colors.mainOrange },
    WhichKeyGroup = { fg = colors.mainWhite },
    WhichKeyIcon = { fg = colors.mainBlue },
    WhichKeyIconAzure = { fg = colors.deepGreen },
    WhichKeyIconBlue = { fg = colors.mainBlue },
    WhichKeyIconCyaa = { fg = colors.mainCyan },
    WhichKeyIconGreen = { fg = colors.mainGreen },
    WhichKeyIconGrey = { fg = colors.mainGray },
    WhichKeyIconOrange = { fg = colors.mainOrange },
    WhichKeyIconPurple = { fg = colors.mainPurple },
    WhichKeyIconRed = { fg = colors.mainRed },
    WhichKeyIconYellow = { fg = colors.mainYellow },
    WhichKeyNormal = { bg = palette.bgDark },
    WhichKeySeparator	= { fg = colors.mainGray },
    WhichKeyTitle = { fg = colors.mainYellow },
    WhichKeyValue = { fg = colors.mainWhite }
  }
end

return M
