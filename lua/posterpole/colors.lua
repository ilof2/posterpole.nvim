local config = require("posterpole.config").current
local hsl = require("posterpole.hsl")

local M = {}

---@param variant string
---@return Palette
function M.setup(variant)
	---@class PaletteColors
	local variants = {
		posterpole_term = {
			mainGray = 240,
			mainBlack = 233,
			mainYellow = 144,
			mainOrange = 137,
			mainWhite = 145,
			mainGreen = 101,
			mainCyan = 65,
			mainBlue = 103,
			mainPurple = 60,
			mainPink = 139,
			mainRed = 95,

			-- scales
			deepRed = 95,
			deepGreen = 237,
			brightGreen = 236,
			brightGray = 244,

			-- main bg colors
			bgColor = 234,
			bgColorNC = 236,
			bgDarkColor = 234,
			bgDarkColorless = 234,
			bgColorlessColor = 234,
			bgColorlessNC = 239,
		},
		posterpole = {
			-- main colors
			mainGray = hsl.hslToHex(0, 0, 30 + config.brightness + config.fg_saturation),
			mainBlack = hsl.hslToHex(0, 5 + config.fg_saturation, 18 + config.brightness),
			mainYellow = hsl.hslToHex(25, 15 + config.fg_saturation, 60 + config.brightness),
			mainOrange = hsl.hslToHex(25, 45 + config.fg_saturation, 60 + config.brightness),
			mainWhite = hsl.hslToHex(35, 10 + config.fg_saturation, 65 + config.brightness),
			mainGreen = hsl.hslToHex(140, 10 + config.fg_saturation, 50 + config.brightness),
			mainCyan = hsl.hslToHex(174, 10 + config.fg_saturation, 60 + config.brightness),
			mainBlue = hsl.hslToHex(210, 15 + config.fg_saturation, 50 + config.brightness),
			mainPurple = hsl.hslToHex(284, 15 + config.fg_saturation, 45 + config.brightness),
			mainPink = hsl.hslToHex(314, 20 + config.fg_saturation, 65 + config.brightness),
			mainRed = hsl.hslToHex(360, 25 + config.fg_saturation, 55 + config.brightness),

			-- scales
			deepRed = hsl.hslToHex(0, 30 + config.fg_saturation, 30 + config.brightness),
			deepGreen = hsl.hslToHex(150, 10 + config.fg_saturation, 20 + config.brightness),
			brightGreen = hsl.hslToHex(160, 30 + config.fg_saturation, 20 + config.brightness),
			brightGray = hsl.hslToHex(210, 0, 50 + config.brightness + config.fg_saturation),

			-- main bg colors
			bgColor = hsl.hslToHex(260, 10 + config.bg_saturation, 15 + config.brightness),
			bgColorNC = hsl.hslToHex(260, 10 + config.bg_saturation, 18 + config.brightness),
			bgDarkColor = hsl.hslToHex(260, 10 + config.bg_saturation, 14 + config.brightness),
			bgDarkColorless = hsl.hslToHex(260, 0, 12 + config.brightness),
			bgColorlessColor = hsl.hslToHex(260, 0, 12 + config.brightness),
			bgColorlessNC = hsl.hslToHex(260, 0, 16 + config.brightness),
		},
	}

	local colors = variants[variant]
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
	return palette
end

return M
