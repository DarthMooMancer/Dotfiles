return {
    'saghen/blink.cmp',
    dependencies = {
	'rafamadriz/friendly-snippets'
    },
    tag = 'v0.14.2',
    opts = {
	keymap = {
	    ['<C-y>'] = {},
	    ['<D-y>'] = { 'select_and_accept' }
	},

	appearance = {
	    nerd_font_variant = 'mono'
	},
    },
    opts_extend = { "sources.default" }
}
