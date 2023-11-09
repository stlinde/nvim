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
		end,
	},
}
