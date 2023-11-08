return {
  {
    "echasnovski/mini.nvim",
    version = false,
    config = function()
      require("mini.comment").setup({})
      require("mini.starter").setup({})
    end
  }
}
