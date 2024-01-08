return {
	{
		"nvim-neorg/neorg",
		build = ":Neorg sync-parsers",
		ft = "norg",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-neorg/neorg-telescope",
		},
		lazy = false,
		config = function()
			require("neorg").setup({
				load = {
					["core.defaults"] = {}, -- Loads default behaviour
					["core.concealer"] = {}, -- Adds pretty icons to your documents
					["core.keybinds"] = {}, -- Adds default keybindings
					["core.summary"] = {}, -- Adds index generation support
					["core.completion"] = {
						config = {
							engine = "nvim-cmp",
						},
					}, -- Enables support for completion plugins
					["core.journal"] = {}, -- Enables support for the journal module
					["core.esupports.metagen"] = {
						config = {
							type = "auto",
						},
					},
					["core.dirman"] = { -- Manages Neorg workspaces
						config = {
							workspaces = {
								notes = "~/notes",
							},
							default_workspace = "notes",
						},
					},
				},
			})

			local ns = require("util.naming-scheme")
			-- Keymaps
			vim.keymap.set("n", "<leader>ni", "<cmd>cd ~/notes/<cr><cmd>Neorg index<cr>", {
				desc = "[I]ndex",
				noremap = true,
				silent = true,
			})
			vim.keymap.set("n", "<leader>nJ", "<cmd>Neorg journal<cr>", {
				desc = "[J]ournal",
				noremap = true,
				silent = true,
			})
			vim.keymap.set("n", "<leader>nw", "<cmd>Neorg workspace<cr>", {
				desc = "Change [W]orkspace",
				noremap = true,
				silent = true,
			})
			vim.keymap.set("n", "<leader>nn", ns.file_with_date("~/notes/"), {
				desc = "[N]ew Note",
				noremap = true,
				silent = true,
			})
			vim.keymap.set("n", "<leader>nj", "<cmd>e ~/notes/journal.norg<cr><cmd>$read !date<cr>", {
				desc = "New [J]ournal Entry",
				noremap = true,
				silent = true,
			})
		end,
	},
}
