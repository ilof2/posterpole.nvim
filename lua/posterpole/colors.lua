local config = require("posterpole.config").current
local hsl = require("posterpole.hsl")

local M = {}

---@param variant string
---@return Palette
function M.setup(variant)
	---@class PaletteColors
	---@field posterpole Colors
	local variants = {
		posterpole = {
			-- main colors
			mainGray = {
				cterm = 240,
				hex = hsl.hslToHex(0, 0, 30 + config.brightness + config.fg_saturation),
			},
			mainBlack = {
				cterm = 233,
				hex = hsl.hslToHex(0, 5 + config.fg_saturation, 18 + config.brightness),
			},
			mainYellow = {
				cterm = 144,
				hex = hsl.hslToHex(25, 15 + config.fg_saturation, 60 + config.brightness),
			},
			mainOrange = {
				cterm = 137,
				hex = hsl.hslToHex(25, 45 + config.fg_saturation, 60 + config.brightness),
			},
			mainWhite = {
				cterm = 145,
				hex = hsl.hslToHex(35, 10 + config.fg_saturation, 65 + config.brightness),
			},
			mainGreen = {
				cterm = 101,
				hex = hsl.hslToHex(140, 10 + config.fg_saturation, 50 + config.brightness),
			},
			mainCyan = { cterm = 65, hex = hsl.hslToHex(174, 10 + config.fg_saturation, 60 + config.brightness) },
			mainBlue = { cterm = 103, hex = hsl.hslToHex(210, 15 + config.fg_saturation, 50 + config.brightness) },
			mainPurple = { cterm = 60, hex = hsl.hslToHex(284, 15 + config.fg_saturation, 45 + config.brightness) },
			mainPink = { cterm = 139, hex = hsl.hslToHex(314, 20 + config.fg_saturation, 65 + config.brightness) },
			mainRed = { cterm = 95, hex = hsl.hslToHex(360, 25 + config.fg_saturation, 55 + config.brightness) },

			-- scales
			deepRed = { cterm = 95, hex = hsl.hslToHex(0, 30 + config.fg_saturation, 30 + config.brightness) },
			deepGreen = { cterm = 237, hex = hsl.hslToHex(150, 10 + config.fg_saturation, 20 + config.brightness) },
			brightGreen = { cterm = 236, hex = hsl.hslToHex(160, 30 + config.fg_saturation, 20 + config.brightness) },
			brightGray = { cterm = 244, hex = hsl.hslToHex(210, 0, 50 + config.brightness + config.fg_saturation) },

			-- main bg colors
			bgColor = { cterm = 234, hex = hsl.hslToHex(260, 10 + config.bg_saturation, 15 + config.brightness) },
			bgColorNC = { cterm = 236, hex = hsl.hslToHex(260, 10 + config.bg_saturation, 18 + config.brightness) },
			bgDarkColor = { cterm = 233, hex = hsl.hslToHex(260, 10 + config.bg_saturation, 14 + config.brightness) },
			bgDarkColorless = { cterm = 233, hex = hsl.hslToHex(260, 0, 12 + config.brightness) },
			bgColorlessColor = { cterm = 234, hex = hsl.hslToHex(260, 0, 14 + config.brightness) },
			bgColorlessNC = { cterm = 239, hex = hsl.hslToHex(260, 0, 16 + config.brightness) },

			--builtin term bright colors
			brightTermBlack = { cterm = 241, hex = hsl.hslToHex(0, 5 + config.fg_saturation, 28 + config.brightness) },
			brightTermBlue = { cterm = 110, hex = hsl.hslToHex(210, 15 + config.fg_saturation, 60 + config.brightness) },
			brightTermCyan = { cterm = 73, hex = hsl.hslToHex(174, 10 + config.fg_saturation, 60 + config.brightness) },
			brightTermGreen = { cterm = 108, hex = hsl.hslToHex(140, 10 + config.fg_saturation, 60 + config.brightness) },
			brightTermMagenta = {
				cterm = 104,
				hex = hsl.hslToHex(284, 15 + config.fg_saturation, 55 + config.brightness),
			},
			brightTermRed = { cterm = 167, hex = hsl.hslToHex(360, 25 + config.fg_saturation, 65 + config.brightness) },
			brightTermWhite = { cterm = 253, hex = hsl.hslToHex(35, 10 + config.fg_saturation, 75 + config.brightness) },
			brightTermYellow = { cterm = 186, hex = hsl.hslToHex(25, 45 + config.fg_saturation, 70 + config.brightness) },
		},
	}

	variants = vim.tbl_deep_extend("force", vim.deepcopy(variants), config.colors)
	local colors = variants.posterpole

	-- transparent
	local bgColor = colors.bgColor
	local bgColorless = colors.bgColorlessColor
	local bg = config.colorless_bg and bgColorless or bgColor
	local bgNoBG = config.transparent and {hex="", cterm=""} or bg

	-- dark
	local bgDarkColorless = colors.bgDarkColorless
	local bgDarkColor = colors.bgDarkColor
	local bgDark = config.colorless_bg and bgDarkColorless or bgDarkColor
	local bgDarkNoBG = config.transparent and {hex="", cterm=""} or bgDark

	-- inactive
	local bgInactiveColor = config.dim_inactive and colors.bgColorNC or bgNoBG
	local bgInactiveColorless = config.dim_inactive and colors.bgColorlessNC or bgNoBG
	local bgInactive = config.colorless_bg and bgInactiveColorless or bgInactiveColor

	---@class Palette
	local palette = {
		colors = colors,
		bgColor = bgColor,
    bg = bg,
    bgNoBG = bgNoBG,
		fg = colors.mainRed,
		bgColorless = bgColorless,
		bgDarkColorless = bgDarkColorless,
		bgDarkColor = bgDarkColor,
    bgDark = bgDark,
    bgDarkNoBG = bgDarkNoBG,
		bgInactiveColor = bgInactiveColor,
		bgInactiveColorless = bgInactiveColorless,
		bgInactive = bgInactive,
	}
	return palette
end

return M
