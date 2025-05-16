vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "<leader>ff", "gg=G")
vim.keymap.set("n", "<leader>vs", ":vertical split<CR>")
vim.keymap.set("n", "<leader>hs", ":horizontal split<CR>")
vim.keymap.set('n', '<C-d>', '<C-d>zz', { noremap = true })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { noremap = true })
vim.keymap.set('n', 'n', 'nzz', { noremap = true })
vim.keymap.set('n', 'N', 'Nzz', { noremap = true })
vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set("n", "<leader>gl", ":term lazygit<CR>")

-- Plugin specific

vim.keymap.set('n', '<leader>n', ':Neogen<CR>')
vim.keymap.set('n', '<leader>he', ':Telescope help_tags<CR>')
vim.keymap.set('n', '<leader><leader>', ':Telescope find_files<CR>')
vim.keymap.set('n', '<leader>ge', ':Telescope live_grep<CR>')
vim.keymap.set('n', '<leader>xx', ':Trouble diagnostics toggle<CR>')
