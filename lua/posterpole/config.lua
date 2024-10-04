M = {}

local default = {
  transparent = false,
  colorless_bg = false,
  dim_inactive = false,
  brightness = 0,
  selected_tab_highlight = true,
}

M.current = default

M.set = function(user_opts) M.current = vim.tbl_deep_extend("force", vim.deepcopy(M.current), user_opts) end

return M
