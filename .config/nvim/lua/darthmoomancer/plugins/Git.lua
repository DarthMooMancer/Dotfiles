return {
    'lewis6991/gitsigns.nvim',
    event = "BufReadPost",
    dependencies = {
	'tpope/vim-fugitive'
    },
    opts = {
	signs = {
	    add = { text = '+' },
	    delete = { text = '-' },
	},
    }
}
