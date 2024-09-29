local config = require("kanagawa-past.config")

local M = {}

M.setup = function(user_opts)
  if user_opts then config.set(user_opts) end
end

M._colorscheme = function ()
  require("kanagawa-past.colors").set_all()
end

return M
