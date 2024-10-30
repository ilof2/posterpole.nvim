<h1 align="center" valign="middle" >
  <sup>Posterpole.nvim</sup> 
</h1>
<p align="center">Simple nvim theme with pastel colors which try to emulate an old retro poster vibe</p>

![Screenshot 2024-10-04 at 11 38 53(1)](https://github.com/user-attachments/assets/6dbcf965-9137-462d-8ae0-d08dec9f00b4)

This theme does not pretend to be the most customizable or best one, it was created because I can't find a suitable one for me.
## Other implementations
- [Posterpole org](https://github.com/posterpole)

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

## Plans
1. Terminal colors. (Now work as expected only with `termguicolors = true`)
2. Add extra options to change colors
3. New theme variants

## Inspiration
* [vague.nvim](https://github.com/vague2k/vague.nvim)
* [kanagawa.nvim](https://github.com/rebelot/kanagawa.nvim)

## Known issues
1. Color scheme with `dim_inactive=true` and `transparent=true` looks crappy.
  The best solution for now - is not to combine these 2 options

