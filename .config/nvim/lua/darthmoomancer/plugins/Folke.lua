return {
    {
	'folke/which-key.nvim',
	opts = {
	    preset = "helix",

	}
    },
    {
	'folke/trouble.nvim',
	keys = {
	    { "<leader>xx", "<cmd>Trouble diagnostics toggle<CR>", desc = "Toggles Trouble Diagnostics" },
	},
	opts = {}
    }
}
