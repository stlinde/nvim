return {
	{
		"NeogitOrg/neogit",
		lazy = false,
		dependencies = {
			"nvim-lua/plenary.nvim", -- required
			"nvim-telescope/telescope.nvim", -- optional
			"sindrets/diffview.nvim", -- optional
			"ibhagwan/fzf-lua", -- optional
		},
		config = function()
			local neogit = require("neogit")
			neogit.setup({})

			vim.keymap.set("n", "<leader>gg", "<cmd>Neogit<cr>", {
				desc = "Neo[g]it",
				noremap = true,
				silent = true,
			})
			vim.keymap.set("n", "<leader>gc", "<cmd>Neogit commit<cr>", {
				desc = "[G]it [C]ommit",
				noremap = true,
				silent = true,
			})
		end,
	},
}
