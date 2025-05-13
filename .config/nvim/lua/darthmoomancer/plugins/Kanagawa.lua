return {
    {
	'rebelot/kanagawa.nvim',
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
		PmenuSbar   = { bg = colors.theme.ui.bg_m1 },
		PmenuThumb  = { bg = colors.theme.ui.bg_p2 },
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
}
