return {
    'neovim/nvim-lspconfig',
    dependencies = {
	'williamboman/mason.nvim',
	'williamboman/mason-lspconfig.nvim',
	'DarthMooMancer/Polydev'

    },
    opts = {
	ensure_installed = { "lua_ls", "jdtls", "clangd" },
	handlers = { function(server_name) require('lspconfig')[server_name].setup { capabilities = require('blink.cmp').get_lsp_capabilities() } end,
	    ["lua_ls"] = function() require('lspconfig').lua_ls.setup { settings = { Lua = { diagnostics = { globals = { "vim", "MiniDeps" } } } } } end,
	}
    },
}
