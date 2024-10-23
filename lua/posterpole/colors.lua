local config = require("posterpole.config").current
local hsl = require("posterpole.hsl")

local M = {}

---@class PaletteColors
local colors = {
  -- main colors
  mainGray = hsl.hslToHex(0, 0, 30 + config.brightness + config.fg_saturation),
  mainBlack = hsl.hslToHex(0, 5 + config.fg_saturation, 18 + config.brightness),
  mainYellow = hsl.hslToHex(25, 20 + config.fg_saturation, 60 + config.brightness),
  mainOrange = hsl.hslToHex(25, 45 + config.fg_saturation, 60 + config.brightness),
  mainWhite = hsl.hslToHex(35, 10 + config.fg_saturation, 65 + config.brightness),
  mainGreen = hsl.hslToHex(140, 10 + config.fg_saturation, 50 + config.brightness),
  mainCyan = hsl.hslToHex(174, 10 + config.fg_saturation, 60 + config.brightness),
  mainBlue = hsl.hslToHex(210, 15 + config.fg_saturation, 50 + config.brightness),
  mainPurple = hsl.hslToHex(284, 15 + config.fg_saturation, 50 + config.brightness),
  mainPink = hsl.hslToHex(314, 20 + config.fg_saturation, 65 + config.brightness),
  mainRed = hsl.hslToHex(360, 25 + config.fg_saturation, 55 + config.brightness),

  -- scales
  deepRed1 = hsl.hslToHex(0, 30 + config.fg_saturation, 30 + config.brightness),
  deepRed2 = hsl.hslToHex(0, 30 + config.fg_saturation, 40 + config.brightness),
  deepGreen1 = hsl.hslToHex(150, 10 + config.fg_saturation, 20 + config.brightness),
  deepGreen2 = hsl.hslToHex(150, 15 + config.fg_saturation, 20 + config.brightness),
  brightGreen1 = hsl.hslToHex(160, 30 + config.fg_saturation, 20 + config.brightness),
  brightGreen2 = hsl.hslToHex(160, 30 + config.fg_saturation, 25 + config.brightness),
  blue2 = hsl.hslToHex(210, 25 + config.fg_saturation, 50 + config.brightness),
  gray2 = hsl.hslToHex(210, 0, 40 + config.brightness + config.fg_saturation),
  gray3 = hsl.hslToHex(210, 0, 50 + config.brightness + config.fg_saturation),

  -- main bg colors
  bgColor = hsl.hslToHex(260, 10 + config.bg_saturation, 15 + config.brightness),
  bgColorNC = hsl.hslToHex(260, 10 + config.bg_saturation, 18 + config.brightness),
  bgDarkColor = hsl.hslToHex(260, 10 + config.bg_saturation, 14 + config.brightness),
  bgDarkColorless = hsl.hslToHex(260, 0, 12 + config.brightness),
  bgColorlessColor = hsl.hslToHex(260, 0, 12 + config.brightness),
  bgColorlessNC = hsl.hslToHex(260, 0, 16 + config.brightness),
}

-- transparent
local bg = config.transparent and "" or colors.bgColor
local bgColorless = config.transparent and "" or colors.bgColorlessColor
local bgDarkColorless = config.transparent and "" or colors.bgDarkColorless
local bgDarkColor = config.transparent and "" or colors.bgDarkColor

-- inactive
local bgInactiveColor = config.dim_inactive and colors.bgColorNC or bg
local bgInactiveColorless = config.dim_inactive and colors.bgColorlessNC or bgColorless
local bgInactive = config.colorless_bg and bgInactiveColorless or bgInactiveColor

---@class Palette
local palette = {
  colors = colors,
  bg = bg,
  fg = colors.mainRed,
  bgColorless = bgColorless,
  bgDarkColorless = bgDarkColorless,
  bgDarkColor = bgDarkColor,
  bgInactiveColor = bgInactiveColor,
  bgInactiveColorless = bgInactiveColorless,
  bgInactive = bgInactive,
}


---@return Palette
function M.setup()
  return palette
end

return M
