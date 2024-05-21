---@type LazySpec
return {
  "stevearc/oil.nvim",
  event = "VeryLazy",
  config = function()
    require("oil").setup()

    vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Show parent directory" })
    vim.keymap.set("n", "<leader>-", require("oil").toggle_float, { desc = "Show parent directory" })
  end,
}
