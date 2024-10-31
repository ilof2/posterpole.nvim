<h1 align="center" valign="middle" >
  <sup>Posterpole.nvim</sup> 
</h1>
<p align="center">Simple nvim theme with pastel colors which try to emulate an old retro poster vibe</p>

![Screenshot 2024-10-04 at 11 38 53(1)](https://github.com/user-attachments/assets/6dbcf965-9137-462d-8ae0-d08dec9f00b4)

This theme does not pretend to be the most customizable or best one, it was created because I can't find a suitable one for me.
## Other implementations
#### [Posterpole Repo](https://github.com/posterpole)
- [Alacritty](https://github.com/posterpole/alacritty)
- [VScode](https://github.com/posterpole/vscode) (release soon)
- Wezterm (WIP)

## Features
- 🪟 Transparency
- 🎨 Color/colorless bg variants
- ☀︎  Configurable brightness and saturation
- 👾 `posterpole-term` variant which can be used in <br>
terminals without `$TERM=xterm-256color` support ( Macos terminal for example )

## Installation:
Lazy:
```lua
{
  "ilof2/posterpole.nvim",
  priority=1000,
  config = function ()
    require("posterpole").setup({
      -- config here
    })
    vim.cmd("colorscheme posterpole")

    -- if you need colorscheme without termguicolors support
    -- This variant set termguicolors to false, be aware of using it
    -- vim.cmd("colorscheme posterpole-term")
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
  bg_saturation = 0 -- background saturation
})
```

## Plugins Support (full or partial)
* [render-markdown.nvim](https://github.com/MeanderingProgrammer/render-markdown.nvim)
* [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
* [nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui)
* [mini.files](https://github.com/echasnovski/mini.files)
* [vim-fugitive](https://github.com/tpope/vim-fugitive)
* [trouble.nvim](https://github.com/folke/trouble.nvim)
* [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)
* [neotest](https://github.com/nvim-neotest/neotest)
* [cmp](https://github.com/hrsh7th/nvim-cmp)
* [lua-fzf](https://github.com/ibhagwan/fzf-lua)
* [aerial](https://github.com/stevearc/aerial.nvim)

## Plans
1. Add extra options to change colors
2. More plugins support
3. Adaptive colors support

## Inspiration
* [vague.nvim](https://github.com/vague2k/vague.nvim)
* [kanagawa.nvim](https://github.com/rebelot/kanagawa.nvim)
* builtin habamax

## Known issues
1. Color scheme with `dim_inactive=true` and `transparent=true` looks crappy.
  The best solution for now - is not to combine these 2 options

