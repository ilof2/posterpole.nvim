local M = {}

local setup_theme = function(config)
  local variant = vim.g.colors_name

  local posterpole = require("posterpole.highlighs")
  posterpole.clear_hl()
  posterpole.set_all(variant, config)

  -- :g.colors_name resets on clear_hl
  vim.g.colors_name = variant
end

vim.api.nvim_create_user_command("PosterpoleToggleBG", function()
  local config = require("posterpole.config").current
  config.transparent = not config.transparent
  setup_theme(config)
end, {})

M._colorscheme = function()
  local config = require("posterpole.config").current
  setup_theme(config)
end

M.setup = require("posterpole.config").setup

return M
