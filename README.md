# posterpole.nvim
Simple nvim theme with pastel colors which try to emulate an old retro poster vibe

<img width="1896" alt="image" src="https://github.com/user-attachments/assets/2d11538f-85c4-4223-aabd-f98600b06856">

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
3. New theme variants

## Inspiration
* [vague.nvim](https://github.com/vague2k/vague.nvim)
* [kanagawa.nvim](https://github.com/rebelot/kanagawa.nvim)
