local config = require("posterpole.config").current
local M = {}

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

local red100 = hsl.hslToHex(360, 25 + config.fg_saturation, 55 + config.brightness)
local red400 = hsl.hslToHex(360, 25 + config.fg_saturation, 70 + config.brightness)

local deepRed100 = hsl.hslToHex(0, 30 + config.fg_saturation, 30 + config.brightness)
local deepRed300 = hsl.hslToHex(0, 30 + config.fg_saturation, 40 + config.brightness)

local pink100 = hsl.hslToHex(314, 20 + config.fg_saturation, 65 + config.brightness)


local green100 = hsl.hslToHex(140, 10 + config.fg_saturation, 50 + config.brightness)

local brightGreen100 = hsl.hslToHex(160, 30 + config.fg_saturation, 20 + config.brightness)
local brightGreen200 = hsl.hslToHex(160, 30 + config.fg_saturation, 25 + config.brightness)

local deepGreen100 = hsl.hslToHex(150, 10 + config.fg_saturation, 20 + config.brightness)
local deepGreen200 = hsl.hslToHex(150, 15 + config.fg_saturation, 20 + config.brightness)


local blue100 = hsl.hslToHex(210, 15 + config.fg_saturation, 50 + config.brightness)
local blue200 = hsl.hslToHex(210, 25 + config.fg_saturation, 50 + config.brightness)

local purple100 = hsl.hslToHex(284, 15 + config.fg_saturation, 50 + config.brightness)
local purple200 = hsl.hslToHex(284, 20 + config.fg_saturation, 50 + config.brightness)

local black200 = hsl.hslToHex(250, 5 + config.fg_saturation, 18 + config.brightness)

local gray100 = hsl.hslToHex(210, 0, 30 + config.brightness + config.fg_saturation)

local gray200 = hsl.hslToHex(210, 0, 40 + config.brightness + config.fg_saturation)
local gray300 = hsl.hslToHex(210, 0, 50 + config.brightness + config.fg_saturation)

local white100 = hsl.hslToHex(35, 10 + config.fg_saturation, 65 + config.brightness)
local white400 = hsl.hslToHex(25, 10 + config.fg_saturation, 70 + config.brightness)

local yellow100 = hsl.hslToHex(25, 20 + config.fg_saturation, 60 + config.brightness)

local orange100 = hsl.hslToHex(25, 45 + config.fg_saturation, 60 + config.brightness)

local cyan100 = hsl.hslToHex(174, 10 + config.fg_saturation, 60 + config.brightness)

local bgColor = hsl.hslToHex(260, 10 + config.bg_saturation, 15 + config.brightness)
local bgColorNC = hsl.hslToHex(260, 10 + config.bg_saturation, 18 + config.brightness)
local bgColorDark = hsl.hslToHex(260, 0 + config.bg_saturation, 12 + config.brightness)

local bgColorlessColor = hsl.hslToHex(260, 0, 12 + config.brightness)
local bgColorlessNC = hsl.hslToHex(260, 0, 16 + config.brightness)
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
local bgInactive = config.colorless_bg and (config.dim_inactive and bgColorlessNC or bgColorless) or (config.dim_inactive and bgColorNC or bg)

local fg = red100


local basic_highlights = {
  Normal = { bg = config.colorless_bg and bgColorless or bg, fg = white100},
  NormalNC = { bg = bgInactive, fg = white100 },
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
  Cursor = { gui = "inverse" },
  lCursor = { gui = "inverse" },
  CurSearch = { fg = "black", bg = orange100 },
  CursorLine = { bg = CursorLine },
  Search = { fg = "black", bg = red100 },
  NvimInternalError = { bg = red100, fg = "black" },
  QuickFixLine = { fg = orange100 },
  Directory = { fg = cyan100 },
  MoreMsg = { fg = blue200 },
  WinBar = { fg = fg, bg = nil },
  WinBarNC = { fg = fg, bg = nil},
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
  TabLine = { fg = white100, bg = config.selected_tab_highlight and bgColorNC or bg }, -- Tab title
  TabLineSel = {fg = green100, bg = bg}, -- Curent tab title
}
local treesitter = {
  ["@variable"] = { fg = Variable },
  ["@variable.member"] = { fg = white100 },
  ["@function.call"] = { fg = blue100, gui="bold"},
  ["@function"] = { fg = blue100, gui="bold"},
  ["@property"] = { fg = yellow100 },
}

local lsp = {
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

local neotest_highlights = {
  NeotestPassed = { fg = green100 },
  NeotestFailed = { fg = red100 },
  NeotestRunning = { fg = orange100, gui = "bold" },
  NeotestSkipped = { fg = gray200 },
  -- NeotestNamespace
  NeotestFocused = { fg = yellow100, gui = "underline"},
  NeotestFile = { fg = white100 },
  NeotestDir = { fg = cyan100 },
  -- NeotestIndent
  -- NeotestExpandMarker
  NeotestAdapterName = { fg = red100 },
  -- NeotestWinSelect
  -- NeotestMarked
  -- NeotestTarget
  NeotestWatching = { fg = purple100 },
}

local dap_ui_highlights = {
  debugPC = { bg = deepRed100 },
  DapUIDecoration = { fg = red100 },
  DapUIFloatBorder = { fg = red100 },
  DapUIWatchesEmpty = { fg = red100 },
  DapUIWatchesError = { fg = red100 },
  DapUIStop = { fg = red100 },
  DapUIStopNC = { fg = red100 },
  DapUIModifiedValue = { fg = yellow100, gui = "bold" },
  DapUIStoppedThread = { fg = yellow100 },
  DapUIWatchesValue = { fg = orange100 },
  DapUIStepOver = { fg = cyan100 },
  DapUIStepInto = { fg = cyan100 },
  DapUIStepBack = { fg = cyan100 },
  DapUIStepOut = { fg = cyan100 },

  DapUIStepOverNC = { fg = cyan100 },
  DapUIStepIntoNC = { fg = cyan100 },
  DapUIStepBackNC = { fg = cyan100 },
  DapUIStepOutNC = { fg = cyan100 },
  DapUIBreakpointsPath = { fg = cyan100 },
  DapUILineNumber = { fg = cyan100 },
  DapUIScope = { fg = cyan100 },
  DapUIWinSelect = { fg = cyan100, gui = "bold" },
  DapUIType = basic_highlights.Type,
  DapUISource = basic_highlights.Type,
  DapUIBreakpointsInfo = { fg = green100 },
  DapUIBreakpointsCurrentLine = { fg = green100, gui = "bold" },
  DapUIThread = { fg = green100 },

  DapUIPlayPause = { fg = green100 },
  DapUIRestart = { fg = green100, gui = "bold" },

  DapUIPlayPauseNC = { fg = green100 },
  DapUIRestartNC = { fg = green100 },
  DapBreakpoint = { fg = red400 },
}

local neotree_highlights = {

  -- NeoTreeFileNameOpened
  -- NeoTreeRootName
  NeoTreeModified = { fg =  cyan100 },
  NeoTreeGitAdded = { fg = deepRed100 },
  NeoTreeGitDeleted = { fg = red100 },
  NeoTreeGitModified = { fg = yellow100 },
  NeoTreeGitConflict = { fg = Warning },
  NeoTreeGitUntracked = { fg = purple100 },
}

local trouble_highlights = {
  TroubleCount = { fg = green100 }
}

local mini_statusline_highlights = {
  MiniStatuslineModeVisual = { fg = black200, bg=orange100 },
  MiniStatuslineModeInsert = { fg = black200, bg=green100 },
  MiniStatuslineModeCommand = { fg = black200, bg=cyan100 },
  MiniStatuslineModeNormal = { fg = black200, bg=yellow100 },
  MiniStatuslineFileinfo = { fg = green100, bg=config.colorless_bg and bgColor or bgColorlessColor},
  MiniStatuslineDevinfo = { fg = green100, bg=config.colorless_bg and bgColor or bgColorlessColor},
  MiniStatuslineFilename = { fg = green100, bg=config.colorless_bg and bgColorless or bg},
  MiniStatuslineInactive = { fg = green100, bg=config.colorless_bg and bgColorless or bg},
}

M.set_all = function()
  set_highlights(basic_highlights)
  set_highlights(treesitter)
  set_highlights(lsp)

  set_highlights(dap_ui_highlights)
  set_highlights(neotest_highlights)
  set_highlights(neotree_highlights)
  set_highlights(trouble_highlights)
  set_highlights(render_markdown_highlights)
  set_highlights(mini_statusline_highlights)
end

return M
