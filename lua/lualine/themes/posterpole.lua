local palette = vim.g.palette
local config = require("posterpole.config").current
local colors = palette.colors

local bg = config.colorless_bg and palette.bgColorless or palette.bgDarkColor
local posterpole = {
  normal = {
    a = { fg = colors.mainBlack, bg = colors.brightGray },
    b = { fg = colors.mainGreen, bg = bg },
    c = { fg = colors.mainGreen, bg = bg },
  },
  insert = {
    a = { fg = colors.mainBlack, bg = colors.mainGreen },
  },
  command = {
    a = { fg = colors.mainBlack, bg = colors.mainYellow },
  },
  visual = {
    a = { fg = colors.mainBlack, bg = colors.mainOrange },
  },
  replace = {
    a = { fg = colors.mainBlack, bg = colors.mainRed },
  },
  terminal = {
    a = { fg = colors.mainBlack, bg = colors.mainBlue },
  },
  inactive = {
    a = { fg = colors.mainGray, bg = bg },
    b = { fg = colors.mainGray, bg = bg },
    c = { fg = colors.mainGray, bg = bg },
  },
}

return posterpole
