local M = {}

---@param palette Palette
---@param config PosterpoleConfig
---@return table
function M.setup(palette, config)
  return {
    LspSignatureActiveParameter = { underline = true }
  }
end

return M
