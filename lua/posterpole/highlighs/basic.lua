local M = {}

---@param palette Palette
---@param config PosterpoleConfig
---@return table
function M.setup(palette, config)
  local colors = palette.colors
  return {
    Normal = { bg = palette.bgTransp, fg = colors.fg },
    NormalNC = { bg = palette.bgInactive, fg = colors.fg },
    EndOfBuffer = { bg = palette.bgTransp, fg = colors.comment },
    Function = { fg = colors.func, bold = true },
    Boolean = { fg = colors.type }, -- boolean constants
    Character = { fg = colors.string }, -- character constants
    Comment = { fg = colors.comment }, -- comments
    Constant = { fg = colors.constant, bold = true }, -- (preferred) any constant Delimiter = { fg = gray4 },          -- delimiter characters
    Float = { fg = colors.type }, -- float constants
    Error = { fg = colors.keyword }, -- (preferred) any erroneous construct
    Exception = { fg = colors.keyword }, -- 'try', 'catch', 'throw'
    Identifier = { fg = colors.keyword }, -- (preferred) any variable
    Keyword = { fg = colors.keyword }, -- any other keyword
    Conditional = { fg = colors.keyword }, -- conditionals
    Visual = { fg = colors.fg, bg = colors.comment },
    Repeat = { fg = colors.keyword }, -- loop keywords: 'for', 'while' etc
    Label = { fg = colors.keyword }, -- 'case', 'default', etc
    Number = { fg = colors.type }, -- number constant
    Operator = { fg = colors.operator }, -- '+', '*', 'sizeof' etc
    PreProc = { fg = colors.keyword }, -- (preferred) generic preprocessor
    Define = { fg = colors.keyword }, -- preprocessor '#define'
    Include = { fg = colors.keyword }, -- preprocessor '#include'
    Macro = { fg = colors.type }, -- macros
    PreCondit = { fg = colors.keyword }, -- preprocessor conditionals '#if', '#endif' etc
    Special = { fg = colors.special }, -- (preferred) any special symbol
    SpecialChar = { link = "Special" }, -- special character in a constant
    Delimiter = { fg = colors.operator }, -- special character in a constant
    SpecialComment = { fg = colors.keyword }, -- special things inside comments
    Tag = { fg = colors.keyword }, -- can use <C-]> on this
    Statement = { fg = colors.keyword }, -- (preferred) any statement
    String = { fg = colors.string }, -- string constants
    Title = { fg = colors.fg },
    Type = { fg = colors.type }, -- (preferred) 'int', 'long', 'char' etc
    StorageClass = { fg = colors.type }, -- 'static', 'volatile' etc
    Structure = { fg = colors.type }, -- 'struct', 'union', 'enum' etc
    Typedef = { fg = colors.func }, -- 'typedef'
    Todo = { fg = colors.black, bg = colors.directory }, -- (preferred) 'TODO' keywords in comments

    Added = { fg = colors.string },
    Removed = { fg = colors.keyword },
    Changed = { fg = colors.constant },
    DiffAdd = { bg = colors.diffAdded },
    DiffDelete = { fg = colors.fg, bg = colors.diffDel },
    DiffText = { bg = colors.diffChanged },
    DiffChange = { bg = colors.diffChanged },
    DiffAdded = { link = "Added" },
    DiffRemoved = { link = "Removed" },
    DiffChanged = { link = "Changed" },

    DiagnosticError = { fg = colors.diffDel },
    DiagnosticWarn = { fg = colors.constant },
    DiagnosticInfo = { fg = colors.fg },
    DiagnosticHint = { fg = colors.func },
    DiagnosticOk = { fg = colors.string },
    WarningMsg = { fg = colors.constant, force = true },
    ErrorMsg = { fg = colors.keyword, force = true },
    Cursor = { reverse = true },
    lCursor = { reverse = true },
    CurSearch = { fg = colors.black, bg = colors.constant },
    CursorLine = { bg = colors.bgDim },
    Search = { fg = colors.black, bg = colors.keyword },
    NvimInternalError = { bg = colors.keyword, fg = colors.black },
    QuickFixLine = { fg = colors.constant },
    Directory = { fg = colors.directory },
    MoreMsg = { fg = colors.directory },
    ModeMsg = { link = "String" },
    WinBar = { fg = colors.fg, bg = nil },
    WinBarNC = { fg = colors.fg, bg = nil },
    WinSeparator = { fg = colors.comment, bg = nil },
    NormalFloat = { fg = colors.fg, bg = nil },
    DiagnosticUnderlineError = { underline = true },
    DiagnosticUnderlineWarn = { underline = true },
    DiagnosticUnderlineInfo = { underline = true },
    DiagnosticUnderlineHint = { underline = true },
    DiagnosticUnderlineOk = { underline = true },
    PmenuSel = { link = "Visual" },
    Pmenu = { fg = colors.special, bg = colors.bgSurface },
    Scrollbar = { bg = palette.bgDark },
    PmenuSbar = { bg = palette.bgDark },
    Question = { fg = colors.string },
    LineNr = { fg = colors.comment },
    StatusLine = { fg = colors.string },
    StatusLineNC = { fg = colors.string, bg = colors.bgDim },
    TabLine = { fg = colors.string, bg = palette.bgTransp }, -- Tab title
    TabLineSel = { fg = colors.black, bg = colors.fg }, -- Curent tab title
    Folded = { fg = colors.comment },
  }
end

return M
