# kanagawa-past.nvim
Simple kanagawa nvim theme with pastel colors

<img width="1896" alt="image" src="https://github.com/user-attachments/assets/2d11538f-85c4-4223-aabd-f98600b06856">

This theme not pretend to be most customizable or best one, it's was created because I can't find suitable one for me.

## Installation:
Lazy:
```lua
{
  "ilof2/kanagawa-past.nvim",
  priority=1000,
  config = function ()
    require("kanagawa-past").setup({
      -- config here
    })
    vim.cmd("colorscheme kanagawa-past")
  end
}
```

## Configuration
```lua
-- Default
require("kanagawa-past").setup({
  transparent = false
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
3. Theme variants

## Inspiration
* [vague.nvim](https://github.com/vague2k/vague.nvim)
* [kanagaw.nvim](https://github.com/rebelot/kanagawa.nvim)
