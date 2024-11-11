local M = {}

M._colorscheme = function(variant)

  local palette = require("posterpole.colors").setup(variant)
  vim.g.palette = palette

	local posterpole = require("posterpole.highlighs")
  local config = require("posterpole.config")


	vim.g.colors_name = variant
	posterpole.clear_hl()
	posterpole.set_all(palette, variant, config)
end

M.setup = require("posterpole.config").setup

return M
