local M = {}

M.clear_hl = function()
	vim.cmd("hi clear")
	vim.cmd("syntax reset")
end

---@param highlights table <string, table>
local function set_highlights(highlights)
	for name, highlight in pairs(highlights) do
    local setting = {}
    if highlight.fg then
      setting.ctermfg = highlight.fg.cterm
      setting.fg = highlight.fg.hex
    end

    if highlight.bg then
      setting.ctermbg = highlight.bg.cterm
      setting.bg = highlight.bg.hex
    end
    -- if highlight.sp then
    --   setting.sp = highlight.sp.hex
    -- end
    setting.link = highlight.link
    setting.bold = highlight.bold
    setting.underline = highlight.underline
    setting.reverse = highlight.reverse
		vim.api.nvim_set_hl(0, name, setting)
	end
end

---@param palette Palette
local function set_terminal_colors(palette, variant)
  if (variant == "posterpole-term") then
    -- TODO: in the future need to translate xterm color code into the hex
    return
  end
  local colors = palette.colors

  vim.g.terminal_color_0 = colors.mainBlack.hex
  vim.g.terminal_color_1 = colors.mainRed.hex
  vim.g.terminal_color_2 = colors.mainGreen.hex
  vim.g.terminal_color_3 = colors.mainOrange.hex
  vim.g.terminal_color_4 = colors.mainBlue.hex
  vim.g.terminal_color_5 = colors.mainPurple.hex
  vim.g.terminal_color_6 = colors.mainCyan.hex
  vim.g.terminal_color_7 = colors.mainWhite.hex
  vim.g.terminal_color_8 = colors.brightTermBlack.hex
  vim.g.terminal_color_9 = colors.brightTermRed.hex
  vim.g.terminal_color_10 = colors.brightTermGreen.hex
  vim.g.terminal_color_11 = colors.brightTermYellow.hex
  vim.g.terminal_color_12 = colors.brightTermBlue.hex
  vim.g.terminal_color_13 = colors.brightTermMagenta.hex
  vim.g.terminal_color_14 = colors.brightTermCyan.hex
  vim.g.terminal_color_15 = colors.brightTermWhite.hex
  vim.g.terminal_color_background = palette.bgNoBG.hex
  vim.g.terminal_color_foreground = colors.mainWhite.hex
end

M.set_all = function(palette, variant, config)
	M.variant = variant
  vim.background = "dark"

	local basic = require("posterpole.highlighs.basic")
  local hls = require("posterpole.highlighs.init")

  set_terminal_colors(palette, variant)
	-- local set_hl = variant == "posterpole_term" and set_term_highlights or set_highlights
  local set_hl = set_highlights

	set_hl(basic.setup(palette, config))
	for _, highlighs in next, hls.plugins do
		set_hl(highlighs.setup(palette, config))
	end
end

return M
