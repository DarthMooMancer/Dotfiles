local kanagawa = require("darthmoomancer.extras.kanagawa")
return {
    { dir = '~/personal/Polydev', opts = {} },
    { 'MunifTanjim/nui.nvim' },
    { 'nvim-lua/plenary.nvim' },
    { 'folke/trouble.nvim', opts = {} },
    { 'folke/which-key.nvim', opts = { preset = "helix" } },
    { "windwp/nvim-autopairs", opts = {} },
    { 'rafamadriz/friendly-snippets' },
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
    },
    { 'rebelot/kanagawa.nvim',
	opts = {
	    colors = {
		theme = {
		    all = {
			ui = {
			    bg_gutter = 'none'
			}
		    }
		}
	    },
	    overrides = function(colors) return {
		Pmenu       = { fg = colors.theme.ui.shade0, bg = colors.theme.ui.bg_p1 },
		PmenuSel    = { fg = "NONE", bg = colors.theme.ui.bg_p2 },
		LazyNormal  = { fg = colors.theme.ui.fg_dim },

		TelescopeTitle         = { fg = colors.theme.ui.special, bold = true },
		TelescopePromptBorder  = { fg = colors.theme.syn.fun },
		TelescopeResultsNormal = { fg = colors.theme.ui.fg_dim },
		TelescopeResultsBorder = { fg = colors.theme.syn.fun },
		TelescopePreviewBorder = { fg = colors.theme.syn.fun },

		BlinkCmpMenuBorder   = { link = "Pmenu" },
		BlinkCmpDoc 	     = { link = "Pmenu" },
		BlinkCmpDocBorder    = { link = "Pmenu" },
		BlinkCmpDocSeparator = { link = "Pmenu" },
	    } end,
	},
    },
    { 'saghen/blink.cmp', tag = 'v1.3.0', event = "InsertEnter",
	opts = {
	    keymap = {
		['<C-y>'] = {},
		['<M-.>'] = { 'select_and_accept' } -- Use on Macos
		-- ['<C-.>'] = { 'select_and_accept' }, -- Use on Linux
	    },

	    signature = { enabled = true },
	    completion = {
		accept = { auto_brackets = { enabled = true }, },
		menu = {
		    border = "rounded",
		    scrollbar = false,
		    auto_show = true,
		    draw = { columns = { { "label", "label_description" , "kind" } } }
		},
		documentation = {
		    auto_show = true,
		    auto_show_delay_ms = 500,
		    window = {
			border = "rounded",
			scrollbar = false,
		    }
		}
	    }
	}
    },
	--    {
	-- "folke/lazydev.nvim",
	-- ft = "lua", -- only load on lua files
	-- opts = {
	--     library = {
	-- 	{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
	--     },
	-- },
	--    },
}
