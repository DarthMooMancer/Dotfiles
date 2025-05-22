return {
    { "nvim-lualine/lualine.nvim", event = "VeryLazy",
	opts = {
	    options = {
		theme = require("darthmoomancer.extras.kanagawa").lualine,
		component_separators = "",
		section_separators = { left = "", right = "" },
	    },
	    sections = {
		lualine_b = { "branch" },
		lualine_c = { "filename" },
		lualine_x = { "diff", "diagnostics" },
		lualine_y = { "filetype" },
	    },
	}
    },
    { "nvim-tree/nvim-web-devicons", lazy = true },
    { "MunifTanjim/nui.nvim", lazy = true },
    { "windwp/nvim-autopairs", event = "BufReadPost", opts = {} },
    { "neovim/nvim-lspconfig", event = "FileType" },
    { "lewis6991/gitsigns.nvim", event = "BufReadPost", opts = {} },
    { "neanias/everforest-nvim",
	config = function()
	    require("everforest").setup({
		on_highlights = function(hl)
		    hl.Normal = {bg = "#181616"}
		end,
	    })
	end
    },
    { "ibhagwan/fzf-lua",
	opts = {
	    fzf_opts = {
		["--pointer"] = " ",
	    }
	}
    },
    { dir = "~/personal/Projects/Lua/Polydev", event = "BufReadPost",
	opts = {
	    globals = {
		project_root = "~/personal/Projects"
	    },
	}
    },
    { dir = "~/.local/share/nvim/lazy/lazydev.nvim", ft = "lua",
	opts = {
	    library = {
		{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
	    },
	},
    },
    { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate", event = "FileType",
	config = function ()
	    require("nvim-treesitter.configs").setup {
		highlight = { enable = true,
		    additional_vim_regex_highlighting = false,
		},
		indent = { enable = true }
	    }
	end
    },
    { "saghen/blink.cmp", tag = "v1.3.0", event = "InsertEnter",
	dependencies = { "rafamadriz/friendly-snippets" },
	opts = {
	    keymap = {
		["<C-y>"] = {},
		["<M-.>"] = { "select_and_accept" }
	    },
	    signature = { enabled = true },

	    completion = {
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
