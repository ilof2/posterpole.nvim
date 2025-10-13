local M = {}

---@param palette Palette
---@param config PosterpoleConfig
---@return table
function M.setup(palette, config)
  local colors = palette.colors

  return {
    ["@punctuation.bracket"] = { fg = colors.operator },
    ["@variable"] = { fg = colors.variable },
    ["@variable.member"] = { fg = colors.special },
    ["@function.call"] = { fg = colors.func, bold = true},
    ["@function"] = { fg = colors.func, bold = true},
    ["@property"] = { fg = colors.special },

    ["@type.python"] = { fg  = colors.type, bold=true },
    ["@attribute.builtin.python"] = { fg = colors.type, bold=true },
    ["@module"] = { fg = colors.special},

    ["@function.macro.rust"] = { link = "Type" },

    ["@tag.attribute.html"] = { link = "Special" },
    ["@character.special.html"] = { fg = colors.directory},
    ["@tag.attribute.xml"] = { link = "Special" },
  }
end

return M
