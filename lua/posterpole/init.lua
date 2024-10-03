local config = require("posterpole.config")

local M = {}

M.setup = function(user_opts)
  if user_opts then config.set(user_opts) end
end

M._colorscheme = function ()

  local kanagawa_past = require("posterpole.colors")
  kanagawa_past.clear_hl()

  vim.g.colors_name = "posterpole"
  kanagawa_past.set_all()

end

return M
