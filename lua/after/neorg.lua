-- Neorg
local wk = require("which-key")
local ns = require("util.naming-scheme")

wk.register({
	["<leader>n"] = {
		name = "[N]eorg",
		-- FIXME: Not working - searches CWD
		f = { "<cmd>Telescope find_files search_dir=~/Documents/neorg/<CR>", "[F]ind File" },

		-- FIXME: Not working - searches CWD
		g = { "<cmd>Telescope live_grep search_dir=~/Documents/neorg/<CR>", "[G]rep" },

		-- Inbuilt
		i = { "<cmd>Neorg index<cr>", "[I]ndex" },
		w = { "<cmd>Neorg workspace<CR>", "Change [W]orkspace" },
		j = { "<cmd>Neorg journal today<CR>", "[J]ournal Today" },
		J = { "<cmd>Neorg journal<CR>", "[J]ournal" },
		n = { ns.file_with_date("~/Mnemosyne/"), "[N]ew Note" },
	},
})
