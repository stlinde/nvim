return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.4",
		lazy = false,
		dependencies = {
			"nvim-lua/plenary.nvim",
			{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			local telescope = require("telescope")
			local actions = require("telescope.actions")

			-- Configuration
			telescope.setup({
				defaults = {
					mappings = {
						i = {
							["C-k"] = actions.move_selection_previous, -- move to previous result
							["C-j"] = actions.move_selection_next, -- move to next result
							["C-q"] = actions.send_selected_to_qflist + actions.open_qflist, -- send to quickfix and open
						},
					},
				},
			})

			telescope.load_extension("fzf")

			-- Set keymaps
			vim.keymap.set(
				"n",
				"<leader>fk",
				"<cmd>Telescope keymaps<cr>",
				{ desc = "[F]ind [K]eymaps", noremap = true, silent = true }
			)
			vim.keymap.set(
				"n",
				"<leader>fr",
				"<cmd>Telescope oldfiles<cr>",
				{ desc = "[F]ind [R]ecent File", noremap = true, silent = true }
			)
			vim.keymap.set(
				"n",
				"<leader>fh",
				"<cmd>Telescope help_tags<cr>",
				{ desc = "[F]ind [H]elp", noremap = true, silent = true }
			)
			vim.keymap.set(
				"n",
				"<leader>ff",
				"<cmd>Telescope find_files<cr>",
				{ desc = "[F]ind [F]iles", noremap = true, silent = true }
			)
			vim.keymap.set(
				"n",
				"<leader>fs",
				"<cmd>Telescope live_grep<cr>",
				{ desc = "[F]ind by [G]rep", noremap = true, silent = true }
			)
			vim.keymap.set(
				"n",
				"<leader>fc",
				"<cmd>Telescope grep_string<cr>",
				{ desc = "[F]ind String Under [C]ursor", noremap = true, silent = true }
			)
			vim.keymap.set(
				"n",
				"<leader>fb",
				"<cmd>Telescope buffers<cr>",
				{ desc = "[F]ind [B]uffer", noremap = true, silent = true }
			)
		end,
	},
}
