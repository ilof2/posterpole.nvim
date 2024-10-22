local config = require("posterpole.config")

local M = {}

---@param user_opts? PosterpoleConfig
M.setup = function(user_opts)
  if user_opts then config.set(user_opts) end
end

M._colorscheme = function ()

  local posterpole = require("posterpole.colors")
  posterpole.clear_hl()

  vim.g.colors_name = "posterpole"
  posterpole.set_all()

end

return M
