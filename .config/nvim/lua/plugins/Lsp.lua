return {
    {
	'neovim/nvim-lspconfig',
	dependencies = {
	    { 'williamboman/mason.nvim', opts = {} },
	    {
		'williamboman/mason-lspconfig.nvim',
		opts = {
		    ensure_installed = {
			"lua_ls",
			"pyright",
			"clangd",
			"jdtls",
		    },
		    handlers = {
			function(server_name)
			    require('lspconfig')[server_name].setup {
				capabilities = require('blink.cmp').get_lsp_capabilities()
			    }
			end,
			["lua_ls"] = function()
			    require('lspconfig').lua_ls.setup {
				settings = {
				    Lua = {
					diagnostics = {
					    globals = { "vim" }
					}
				    }
				}
			    }
			end,
			["pyright"] = function()
			    require('lspconfig').pyright.setup {
				python = {
				    venvPath = { "./venv/bin/python" }
				}
			    }
			end,
		    }
		}
	    },
	},
    }
}
