return {
    { "nvim-treesitter/nvim-treesitter",
	dependencies = {
	    { "windwp/nvim-autopairs", opts = {} },
	},
	build = ":TSUpdate",
	config = function ()
	    require('nvim-treesitter.configs').setup({
		auto_install = true,
		highlight = {
		    enable = true,
		    additional_vim_regex_highlighting = false,
		},
		indent = {
		    enable = true
		},
	    })
	end
    }
}
