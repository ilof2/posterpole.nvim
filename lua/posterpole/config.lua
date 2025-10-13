M = {}

---@type PosterpoleConfig
local default = {
  transparent = false,
  dim_inactive = false,
  lualine = {
    transparent = true
  },
  colors = {},
  groups = {
    posterpole = {}
  },
}

M.current = default

M.set = function(user_opts) M.current = vim.tbl_deep_extend("force", vim.deepcopy(M.current), user_opts) end

---@param user_opts PosterpoleConfig
M.setup = function (user_opts)
	if user_opts then
		 M.set(user_opts)
	end
end

return M
