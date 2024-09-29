local config = require("kanagawa-past.config")

local M = {}

M.setup = function(user_opts)
  if user_opts then config.set(user_opts) end
end

M._colorscheme = function ()

  local kanagawa_past = require("kanagawa-past.colors")
  kanagawa_past.clear_hl()

  vim.g.colors_name = "kanagawa-past"
  kanagawa_past.set_all()

end

return M
