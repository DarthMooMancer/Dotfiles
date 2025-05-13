return {
    'nvim-telescope/telescope.nvim',
    dependencies = {
	'nvim-lua/plenary.nvim',
	'nvim-tree/nvim-web-devicons'
    },
    keys = {
	{ "<leader>he", "<cmd>Telescope help_tags<CR>", desc = "Telescope Help Pages" },
	{ "<leader><leader>", "<cmd>Telescope find_files<CR>", desc = "Telescope Find Files" },
	{ "<leader>ge", "<cmd>Telescope live_grep<CR>", desc = "Telescope Grep Files" },
    },
}
