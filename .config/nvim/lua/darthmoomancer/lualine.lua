local M = {}

local function scheme(a_bg, a_fg)
    return {
	a = { fg = a_fg or "#0d0c0c", bg = a_bg },
	b = { fg = "#c8c093", bg = "#3a3939" },
	c = { fg = "#c8c093", bg = "#202020" },
    }
end

M.lualine = {
    normal   = scheme("#859289"),
    insert   = scheme("#7fbbb3"),
    visual   = scheme("#e69875"),
    command  = scheme("#dbbc7f"),
    terminal = scheme("#83c092"),
    inactive = scheme("#1e2326", "#d3c6aa"),
}

return M
