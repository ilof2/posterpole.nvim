# Posterpole.nvim
Simple nvim theme with pastel colors which try to emulate an old retro poster vibe

### Color background
<img width="1896" alt="image" src="https://github.com/user-attachments/assets/1bc4b905-b671-4979-acc6-4975151db53f">

### Colorless background
><img width="1896" alt="image" src="https://github.com/user-attachments/assets/09b7156a-50e3-4c3b-9596-8b67a977cb15">

This theme does not pretend to be the most customizable or best one, it's was created because I can't find a suitable one for me.

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
  dim_inactive = false,
  brightness = 0, -- negative numbers - darker, positive - lighter
})
```

## Plugins Support (full or partial)
* [render-markdown.nvim](https://github.com/MeanderingProgrammer/render-markdown.nvim)
* [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
* [nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui)
* [mini.files](https://github.com/echasnovski/mini.files)
* [vim-fugitive](https://github.com/tpope/vim-fugitive)

## Plans
1. Terminal colors. (Now work as expected only with `termguicolors = true`)
2. Add extra options to change colors and contrast
3. New theme variants

## Inspiration
* [vague.nvim](https://github.com/vague2k/vague.nvim)
* [kanagawa.nvim](https://github.com/rebelot/kanagawa.nvim)

## Known issues
1. Color scheme with `dim_inactive=true` and `transparent=true` looks crappy.
  The best solution for now - is not to combine these 2 options

