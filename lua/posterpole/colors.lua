local config = require("posterpole.config").current
local utils = require("posterpole.utils")

local M = {}

---@param variant string
---@return Palette
function M.setup(variant)
  ---@class PaletteColors
  ---@field posterpole Colors
  local variants = {
    posterpole = {
      -- main colors
      comment = { cterm = 240, hex = "#4d4d4d" },
      black = { cterm = 233, hex = "#302c2c" },
      special = { cterm = 144, hex = "#a8968a" },
      constant = { cterm = 137, hex = "#c7916b" },
      variable = { cterm = 145, hex = "#afa79d" },
      string = { cterm = 101, hex = "#738c7b" },
      directory = { cterm = 65, hex = "#8fa3a2" },
      func = { cterm = 103, hex = "#6c7f93" },
      type = { cterm = 60, hex = "#7b6284" },
      keyword = { cterm = 95, hex = "#a97070" },
      operator = { cterm = 244, hex = "#afa79d" },
      fg = { cterm = 145, hex = "#afa79d" },

      -- scales
      diffDel = { cterm = 95, hex = "#633636" },
      diffChanged = { cterm = 237, hex = "#2e3833" },
      diffAdded = { cterm = 236, hex = "#244238" },

      -- main bg colors
      bg = { cterm = 234, hex = "#141414" },
      bgDim = { cterm = 236, hex = utils.blend("#101010", "#0e0f07", 0.05) },
      bgSurface = { cterm = 233, hex = "#161616" },

      --builtin term bright colors
      brightTermBlack = { cterm = 241, hex = "#4b4444" },
      brightTermBlue = { cterm = 110, hex = "#8a99a8" },
      brightTermCyan = { cterm = 73, hex = "#8fa3a2" },
      brightTermGreen = { cterm = 108, hex = "#8fa396" },
      brightTermMagenta = { cterm = 104, hex = "#957b9d" },
      brightTermRed = { cterm = 167, hex = "#bc8f8f" },
      brightTermWhite = { cterm = 253, hex = "#c6c0b9" },
      brightTermYellow = { cterm = 186, hex = "#d5ad90" },
    },
  }

  variants = vim.tbl_deep_extend("force", vim.deepcopy(variants), config.colors)
  local colors = variants.posterpole

  -- FIXME: Should be refactored
  local bgColor = colors.bg
  local bg = bgColor

  -- transparent
  local bgTransp = config.transparent and { hex = "", cterm = "" } or bg

  -- dark
  -- FIXME: Should be refactored
  local bgDarkNoBG = config.transparent and { hex = "", cterm = "" } or colors.bgSurface

  -- inactive
  local bgInactiveColor = config.dim_inactive and colors.bgDim or bgTransp
  local bgInactive = bgInactiveColor

  ---@class Palette
  local palette = {
    colors = colors,
    bgColor = bgColor,
    bg = bg,
    bgTransp = bgTransp,
    bgDarkColor = colors.bgSurface,
    bgDark = colors.bgSurface,
    bgDarkNoBG = bgDarkNoBG,
    bgInactiveColor = bgInactiveColor,
    bgInactive = bgInactive,
  }
  return palette
end

return M
