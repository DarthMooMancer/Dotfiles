vim.opt.termguicolors = true
vim.opt.completeopt = { "menuone", "noselect", "noinsert" }
vim.opt.mouse =  ""
vim.opt.wrap = false
vim.opt.relativenumber = true
vim.opt.scrolloff = 8
vim.opt.shiftwidth = 4
vim.opt.hlsearch = false
vim.opt.swapfile = false

require("config.lazy")
require('config.keybinds')
vim.cmd.colorscheme('kanagawa-dragon')
