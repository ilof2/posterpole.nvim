local M = {}

---@param palette Palette
---@param config PosterpoleConfig
---@return table
function M.setup(palette, config)
  return {
    LspSignatureActiveParameter = { underline = true },
    -- Rust
    ["@lsp.type.property.rust"] = { link = "Variable" },
    ["@lsp.type.macro.rust"] = { link = "@function.macro.rust" },
    ["@lsp.type.namespace.rust"] = { link = "Special" },
    -- Lua
    ["@lsp.type.property.lua"] = { link = "Special" },
  }
end

return M
