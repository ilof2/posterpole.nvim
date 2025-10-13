local palette = vim.g.palette
local config = require("posterpole.config").current
local colors = palette.colors

local bg = config.lualine.transparent and palette.bgTransp.hex or palette.bgDark.hex

local posterpole = {
  normal = {
    a = { fg = colors.black.hex, bg = colors.comment.hex },
    b = { fg = colors.black.hex, bg = bg },
    c = { fg = colors.black.hex, bg = bg },
  },
  insert = {
    a = { fg = colors.black.hex, bg = colors.string.hex },
  },
  command = {
    a = { fg = colors.black.hex, bg = colors.special.hex },
  },
  visual = {
    a = { fg = colors.black.hex, bg = colors.comment.hex },
  },
  replace = {
    a = { fg = colors.black.hex, bg = colors.keyword.hex },
  },
  terminal = {
    a = { fg = colors.black.hex, bg = colors.keyword.hex },
  },
  inactive = {
    a = { fg = colors.comment.hex, bg = bg },
    b = { fg = colors.comment.hex, bg = bg },
    c = { fg = colors.comment.hex, bg = bg },
  },
}

return posterpole
