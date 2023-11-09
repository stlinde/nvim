return {
	"ThePrimeagen/git-worktree.nvim",
	lazy = false,
	config = function()
		local git_worktree = require("git-worktree")
		git_worktree.setup({})

		require("telescope").load_extension("git_worktree")

		vim.keymap.set("n", "<leader>gwc", require("telescope").extensions.git_worktree.create_git_worktree, {
			desc = "[G]it [W]orktree [C]reate",
		})
	end,
}
