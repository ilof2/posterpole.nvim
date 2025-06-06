local M = {}

---@param palette Palette
---@param config PosterpoleConfig
---@return table
function M.setup(palette, config)
  local colors = palette.colors
  return {
    Normal = { bg = palette.bgNoBG, fg = colors.mainWhite },
    NormalNC = { bg = palette.bgInactive, fg = colors.mainWhite },
    EndOfBuffer = { bg = palette.bgNoBG, fg = colors.mainGray },
    Function = { fg = colors.mainBlue, bold = true },
    Boolean = { fg = colors.mainPurple }, -- boolean constants
    Character = { fg = colors.mainGreen }, -- character constants
    Comment = { fg = colors.mainGray }, -- comments
    Constant = { fg = colors.mainOrange, bold = true }, -- (preferred) any constant Delimiter = { fg = gray4 },          -- delimiter characters
    Float = { fg = colors.mainPurple }, -- float constants
    Error = { fg = palette.fg }, -- (preferred) any erroneous construct
    Exception = { fg = palette.fg }, -- 'try', 'catch', 'throw'
    Identifier = { fg = colors.mainRed }, -- (preferred) any variable
    Keyword = { fg = colors.mainRed }, -- any other keyword
    Conditional = { fg = palette.fg }, -- conditionals
    Visual = { fg = colors.mainWhite, bg = colors.mainGray },
    Repeat = { fg = palette.fg }, -- loop keywords: 'for', 'while' etc
    Label = { fg = palette.fg }, -- 'case', 'default', etc
    Number = { fg = colors.mainPurple }, -- number constant
    Operator = { fg = colors.brightGray }, -- '+', '*', 'sizeof' etc
    PreProc = { fg = palette.fg }, -- (preferred) generic preprocessor
    Define = { fg = palette.fg }, -- preprocessor '#define'
    Include = { fg = palette.fg }, -- preprocessor '#include'
    Macro = { fg = colors.mainPurple }, -- macros
    PreCondit = { fg = palette.fg }, -- preprocessor conditionals '#if', '#endif' etc
    Special = { fg = colors.mainYellow }, -- (preferred) any special symbol
    SpecialChar = { link = "Special" }, -- special character in a constant
    Delimiter = { fg = colors.mainWhite }, -- special character in a constant
    SpecialComment = { fg = palette.fg }, -- special things inside comments
    Tag = { fg = palette.fg }, -- can use <C-]> on this
    Statement = { fg = palette.fg }, -- (preferred) any statement
    String = { fg = colors.mainGreen }, -- string constants
    Title = { fg = colors.mainWhite },
    Type = { fg = colors.mainPurple }, -- (preferred) 'int', 'long', 'char' etc
    StorageClass = { fg = colors.mainBlue }, -- 'static', 'volatile' etc
    Structure = { fg = colors.mainBlue }, -- 'struct', 'union', 'enum' etc
    Typedef = { fg = colors.mainBlue }, -- 'typedef'
    Todo = { fg = "black", bg = colors.mainCyan }, -- (preferred) 'TODO' keywords in comments

    Added = { fg = colors.mainGreen },
    Removed = { fg = colors.mainRed },
    Changed = { fg = colors.mainOrange },
    DiffAdd = { bg = colors.deepGreen },
    DiffDelete = { fg = colors.mainWhite, bg = colors.deepRed },
    DiffText = { bg = colors.brightGreen },
    DiffChange = { bg = colors.brightGreen },
    DiffAdded = { link = "Added" },
    DiffRemoved = { link = "Removed" },
    DiffChanged = { link = "Changed" },

    DiagnosticError = { fg = colors.deepRed },
    DiagnosticWarn = { fg = colors.mainOrange },
    DiagnosticInfo = { fg = colors.mainWhite },
    DiagnosticHint = { fg = colors.mainBlue },
    DiagnosticOk = { fg = colors.mainGreen },
    WarningMsg = { fg = colors.mainOrange, force = true },
    ErrorMsg = { fg = colors.mainRed, force = true },
    Cursor = { reverse = true },
    lCursor = { reverse = true },
    CurSearch = { fg = colors.mainBlack, bg = colors.mainOrange },
    CursorLine = { bg = colors.bgColorNC },
    Search = { fg = colors.mainBlack, bg = colors.mainRed },
    NvimInternalError = { bg = colors.mainRed, fg = colors.mainBlack },
    QuickFixLine = { fg = colors.mainOrange },
    Directory = { fg = colors.mainCyan },
    MoreMsg = { fg = colors.mainCyan },
    ModeMsg = { link = "String" },
    WinBar = { fg = palette.fg, bg = nil },
    WinBarNC = { fg = palette.fg, bg = nil },
    WinSeparator = { fg = colors.mainGray, bg = nil },
    NormalFloat = { fg = colors.mainWhite, bg = nil },
    DiagnosticUnderlineError = { underline = true, sp = colors.mainRed },
    DiagnosticUnderlineWarn = { underline = true },
    DiagnosticUnderlineInfo = { underline = true },
    DiagnosticUnderlineHint = { underline = true },
    DiagnosticUnderlineOk = { underline = true },
    PmenuSel = { link = "Visual" },
    Pmenu = { fg = colors.mainYellow, bg = palette.bgDark },
    Scrollbar = { bg = palette.bgDark },
    PmenuSbar = { bg = palette.bgDark },
    Question = { fg = colors.mainGreen },
    LineNr = { fg = colors.mainGray },
    StatusLine = { fg = colors.mainGreen },
    StatusLineNC = { fg = colors.mainGreen, bg = colors.bgColorNC },
    TabLine = { fg = colors.mainGreen, bg = config.selected_tab_highlight and palette.bgDark or palette.bgNoBG }, -- Tab title
    TabLineSel = { fg = colors.mainWhite, bg = colors.bgColorNC }, -- Curent tab title
    Folded = { fg = colors.mainGray },
  }
end

return M
