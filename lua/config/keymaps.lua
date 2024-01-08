-- Directory Navigation
--vim.keymap.set("n", "<leader>E", "<cmd>NvimTreeFocus<cr>", { desc = "Focus Nvim Tree", noremap = true, silent = true })
--vim.keymap.set(
--	"n",
--	"<leader>e",
--	"<cmd>NvimTreeToggle<cr>",
--	{ desc = "Toggle Nvim Tree", noremap = true, silent = true }
--)
vim.keymap.set("n", "<leader>e", "<cmd>25Lexplore<cr>", { desc = "Netrw", noremap = true, silent = true })

-- Pane Navigation
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Pane Left", noremap = true, silent = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Pane Down", noremap = true, silent = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Pane Up", noremap = true, silent = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Pane Right", noremap = true, silent = true })

-- Window Management
vim.keymap.set("n", "<leader>wv", "<cmd>vsplit<cr>", { desc = "Split [V]ertical", noremap = true, silent = true })
vim.keymap.set("n", "<leader>wh", "<cmd>split<cr>", { desc = "Split [H]orizontal", noremap = true, silent = true })

-- Buffer Management
vim.keymap.set("n", "<leader>bp", "<cmd>bprev<cr>", { desc = "[B]uffer [P]revious", noremap = true, silent = true })
vim.keymap.set("n", "<leader>bn", "<cmd>bnext<cr>", { desc = "[B]uffer [N]ext", noremap = true, silent = true })
vim.keymap.set(
	"n",
	"<leader>bb",
	"<cmd>buffers<cr>:buffer<Space>",
	{ desc = "[B]uffers", noremap = true, silent = true }
)
