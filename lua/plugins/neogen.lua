-- Customize Neogen

---@type LazySpec
return {
  "danymat/neogen",
  event = "VeryLazy",
  config = function()
    require("neogen").setup {
      enabled = true,
      languages = {
        python = {
          template = {
            annotation_convention = "numpydoc",
          },
        },
      },
    }

    vim.keymap.set("n", "<leader>lg", "<CMD>Neogen<CR>", { noremap = true, silent = true, desc = "Generate docstring" })
  end,
}
