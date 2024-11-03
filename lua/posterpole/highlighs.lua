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

M.set_all = function(variant)
	M.variant = variant
	M.set_termguicolors()

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
	local palette = require("posterpole.colors").setup(variant)
	local config = require("posterpole.config").current
	local set_hl = variant == "posterpole_term" and set_term_highlights or set_highlights

	set_hl(all_hl.basic_highlights.setup(palette, config))
	for _, highlighs in next, all_hl.plugins do
		set_hl(highlighs.setup(palette, config))
	end
end

return M
