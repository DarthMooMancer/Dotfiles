local function scheme(a_bg, a_fg)
    return {
	a = { fg = a_fg or "#0d0c0c", bg = a_bg },
	b = { fg = "#c8c093", bg = "#3a3939" },
	c = { fg = "#c8c093", bg = "#202020" },
    }
end

local lualine = {
    normal   = scheme("#737c73"),
    insert   = scheme("#949fb5"),
    visual   = scheme("#b6927b"),
    command  = scheme("#e6c384"),
    terminal = scheme("#87a987"),
    inactive = scheme("#393836", "#c8c093"),
}

return {
    "MunifTanjim/nui.nvim" ,
    "nvim-lua/plenary.nvim" ,
    "nvim-tree/nvim-web-devicons",
    { "rafamadriz/friendly-snippets", event = "InsertEnter" },
    { dir = "~/personal/Projects/Lua/Polydev",
	opts = {
	    globals = {
		project_root = "~/personal/Projects"
	    },
	}
    },
    {
	"folke/lazydev.nvim",
	ft = "lua",
	opts = {
	    library = {
		{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
	    },
	},
    },
    { "folke/trouble.nvim", event = "BufReadPost" },
    { "windwp/nvim-autopairs", event = "BufReadPost" },
    { "neovim/nvim-lspconfig", event = "FileType" },
    { "nvim-telescope/telescope.nvim",
	event = "VeryLazy",
	opts = {
	    defaults = {
		layout_config = { prompt_position = "top" },
		sorting_strategy = "ascending",
	    },
	}
    },
    { "lewis6991/gitsigns.nvim", event = "BufReadPost" },
    { "nvim-lualine/lualine.nvim", event = "VeryLazy",
	opts = {
	    options = {
		theme = lualine,
		component_separators = "",
		section_separators = { left = "", right = "" },
	    },
	    sections = {
		lualine_b = { "branch" },
		lualine_c = { { "filename", path = 3 } },
		lualine_x = { "diff", "diagnostics" },
		lualine_y = { "filetype" },
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
    { "rebelot/kanagawa.nvim",
	opts = {
	    colors = {
		theme = {
		    all = {
			ui = {
			    bg_gutter = "none"
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
    { "saghen/blink.cmp", tag = "v1.3.0", event = "InsertEnter",
	opts = {
	    keymap = {
		["<C-y>"] = {},
		["<M-.>"] = { "select_and_accept" }
	    },
	    signature = { enabled = true },
	    completion = {
		accept = { auto_brackets = { enabled = true }, },
		menu = {
		    border = "rounded",
		    scrollbar = false,
		    auto_show = true,
		    draw = { columns = { { "label", "label_description" , "kind", gap = 1 } } }
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
