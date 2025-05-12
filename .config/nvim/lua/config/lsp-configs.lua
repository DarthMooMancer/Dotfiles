-- vim.lsp.enable({'lua_ls', 'clangd'})

vim.lsp.config('*', {
    capabilities = require('blink.cmp').get_lsp_capabilities()
})

vim.lsp.config('lua_ls', {
    settings = {
	Lua = {
	    diagnostics = {
		globals = { "vim" }
	    }
	}
    }
})
