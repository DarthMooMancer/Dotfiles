local colors = {
    white       = '#c8c093',      -- old_white
    black       = '#0d0c0c',      -- dragon_black_0
    tmux   	= '#202020',
    gray        = '#3a3939',      -- dragon_black_4
}

local common_b_c = {
    b = { fg = colors.white, bg = colors.gray },
    c = { fg = colors.white, bg = colors.tmux },
}

local kanagawa_dragon = {
    normal = {
	a = { fg = colors.black, bg = "#737c73" },
	b = common_b_c.b, c = common_b_c.c,
    },

    insert = {
	a = { fg = colors.black, bg = "#949fb5" },
	b = common_b_c.b, c = common_b_c.c,
    },

    visual = {
	a = { fg = colors.black, bg = "#b6927b" },
	b = common_b_c.b, c = common_b_c.c,
    },

    command = {
	a = { fg = colors.black, bg = "#e6c384" },
	b = common_b_c.b, c = common_b_c.c,
    },

    terminal = {
	a = { fg = colors.black, bg = "#87a987" },
	b = common_b_c.b, c = common_b_c.c,
    },

    inactive = {
	a = { fg = colors.white, bg = "#393836" },
	b = common_b_c.b, c = common_b_c.c,
    }
}

return {
    'nvim-lualine/lualine.nvim',
    event = "VeryLazy",
    opts = {
	options = {
	    theme = kanagawa_dragon,
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
}
