return {
    'lewis6991/gitsigns.nvim',
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
