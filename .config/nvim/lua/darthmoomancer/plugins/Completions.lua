return {
    'saghen/blink.cmp',
    dependencies = {
	'rafamadriz/friendly-snippets',
    },
    tag = 'v1.2.0',
    event = "InsertEnter",
    opts = {
	keymap = {
	    ['<C-y>'] = {},
	    ['<M-.>'] = { 'select_and_accept' }
	},
	appearance = {
	    use_nvim_cmp_as_default = true,
	    nerd_font_variant = 'mono',
	},

	completion = {
	    accept = { auto_brackets = { enabled = true }, },
	    menu = {
		border = "rounded",
		scrollbar = false,
		auto_show = true,

		draw = {
		    columns = {
			{ "kind_icon" },
			{ "label", "label_description", "kind", gap = 1 },
		    },
		}
	    },
	    documentation = {
		auto_show = true,
		auto_show_delay_ms = 500,
		window = {
		    border = "rounded",
		    scrollbar = false,
		},
	    },
	},
	sources = {
	    default = { 'snippets', 'lsp', 'path', 'buffer' },
	},
	signature = {
	    enabled = true,
	}
    },
}
