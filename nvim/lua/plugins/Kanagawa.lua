return {
    -- the colorscheme should be available when starting Neovim
    {
	'rebelot/kanagawa.nvim',
	config = function()
	    vim.cmd([[colorscheme kanagawa-dragon]])
	end,
	opts = {
	    colors = { theme = { all = { ui = { bg_gutter = "none" } } } },
	    overrides = function(colors) return {
		Pmenu = { fg = colors.theme.ui.shade0, bg = colors.theme.ui.bg_p1 },
		PmenuSel = { fg = "NONE", bg = colors.theme.ui.bg_p2 },
		PmenuSbar = { bg = colors.theme.ui.bg_m1 },
		PmenuThumb = { bg = colors.theme.ui.bg_p2 }
	    }
	    end
	}
    }
}
