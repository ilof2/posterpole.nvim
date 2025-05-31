<div align="center"><img src="https://github.com/user-attachments/assets/5bd3b37f-58ed-4fb8-a7de-3e43ce31812b" width=150, height=150></div>
<h1 align="center" valign="middle" >
  <sup>Posterpole.nvim</sup> 
</h1>
<p align="center">Simple nvim theme with pastel colors which try to emulate an old retro poster vibe</p>
<p align="center">
<img alt="Stars" src="https://img.shields.io/github/stars/ilof2/posterpole.nvim?style=for-the-badge&labelColor=%2324222A&color=%23C5916B">
<img alt="Issues" src="https://img.shields.io/github/issues/ilof2/posterpole.nvim?style=for-the-badge&labelColor=%2324222A&color=%23A86F6F">
<img alt="Commit activity" src="https://img.shields.io/github/commit-activity/w/ilof2/posterpole.nvim?style=for-the-badge&labelColor=%2324222A&color=%23728C7B">
</p>

## Main theme
<img width="1896" alt="Screenshot 2024-11-01 at 15 38 12" src="https://github.com/user-attachments/assets/957eb9fe-fe66-4f1f-8e4e-da43f5830e0f">

## notermguicolors

<img width="1896" alt="Screenshot 2024-11-01 at 15 37 56" src="https://github.com/user-attachments/assets/299eac64-dc7b-4854-8de9-9c6f67afc592">

## Other implementations

### [Posterpole Repo](https://github.com/posterpole)

- [Alacritty](https://github.com/posterpole/alacritty)
- [Kitty](https://github.com/posterpole/kitty)
- [Wezterm](https://github.com/posterpole/wezterm)
- [Ghostty](https://github.com/posterpole/ghostty)
- [VScode](https://github.com/posterpole/vscode)
- [Zellij](https://github.com/posterpole/zellij)


## Features

- 🪟 Transparency
- 🎨 Color/colorless bg variants
- ☀︎  Configurable brightness and saturation
- 👾 `set notermguicolors` do not broke colors<br>
terminals without `$TERM=xterm-256color` support
- 🌗 Adaptive brightness based on current hour

## Installation

Lazy:

```lua
{
  "ilof2/posterpole.nvim",
  priority=1000,
  config = function ()
    local posterpole = require("posterpole")

    posterpole.setup({
      -- config here
    })
    vim.cmd("colorscheme posterpole")
    
    -- This function create sheduled task, which will reload theme every hour
    -- Without "setup_adaptive" adaptive brightness will be set only after every restart
    posterpole.setup_adaptive()
  end
}
```

## Configuration

```lua
-- Default
require("posterpole").setup({
  transparent = false,
  colorless_bg = false, -- grayscale or not
  dim_inactive = false, -- highlight inactive splits
  brightness = 0, -- negative numbers - darker, positive - lighter
  selected_tab_highlight = false, --highlight current selected tab
  fg_saturation = 0, -- font saturation, gray colors become more brighter
  bg_saturation = 0, -- background saturation
  colors = {
    posterpole = {}, -- { mainRed = {hex = "#550000", cterm = 95} }
  },
  groups = {
    posterpole = {
     -- Comment = {fg = {hex = "#FFF000", cterm = 95 }}
    },
  },
  adaptive_brightness = {
    enabled = false,
    max_brightness = 1, -- maximum brightness for the day
    min_brightness = -6, -- minimum brightness for the day
    daylight_duration = 12, -- how long is daylight
    noon_time = 12 -- hour when the theme will have maximum brightness
  },
  lualine = {
    transparent = true
  }
})

```
## Highlight Groups


You can provide your custom highlight groups in this way:
```lua
{
    groups = {
        posterpole = {
            -- your groups here
            { GroupName = { fg = Color, bg = Color }}
        }
    }
}
```
Color table have structure:

```lua
{hex = "#000000", cterm = 123}
```
Also supported options: `link`, `underline` and `reverse`

> [!NOTE]
> All options are optional, if `link` option provided, all other options will be ignored



## Colors


You can override all colors that are used in colorscheme

> [!IMPORTANT]
> cterm color values should be integer in range **0-256**

> [!NOTE]
> `brightness`, `fg_saturation`, and `bg_saturation` settings are not applied to custom colors
> Possibly it will added in the future

256 colors helpers:

- [256 color cheat sheet](https://www.ditig.com/publications/256-colors-cheat-sheet)
- [xterm256 color picker](https://michurin.github.io/xterm256-color-picker/)

Colors list which can be overwritten:

```lua
{
  mainGray
  mainBlack
  mainYellow
  mainOrange
  mainWhite
  mainGreen
  mainCyan
  mainBlue
  mainPurple
  mainRed

  -- scales
  deepRed
  deepGreen
  brightGreen
  brightGray

  -- main bg colors
  bgColor
  bgColorNC
  bgDarkColor
  bgDarkColorless
  bgColorlessColor
  bgColorlessNC
}
```

## Plugins Support (full or partial)

- [render-markdown.nvim](https://github.com/MeanderingProgrammer/render-markdown.nvim)
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui)
- [mini.files](https://github.com/echasnovski/mini.files)
- [vim-fugitive](https://github.com/tpope/vim-fugitive)
- [trouble.nvim](https://github.com/folke/trouble.nvim)
- [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)
- [neotest](https://github.com/nvim-neotest/neotest)
- [cmp](https://github.com/hrsh7th/nvim-cmp)
- [lua-fzf](https://github.com/ibhagwan/fzf-lua)
- [aerial](https://github.com/stevearc/aerial.nvim)
- [lualine](https://github.com/nvim-lualine/lualine.nvim)
- [notify](https://github.com/rcarriga/nvim-notify)
- [beacon.nvim](https://github.com/DanilaMihailov/beacon.nvim)
- [which-key.nvim](https://github.com/folke/which-key.nvim)


## Inspiration

- [vague.nvim](https://github.com/vague2k/vague.nvim)
- [kanagawa.nvim](https://github.com/rebelot/kanagawa.nvim)
- builtin habamax

## Known issues

1. Color scheme with `dim_inactive=true` and `transparent=true` looks crappy.
  The best solution for now - is not to combine these 2 options
