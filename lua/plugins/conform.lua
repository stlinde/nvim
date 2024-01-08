return {
	"stevearc/conform.nvim",
	event = {
		"BufReadPre", -- Run on open existing file
		"BufNewFile", -- Run on open new file
	},
	config = function()
		local conform = require("conform")

		conform.setup({
			formatters_by_ft = {
				lua = {
					"stylua",
				},
				python = {
					"isort",
					"black",
				},
        c = {
          "clang_format",
        },
			},
			format_on_save = {
				lsp_fallback = true,
				async = false,
				timeout_ms = 500,
			},
		})

		vim.keymap.set({ "n", "v" }, "<leader>cf", function()
			conform.format({
				lsp_fallback = true,
				async = false,
				timeout_ms = 500,
			})
		end, { desc = "[C]ode [F]ormat" })
	end,
}
