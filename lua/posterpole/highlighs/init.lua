local plugins = require("posterpole.highlighs.plugins.init")
local basic = require("posterpole.highlighs.basic")

local M = {}

M.plugins = {
  plugins.dap_ui,
  plugins.neotest,
  plugins.treesitter,
  plugins.render_md,
  plugins.neotree,
  plugins.trouble,
  plugins.mini_status,
  plugins.fzf,
  plugins.lsp,
}

M.basic_highlights = basic

return M
