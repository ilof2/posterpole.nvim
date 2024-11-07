local M = {}

---@param palette Palette
---@param config PosterpoleConfig
---@return table
function M.setup(palette, config)
  local colors = palette.colors

  return {
    ["@punctuation.bracket"] = { fg = colors.brightGray },
    ["@variable"] = { fg = colors.mainWhite },
    ["@variable.member"] = { fg = colors.mainWhite },
    ["@function.call"] = { fg = colors.mainBlue, bold = true},
    ["@function"] = { fg = colors.mainBlue, bold = true},
    ["@property"] = { fg = colors.mainYellow },

    ["@attribute.builtin.python"] = { link = "Macro" },

    ["@function.macro.rust"] = { link = "Type" },

    ["@tag.attribute.html"] = { link = "Special" },
    ["@character.special.html"] = { fg = colors.mainCyan },
    ["@tag.attribute.xml"] = { link = "Special" },

  }
end

return M
