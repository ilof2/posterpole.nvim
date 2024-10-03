local config = require("posterpole.config").current
M = {}

M.clear_hl = function()
  vim.cmd("hi clear")
  vim.cmd("syntax reset")
end

---@param highlights table <string, table>
local function set_highlights(highlights)
  for name, setting in pairs(highlights) do
    vim.api.nvim_command(string.format(
      "highlight %s guifg=%s guibg=%s guisp=%s gui=%s",
      name,
      setting.fg or "none",
      setting.bg or "none",
      setting.sp or "none",
      setting.gui or "none"
    ))
  end
end

local hsl = require("posterpole.hsl")

local red100 = hsl.hslToHex(360, 25, 55 + config.brightness)
local red400 = hsl.hslToHex(360, 25, 70 + config.brightness)

local deepRed100 = hsl.hslToHex(0, 30, 30 + config.brightness)
local deepRed300 = hsl.hslToHex(0, 30, 40 + config.brightness)

local pink100 = hsl.hslToHex(314, 20, 65 + config.brightness)


local green100 = hsl.hslToHex(140, 10, 50 + config.brightness)

local brightGreen100 = hsl.hslToHex(160, 30, 20 + config.brightness)
local brightGreen200 = hsl.hslToHex(160, 30, 25 + config.brightness)

local deepGreen100 = hsl.hslToHex(150, 10, 20 + config.brightness)
local deepGreen200 = hsl.hslToHex(150, 15, 20 + config.brightness)


local blue100 = hsl.hslToHex(210, 15, 50 + config.brightness)
local blue200 = hsl.hslToHex(210, 25, 50 + config.brightness)

local purple100 = hsl.hslToHex(284, 15, 50 + config.brightness)
local purple200 = hsl.hslToHex(284, 20, 50 + config.brightness)

local black200 = hsl.hslToHex(250, 5, 18 + config.brightness)

local gray100 = hsl.hslToHex(210, 0, 30 + config.brightness)
local gray200 = hsl.hslToHex(210, 0, 40 + config.brightness)
local gray300 = hsl.hslToHex(210, 0, 50 + config.brightness)

local white100 = hsl.hslToHex(35, 10, 65 + config.brightness)
local white400 = hsl.hslToHex(25, 10, 70 + config.brightness)

local yellow100 = hsl.hslToHex(25, 20, 60 + config.brightness)

local orange100 = hsl.hslToHex(25, 50, 60 + config.brightness)

local bgColor = hsl.hslToHex(260, 10, 15 + config.brightness)
local bgColorNC = hsl.hslToHex(260, 10, 17 + config.brightness)
local bgColorDark = hsl.hslToHex(260, 0, 12 + config.brightness)

local bgColorlessColor = config.transparent and "nil" or hsl.hslToHex(260, 0, 12 + config.brightness)
local bgColorlessNC = hsl.hslToHex(260, 0, 15 + config.brightness)
local bgColorlessDark = hsl.hslToHex(15, 4, 9 + config.brightness)

local Variable = white100
local String = green100
local Error = deepRed300
local Warning = orange100
local Hint = blue100
local Info = white100
local Ok = deepGreen100

local CursorLine = black200

local Added = green100
local Changed = orange100
local Deleted = red100



local bg = config.transparent and "nil" or bgColor
local bgColorless = config.transparent and "nil" or bgColorlessColor
local bgInactive = config.colorless_bg and (config.dim_inactive and bgColorlessNC or bgColorless) or (config.dim_inactive and bgColorNC or bgColor)

local fg = red100


local basic_highlights = {
  Normal = { bg = config.colorless_bg and bgColorless or bg, fg = yellow100 },
  NormalNC = { bg = bgInactive, fg = yellow100 },
  EndOfBuffer = { bg = config.colorless_bg and bgColorless or bg, fg = gray200 },
  Function = { fg = blue100, gui = "bold" },
  Boolean = { fg = purple100 },                -- boolean constants
  Character = { fg = green100 },               -- character constants
  Comment = { fg = gray100 },                  -- comments
  Constant = { fg = orange100, gui = "bold" }, -- (preferred) any constant Delimiter = { fg = gray400 },          -- delimiter characters
  Float = { fg = purple100 },                  -- float constants
  Error = { fg = fg },                         -- (preferred) any erroneous construct
  Exception = { fg = fg },                     -- 'try', 'catch', 'throw'
  Identifier = { fg = red100 },                -- (preferred) any variable
  Keyword = { fg = red100 },                   -- any other keyword
  Conditional = { fg = fg },                   -- conditionals
  Visual = { fg = white100, bg = gray100 },
  Repeat = { fg = fg },                        -- loop keywords: 'for', 'while' etc
  Label = { fg = fg },                         -- 'case', 'default', etc
  Number = { fg = purple200 },                 -- number constant
  Operator = { fg = gray300 },                 -- '+', '*', 'sizeof' etc
  PreProc = { fg = fg },                       -- (preferred) generic preprocessor
  Define = { fg = fg },                        -- preprocessor '#define'
  Include = { fg = fg },                       -- preprocessor '#include'
  Macro = { fg = pink100 },                    -- macros
  PreCondit = { fg = fg },                     -- preprocessor conditionals '#if', '#endif' etc
  Special = { fg = yellow100 },                -- (preferred) any special symbol
  SpecialChar = { fg = fg },                   -- special character in a constant
  Delimiter = { fg = white100 },               -- special character in a constant
  SpecialComment = { fg = fg },                -- special things inside comments
  Tag = { fg = fg },                           -- can use <C-]> on this
  Statement = { fg = fg },                     -- (preferred) any statement
  String = { fg = String },                    -- string constants
  Title = { fg = white100 },
  Type = { fg = purple100 },                   -- (preferred) 'int', 'long', 'char' etc
  StorageClass = { fg = blue100 },             -- 'static', 'volatile' etc
  Structure = { fg = blue100 },                -- 'struct', 'union', 'enum' etc
  Typedef = { fg = blue100 },                  -- 'typedef'
  Todo = { fg = "black", bg = purple100 },     -- (preferred) 'TODO' keywords in comments
  DiffAdd = { bg = deepGreen100 },
  DiffDelete = { fg = white400, bg = deepRed100 },
  DiffText = { bg = brightGreen200 },
  DiffChange = { bg = brightGreen100 },
  DiagnosticError = { fg = Error },
  DiagnosticWarn = { fg = Warning },
  DiagnosticInfo = { fg = Info },
  DiagnosticHint = { fg = Hint },
  DiagnosticOk = { fg = Ok },
  Added = { fg = Added },
  Removed = { fg = Deleted },
  Changed = { fg = Changed },
  CurSearch = { fg = "black", bg = orange100 },
  CursorLine = { bg = CursorLine },
  Search = { fg = "black", bg = red100 },
  NvimInternalError = { bg = red100, fg = "black" },
  QuickFixLine = { fg = orange100 },
  Directory = { fg = red400 },
  MoreMsg = { fg = blue200 },
  WinBar = { fg = fg, bg = nil },
  NormalFloat = { fg = white100, bg = nil },
  DiagnosticUnderlineError = { gui = "underline" },
  DiagnosticUnderlineWarn = { gui = "underline" },
  DiagnosticUnderlineInfo = { gui = "underline" },
  DiagnosticUnderlineHint = { gui = "underline" },
  DiagnosticUnderlineOk = { gui = "underline" },
  PmenuSel = { fg = orange100 },
  Question = { fg = green100 },
  LineNr = { fg = gray100 },
  StatusLine = { fg = green100 },
  StatusLineNC = { fg = green100, bg = bgColorNC },

  ["@variable"] = { fg = Variable },
  LspSignatureActiveParameter = { gui = "underline" }
}

local render_markdown_highlights = {
  RenderMarkdownH1Bg = { bg = deepGreen200, gui = "bold" },
  RenderMarkdownH2Bg = { bg = deepRed100, gui = "bold" },
  RenderMarkdownH3Bg = { bg = deepGreen100, gui = "bold" },
  RenderMarkdownH4Bg = { bg = gray100, gui = "bold" },
  RenderMarkdownH5Bg = { bg = gray100, gui = "bold" },
  RenderMarkdownH6Bg = { bg = gray100, gui = "bold" },
  RenderMarkdownCode = { bg = config.colorless_bg and bgColorlessDark or bgColorDark },
}

local dap_ui_highlights = {
  debugPC = { bg = deepRed100 },
  DapUIDecoration = { fg = red100 },
  DapUIFloatBorder = { fg = red100 },
  -- SDapUINormalNC = {bg = gray100},
  -- SDapUINormal = {bg = gray100},
}

M.set_all = function()
  set_highlights(basic_highlights)
  set_highlights(dap_ui_highlights)
  set_highlights(render_markdown_highlights)
end

return M
