local palette = vim.g.palette
local config = require("posterpole.config").current
local colors = palette.colors

local bg = config.lualine.transparent and palette.bgNoBG.hex or palette.bgDark.hex

local posterpole = {
  normal = {
    a = { fg = colors.mainBlack.hex, bg = colors.brightGray.hex },
    b = { fg = colors.mainGreen.hex, bg = bg },
    c = { fg = colors.mainGreen.hex, bg = bg },
  },
  insert = {
    a = { fg = colors.mainBlack.hex, bg = colors.mainGreen.hex },
  },
  command = {
    a = { fg = colors.mainBlack.hex, bg = colors.mainYellow.hex },
  },
  visual = {
    a = { fg = colors.mainBlack.hex, bg = colors.mainOrange.hex },
  },
  replace = {
    a = { fg = colors.mainBlack.hex, bg = colors.mainRed.hex },
  },
  terminal = {
    a = { fg = colors.mainBlack.hex, bg = colors.mainBlue.hex },
  },
  inactive = {
    a = { fg = colors.mainGray.hex, bg = bg },
    b = { fg = colors.mainGray.hex, bg = bg },
    c = { fg = colors.mainGray.hex, bg = bg },
  },
}

return posterpole
