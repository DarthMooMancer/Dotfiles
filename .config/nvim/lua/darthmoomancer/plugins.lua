local kanagawa = require("darthmoomancer.extras.kanagawa")
return {
    { dir = '~/personal/Polydev', opts = {} },
    { 'folke/trouble.nvim', opts = {} },
    { 'folke/which-key.nvim', opts = { preset = "helix" } },
    { "windwp/nvim-autopairs", opts = {} },
    { 'neovim/nvim-lspconfig', event = { "BufReadPre" } },
    { 'nvim-telescope/telescope.nvim',
	opts = {
	    defaults = {
		layout_config = { prompt_position = "top" },
		sorting_strategy = "ascending",
	    },
	}
    },
    { 'nvim-tree/nvim-web-devicons' },
    { 'tpope/vim-fugitive' },
    { 'MunifTanjim/nui.nvim' },
    { 'nvim-lua/plenary.nvim' },
    { 'lewis6991/gitsigns.nvim', event = "BufReadPost", opts = {} },
    { 'nvim-lualine/lualine.nvim', event = "VeryLazy",
	opts = {
	    options = {
		theme = kanagawa,
		component_separators = '',
		section_separators = { left = '', right = '' },
	    },
	    sections = {
		lualine_b = { 'branch' },
		lualine_c = { { 'filename', path = 3 } },
		lualine_x = { 'diff', 'diagnostics' },
		lualine_y = { 'filetype' },
	    },
	}
    },
    { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate",
	config = function ()
	    require("nvim-treesitter.configs").setup {
		highlight = { enable = true,
		    additional_vim_regex_highlighting = false,
		},
		indent = { enable = true }
	    }
	end
    }
}
