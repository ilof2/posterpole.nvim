M = {}


---@class PosterpoleConfig
---@field transparent? boolean
---@field colorless_bg? boolean
---@field dim_inactive? boolean
---@field brightness? integer
---@field selected_tab_highlight? boolean
---@field fg_saturation? integer
---@field bg_saturation? integer

---@type PosterpoleConfig
local default = {
  transparent = false,
  colorless_bg = false,
  dim_inactive = false,
  brightness = 0,
  selected_tab_highlight = true,
  fg_saturation = 0,
  bg_saturation = 0
}

M.current = default

M.set = function(user_opts) M.current = vim.tbl_deep_extend("force", vim.deepcopy(M.current), user_opts) end

return M
