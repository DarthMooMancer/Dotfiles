vim.lsp.enable("lua_ls")
vim.lsp.enable("clangd")
vim.lsp.enable("jdtls")

vim.lsp.config("*", {
    capabilities = require("blink.cmp").get_lsp_capabilities()
})

vim.lsp.config("lua_ls", {
    settings = {
	Lua = {
	    diagnostics = {
		globals = { "vim" }
	    }
	}
    }
})
