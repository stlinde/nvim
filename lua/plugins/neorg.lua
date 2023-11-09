return {
	{
		"nvim-neorg/neorg",
		build = ":Neorg sync-parsers",
		ft = "norg",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-neorg/neorg-telescope",
			{ "pysan3/neorg-templates", dependencies = { "L3MON4D3/LuaSnip" } },
		},
		lazy = false,
		config = function()
			require("neorg").setup({
				load = {
					["core.defaults"] = {}, -- Loads default behaviour
					["core.concealer"] = {}, -- Adds pretty icons to your documents
					["core.keybinds"] = {}, -- Adds default keybindings
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
								mnemosyne = "~/Mnemosyne",
							},
							default_workspace = "mnemosyne",
						},
					},
					["external.templates"] = {},
					["core.integrations.telescope"] = {},
				},
			})

			local ns = require("util.naming-scheme")
			-- Keymaps
			vim.keymap.set("n", "<leader>ni", "<cmd>Neorg index<cr>", {
				desc = "[I]ndex",
				noremap = true,
				silent = true,
			})
			vim.keymap.set("n", "<leader>nj", "<cmd>Neorg journal today<cr>", {
				desc = "[J]ournal Today",
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
			vim.keymap.set("n", "<leader>nn", ns.file_with_date("~/Mnemosyne/"), {
				desc = "[N]ew Note",
				noremap = true,
				silent = true,
			})
		end,
	},
}
