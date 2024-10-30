local M = {}

---@param palette Palette
---@param config PosterpoleConfig
---@return table
function M.setup(palette, config)
  local colors = palette.colors

  return {
    ["@variable"] = { fg = colors.mainWhite },
    ["@variable.member"] = { fg = colors.mainWhite },
    ["@function.call"] = { fg = colors.mainBlue, bold = true},
    ["@function"] = { fg = colors.mainBlue, bold = true},
    ["@property"] = { fg = colors.mainPurple },

    ["@attribute.builtin.python"] = { link = "Macro" },

    ["@function.macro.rust"] = { link = "Type" },
  }
end

return M
