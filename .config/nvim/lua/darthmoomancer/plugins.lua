return {
    { dir = '~/personal/Projects/Lua/Polydev',
	opts = {
	    globals = {
		project_root = "~/personal/Projects"
	    }
	}
    },
    { 'MunifTanjim/nui.nvim' },
    { 'nvim-lua/plenary.nvim' },
    { 'folke/trouble.nvim', event = "BufReadPost", opts = {} },
    { 'folke/which-key.nvim', event = "VeryLazy", opts = { preset = "helix" } },
    { "windwp/nvim-autopairs", event = "BufReadPost", opts = {} },
    { 'neovim/nvim-lspconfig', event = "FileType" },
    { 'nvim-telescope/telescope.nvim',
	event = "VeryLazy",
	dependencies ={ 'nvim-tree/nvim-web-devicons' },
	opts = {
	    defaults = {
		layout_config = { prompt_position = "top" },
		sorting_strategy = "ascending",
	    },
	}
    },
    { 'lewis6991/gitsigns.nvim', event = "BufReadPost", opts = {} },
    { 'nvim-lualine/lualine.nvim', event = "VeryLazy",
	opts = {
	    options = {
		theme = require("darthmoomancer.extras.kanagawa"),
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
	event = "FileType",
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
	dependencies = { 'rafamadriz/friendly-snippets', lazy = true },
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
    }
}
