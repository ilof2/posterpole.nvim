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
local function set_terminal_colors(palette)
  local colors = palette.colors
  vim.g.terminal_color_0 = colors.black.hex
  vim.g.terminal_color_1 = colors.keyword.hex
  vim.g.terminal_color_2 = colors.string.hex
  vim.g.terminal_color_3 = colors.constant.hex
  vim.g.terminal_color_4 = colors.func.hex
  vim.g.terminal_color_5 = colors.type.hex
  vim.g.terminal_color_6 = colors.directory.hex
  vim.g.terminal_color_7 = colors.fg.hex
  vim.g.terminal_color_8 = colors.brightTermBlack.hex
  vim.g.terminal_color_9 = colors.brightTermRed.hex
  vim.g.terminal_color_10 = colors.brightTermGreen.hex
  vim.g.terminal_color_11 = colors.brightTermYellow.hex
  vim.g.terminal_color_12 = colors.brightTermBlue.hex
  vim.g.terminal_color_13 = colors.brightTermMagenta.hex
  vim.g.terminal_color_14 = colors.brightTermCyan.hex
  vim.g.terminal_color_15 = colors.brightTermWhite.hex
  vim.g.terminal_color_background = palette.bgTransp.hex
  vim.g.terminal_color_foreground = colors.fg.hex
end

M.set_all = function(variant, config)
	M.variant = variant
  vim.background = "dark"
  local palette = require("posterpole.colors").setup(variant)
	local basic = require("posterpole.highlighs.basic")
  local hls = require("posterpole.highlighs.init")
  vim.g.palette = palette

  set_terminal_colors(palette)

	set_highlights(basic.setup(palette, config))
	for _, highlighs in next, hls.plugins do
		set_highlights(highlighs.setup(palette, config))
	end
  local custom_groups = config.custom_groups
  if custom_groups then
    set_highlights(config.custom_groups.posterpole)
  end
end

return M
