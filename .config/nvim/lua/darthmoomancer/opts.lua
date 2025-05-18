vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25

vim.opt.termguicolors = true
vim.opt.mouse =  ""
vim.opt.wrap = false
vim.opt.relativenumber = true
vim.opt.scrolloff = 8
vim.opt.shiftwidth = 4
vim.opt.hlsearch = false
vim.opt.swapfile = false
vim.opt.completeopt = { "menuone", "noselect", "noinsert" }
vim.api.nvim_create_autocmd("FileType", {
    pattern = "lua",
    callback = function()
        vim.opt_local.foldmethod = "expr"
        vim.opt_local.foldexpr = "v:lua.vim.treesitter.foldexpr()"
        vim.opt_local.foldcolumn = "1"
        vim.opt_local.foldtext = ""
    end,
})
vim.cmd.colorscheme("kanagawa-dragon")
