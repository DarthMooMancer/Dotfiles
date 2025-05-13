return {
    {
	'rebelot/kanagawa.nvim',
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
		Pmenu = { fg = colors.theme.ui.shade0, bg = colors.theme.ui.bg_p1 },
		PmenuSel = { fg = "NONE", bg = colors.theme.ui.bg_p2 },
		PmenuSbar = { bg = colors.theme.ui.bg_m1 },
		PmenuThumb = { bg = colors.theme.ui.bg_p2 },
		FloatBorder = { bg = "none" },
		FloatTitle = { bg = "none" },
		NormalDark = { fg = colors.theme.ui.fg_dim, bg = colors.theme.ui.bg_m3 },
		LazyNormal = { bg = colors.theme.ui.bg_m3, fg = colors.theme.ui.fg_dim },
		MasonNormal = { bg = colors.theme.ui.bg_m3, fg = colors.theme.ui.fg_dim },
		TelescopeTitle = { fg = colors.theme.ui.special, bold = true },
		TelescopePromptNormal = { bg = colors.theme.ui.bg_p1 },
		TelescopePromptBorder = { fg = colors.theme.ui.bg_p1, bg = colors.theme.ui.bg_p1 },
		TelescopeResultsNormal = { fg = colors.theme.ui.fg_dim, bg = colors.theme.ui.bg_m1 },
		TelescopeResultsBorder = { fg = colors.theme.ui.bg_m1, bg = colors.theme.ui.bg_m1 },
		TelescopePreviewNormal = { bg = "none" },
		TelescopePreviewBorder = { bg = "none", fg = colors.theme.ui.bg_dim},
	    } end,
	},
    },
}
