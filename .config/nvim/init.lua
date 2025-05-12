vim.opt.termguicolors = true
vim.opt.completeopt = { "menuone", "noselect", "noinsert" }
vim.opt.mouse =  ""
vim.opt.wrap = false
vim.opt.relativenumber = true
vim.opt.scrolloff = 8
vim.opt.shiftwidth = 4
vim.opt.hlsearch = false
vim.opt.swapfile = false
-- vim.opt.foldmethod = "expr"
-- vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
-- vim.opt.foldcolumn = "1"
-- vim.opt.foldtext = ""
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.g.netrw_banner = 0

require('config.lazy')
require('config.keybinds')
require('config.lsp-configs')
vim.cmd.colorscheme('kanagawa-dragon')
vim.cmd("hi! link BlinkCmpMenuBorder Pmenu")
vim.cmd("hi! link BlinkCmpDoc Pmenu")
vim.cmd("hi! link BlinkCmpDocBorder Pmenu")
vim.cmd("hi! link BlinkCmpDocSeparator Pmenu")
