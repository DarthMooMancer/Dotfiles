vim.opt.termguicolors = true
vim.opt.completeopt = { "menuone", "noselect", "noinsert" }
vim.opt.mouse =  ""
vim.opt.wrap = false
vim.opt.relativenumber = true
vim.opt.scrolloff = 8
vim.opt.shiftwidth = 4
vim.opt.hlsearch = false
vim.opt.swapfile = false
-- vim.opt.foldmethod = "manual"
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.opt.foldcolumn = "1"
vim.opt.foldtext = ""

require("config.lazy")
require('config.keybinds')
vim.cmd.colorscheme('kanagawa-dragon')
