return {
    'saghen/blink.cmp',
    dependencies = {
	'rafamadriz/friendly-snippets'
    },
    tag = 'v1.2.0',
    opts = {
	keymap = {
	    ['<C-y>'] = {},
	    ['<M-.>'] = { 'select_and_accept' }
	},
	appearance = {
	    nerd_font_variant = 'mono'
	},
    },
    opts_extend = { "sources.default" }
}
