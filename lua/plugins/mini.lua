return {
	{
		"echasnovski/mini.nvim",
		lazy = false,
		version = false,
		config = function()
			require("mini.comment").setup({})
			require("mini.starter").setup({})
		end,
	},
}
