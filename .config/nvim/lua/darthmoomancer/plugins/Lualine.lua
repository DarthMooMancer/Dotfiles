local colors = {
    white       = '#c8c093',      -- old_white
    gray        = '#3a3939',      -- dragon_black_4
    dark_gray   = '#1D1C19',      -- dragon_black_2
    light_purple= '#b6927b',      -- dragon_orange
    dark_purple = '#393836',      -- dragon_black_5
    cyan        = '#949fb5',      -- dragon_teal
    green       = '#737c73',      -- dragon_ash
    orange      = '#c4b28a',      -- dragon_yellow
    red         = '#c4746e',      -- dragon_red
    pink        = '#b6927b',      -- dragon_orange (same as light_purple)
    yellow      = '#c4b28a',      -- dragon_yellow (same as orange)
    blue        = '#8ba4b0',      -- dragon_blue_2
    black       = '#0d0c0c',      -- dragon_black_0
    terminal    = '#87a987',      -- dragon_green
    command     = '#e6c384',      -- carp_yellow
    select      = '#957fb8',      -- dragon_violet
    replace     = '#d7474b',      -- lotus_red_2
    tmux   = '#202020',

}

local bubbles_theme = {
    normal = {
	a = { fg = colors.black, bg = colors.green },        -- black on green
	b = { fg = colors.white, bg = colors.gray },
	c = { fg = colors.white, bg = colors.tmux },
    },

    insert = {
	a = { fg = colors.black, bg = colors.cyan },         -- black on cyan
	b = { fg = colors.white, bg = colors.gray },
	c = { fg = colors.white, bg = colors.tmux },
    },

    visual = {
	a = { fg = colors.black, bg = colors.pink },       -- black on light_purple
	b = { fg = colors.white, bg = colors.gray },         -- white on gray
	c = { fg = colors.white, bg = colors.tmux },
    },

    select = {
	a = { fg = colors.black, bg = colors.select },       -- black on dragon_violet
	b = { fg = colors.white, bg = colors.gray },
	c = { fg = colors.white, bg = colors.tmux },
    },

    replace = {
	a = { fg = colors.black, bg = colors.replace },      -- black on lotus_red_2
	b = { fg = colors.white, bg = colors.gray },
	c = { fg = colors.white, bg = colors.tmux },
    },

    command = {
	a = { fg = colors.black, bg = colors.command },      -- black on carp_yellow
	b = { fg = colors.white, bg = colors.gray },
	c = { fg = colors.white, bg = colors.tmux },
    },

    terminal = {
	a = { fg = colors.black, bg = colors.terminal },     -- black on dragon_green
	b = { fg = colors.white, bg = colors.gray },
	c = { fg = colors.white, bg = colors.tmux },
    },

    inactive = {
	a = { fg = colors.white, bg = colors.dark_purple },        -- white on black
	b = { fg = colors.white, bg = colors.black },
	c = { fg = colors.white, bg = colors.tmux },
    }
}

return {
    'nvim-lualine/lualine.nvim',
    opts = {
	options = {
	    theme = bubbles_theme,
	    component_separators = '',
	    section_separators = { left = '', right = '' },
	},
	sections = {
	    lualine_a = { { 'mode', separator = { left = '' }, right_padding = 5 } },
	    lualine_b = { 'branch' },
	    lualine_c = {
		{
		    'filename',
		    path = 3,
		},
	    },
	    lualine_x = { 'diff', 'diagnostics' },
	    lualine_y = { 'filetype' },
	    lualine_z = {
		{ 'location', separator = { right = '' }, left_padding = 2 },
	    },
	},
	-- inactive_sections = {
	--     lualine_a = { 'filename' },
	--     lualine_b = {},
	--     lualine_c = {},
	--     lualine_x = {},
	--     lualine_y = {},
	--     lualine_z = { 'location' },
	-- },
    }
}
