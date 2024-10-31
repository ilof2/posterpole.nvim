local config = require("posterpole.config")

local M = {}

---@param user_opts? PosterpoleConfig
M.setup = function(user_opts)
	if user_opts then
		config.set(user_opts)
	end
end

M._colorscheme = function(variant)
	local posterpole = require("posterpole.highlighs")
	posterpole.clear_hl()

	vim.g.colors_name = variant

	posterpole.set_all(variant)
end

return M
