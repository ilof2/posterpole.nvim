local M = {}

M.clear_hl = function()
	vim.cmd("hi clear")
	vim.cmd("syntax reset")
end

M.set_termguicolors = function()
	if M.variant == "posterpole_term" then
		vim.o.termguicolors = false
	else
		vim.o.termguicolors = true
	end
end

---@param highlights table <string, table>
local function set_term_highlights(highlights)
	for name, setting in pairs(highlights) do
		setting.ctermfg = setting.fg
		setting.ctermbg = setting.bg
		setting.fg = ""
		setting.bg = ""
		vim.api.nvim_set_hl(0, name, setting)
	end
end

---@param highlights table <string, table>
local function set_highlights(highlights)
	for name, setting in pairs(highlights) do
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

  vim.g.terminal_color_0 = colors.mainBlack
  vim.g.terminal_color_1 = colors.mainRed
  vim.g.terminal_color_2 = colors.mainGreen
  vim.g.terminal_color_3 = colors.mainOrange
  vim.g.terminal_color_4 = colors.mainBlue
  vim.g.terminal_color_5 = colors.mainPurple
  vim.g.terminal_color_6 = colors.mainCyan
  vim.g.terminal_color_7 = colors.mainWhite
  vim.g.terminal_color_8 = colors.brightTermBlack
  vim.g.terminal_color_9 = colors.brightTermRed
  vim.g.terminal_color_10 = colors.brightTermGreen
  vim.g.terminal_color_11 = colors.brightTermYellow
  vim.g.terminal_color_12 = colors.brightTermBlue
  vim.g.terminal_color_13 = colors.brightTermMagenta
  vim.g.terminal_color_14 = colors.brightTermCyan
  vim.g.terminal_color_15 = colors.brightTermWhite
  vim.g.terminal_color_background = palette.bg
  vim.g.terminal_color_foreground = colors.mainWhite
end

M.set_all = function(palette, variant, config)
	M.variant = variant
	M.set_termguicolors()
  vim.background = "dark"

	local plugins = require("posterpole.highlighs.plugins.init")
	local basic = require("posterpole.highlighs.basic")

	local all_hl = {}

	all_hl.plugins = {
		plugins.dap_ui,
		plugins.neotest,
		plugins.treesitter,
		plugins.render_md,
		plugins.neotree,
		plugins.trouble,
		plugins.mini_status,
		plugins.aerial,
		plugins.fzf,
		plugins.lsp,
		plugins.cmp,
	}

	all_hl.basic_highlights = basic
  set_terminal_colors(palette, variant)
	local set_hl = variant == "posterpole_term" and set_term_highlights or set_highlights

	set_hl(all_hl.basic_highlights.setup(palette, config))
	for _, highlighs in next, all_hl.plugins do
		set_hl(highlighs.setup(palette, config))
	end
end

return M
