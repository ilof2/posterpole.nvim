local M = {}

local all_hl = require("posterpole.highlighs.init")

M.clear_hl = function()
  vim.cmd("hi clear")
  vim.cmd("syntax reset")
end

---@param highlights table <string, table>
local function set_highlights(highlights)
  for name, setting in pairs(highlights) do
    vim.api.nvim_set_hl(0, name, setting)
  end
end

M.set_all = function()

  local palette = require("posterpole.colors").setup()
  local config  = require("posterpole.config").current

  set_highlights(all_hl.basic_highlights.setup(palette, config))
  for _, highlighs in next, all_hl.plugins do
    set_highlights(highlighs.setup(palette, config))
  end

end

return M
