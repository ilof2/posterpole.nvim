M = {}

---@type PosterpoleConfig
local default = {
  transparent = false,
  colorless_bg = false,
  dim_inactive = false,
  brightness = 0,
  selected_tab_highlight = true,
  fg_saturation = 0,
  bg_saturation = 0,
  lualine = {
    transparent = true
  },
  colors = {},
}

M.current = default

M.set = function(user_opts) M.current = vim.tbl_deep_extend("force", vim.deepcopy(M.current), user_opts) end

M.setup = function (user_opts)
	if user_opts then
		 M.set(user_opts)
	end
end

return M
