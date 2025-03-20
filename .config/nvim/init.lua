local mini_path = vim.fn.stdpath('data') .. '/site/pack/deps/start/mini.nvim'
if not vim.loop.fs_stat(mini_path) then vim.fn.system({ 'git', 'clone', '--filter=blob:none', 'https://github.com/echasnovski/mini.nvim', mini_path }) end
require('mini.deps').setup({ path = { package = vim.fn.stdpath('data') .. '/site/' } })
for _, mod in ipairs({ 'icons', 'pairs', 'statusline', 'pick', 'git' }) do require('mini.' .. mod).setup() end

MiniDeps.add({ source = 'nvim-treesitter/nvim-treesitter', depends = { 'rebelot/kanagawa.nvim' }, hooks = { function() vim.cmd('TSUpdate') end } })
MiniDeps.add({ source = 'saghen/blink.cmp', depends = { 'rafamadriz/friendly-snippets' } })
MiniDeps.add({ source = 'neovim/nvim-lspconfig', depends = { 'williamboman/mason.nvim', 'williamboman/mason-lspconfig.nvim', 'DarthMooMancer/Polydev' } })
MiniDeps.add({ source = 'nvim-telescope/telescope.nvim', depends = { 'nvim-lua/plenary.nvim', 'nvim-tree/nvim-web-devicons' } })
MiniDeps.add({ source = 'folke/noice.nvim', depends = { 'MunifTanjim/nui.nvim', 'rcarriga/nvim-notify' } })
-- MiniDeps.add({ source = 'ThePrimeagen/harpoon', checkout = 'harpoon2' })
MiniDeps.add({ source = 'ThePrimeagen/vim-be-good' })

vim.g.mapleader = " "
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "<leader>ff", "gg=G")
vim.keymap.set("n", "<leader>he", ":Telescope help_tags<CR>")
vim.keymap.set("n", "<leader><leader>", ":Telescope find_files<CR>")
vim.keymap.set("n", "<C-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<C-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>")
vim.keymap.set("n", "<leader>vs", ":vertical split<CR>")
vim.keymap.set("n", "<leader>hs", ":horizontal split<CR>")

vim.opt.completeopt = { "menuone", "noselect", "noinsert" }
vim.opt.mouse =  ""
vim.opt.wrap = false
vim.opt.relativenumber = true
vim.opt.scrolloff = 8
vim.opt.shiftwidth = 4

-- local harpoon = require("harpoon").setup()
-- -- REQUIRED
--
-- vim.keymap.set("n", "<leader>ha", function() harpoon:list():add() end)
-- vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
--
-- vim.keymap.set("n", "<C-h>", function() harpoon:list():select(1) end)
-- vim.keymap.set("n", "<C-t>", function() harpoon:list():select(2) end)
-- vim.keymap.set("n", "<C-n>", function() harpoon:list():select(3) end)
-- vim.keymap.set("n", "<C-s>", function() harpoon:list():select(4) end)
--
-- -- Toggle previous & next buffers stored within Harpoon list
-- vim.keymap.set("n", "<C-S-P>", function() harpoon:list():prev() end)
-- vim.keymap.set("n", "<C-S-N>", function() harpoon:list():next() end)

-- local harpoon = require('harpoon')
-- harpoon:setup({})
--
-- -- basic telescope configuration
-- local conf = require("telescope.config").values
-- local function toggle_telescope(harpoon_files)
--     local file_paths = {}
--     for _, item in ipairs(harpoon_files.items) do
--         table.insert(file_paths, item.value)
--     end
--
--     require("telescope.pickers").new({}, {
--         prompt_title = "Harpoon",
--         finder = require("telescope.finders").new_table({
--             results = file_paths,
--         }),
--         previewer = conf.file_previewer({}),
--         sorter = conf.generic_sorter({}),
--     }):find()
-- end
--
-- vim.keymap.set("n", "<C-e>", function() toggle_telescope(harpoon:list()) end,
--     { desc = "Open harpoon window" })

require('Polydev').setup()
require('blink.cmp').setup({ keymap = { preset = 'default', ['<C-y>'] = {}, ['<D-y>'] = { 'select_and_accept' } } })
require('nvim-treesitter.configs').setup({ auto_install = true, highlight = { enable = true }, indent = { enable = true } })
require('mason').setup()
require('mason-lspconfig').setup({
    ensure_installed = { "lua_ls", "jdtls", "clangd" },
    handlers = { function(server_name) require('lspconfig')[server_name].setup { capabilities = require('blink.cmp').get_lsp_capabilities() } end,
	["lua_ls"] = function() require('lspconfig').lua_ls.setup { settings = { Lua = { diagnostics = { globals = { "vim", "MiniDeps" } } } } } end,
    }
})
require("noice").setup({
    lsp = {
	-- override markdown rendering so that **cmp** and other plugins use **Treesitter**
	override = {
	    ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
	    ["vim.lsp.util.stylize_markdown"] = true,
	    ["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
	},
    },
    -- you can enable a preset for easier configuration
    presets = {
	bottom_search = true, -- use a classic bottom cmdline for search
	command_palette = true, -- position the cmdline and popupmenu together
	long_message_to_split = true, -- long messages will be sent to a split
	inc_rename = false, -- enables an input dialog for inc-rename.nvim
	lsp_doc_border = false, -- add a border to hover docs and signature help
    },
})
require('mini.hipatterns').setup({ highlighters = { hex_color = require('mini.hipatterns').gen_highlighter.hex_color({ priority = 100 }) } })
require('kanagawa').setup({ colors = { theme = { all = { ui = { bg_gutter = "none" } } } }, overrides = function(colors) return {
    Pmenu = { fg = colors.theme.ui.shade0, bg = colors.theme.ui.bg_p1 },
    PmenuSel = { fg = "NONE", bg = colors.theme.ui.bg_p2 },
    PmenuSbar = { bg = colors.theme.ui.bg_m1 },
    PmenuThumb = { bg = colors.theme.ui.bg_p2 },
    FloatBorder = { bg = "none" },
    FloatTitle = { bg = "none" },
    NormalDark = { fg = colors.theme.ui.fg_dim, bg = colors.theme.ui.bg_m3 },

    LazyNormal = { bg = colors.theme.ui.bg_m3, fg = colors.theme.ui.fg_dim },
    MasonNormal = { bg = colors.theme.ui.bg_m3, fg = colors.theme.ui.fg_dim },
    TelescopeTitle = { fg = colors.theme.ui.special, bold = true },
    TelescopePromptNormal = { bg = colors.theme.ui.bg_p1 },
    TelescopePromptBorder = { fg = colors.theme.ui.bg_p1, bg = colors.theme.ui.bg_p1 },
    TelescopeResultsNormal = { fg = colors.theme.ui.fg_dim, bg = colors.theme.ui.bg_m1 },
    TelescopeResultsBorder = { fg = colors.theme.ui.bg_m1, bg = colors.theme.ui.bg_m1 },
    TelescopePreviewNormal = { bg = "none" },
    TelescopePreviewBorder = { bg = "none", fg = "#181616" },
} end })
vim.cmd.colorscheme('kanagawa-dragon')
