if true then return {} end
return {
  "blazkowolf/gruber-darker.nvim",
  priority = 1000,
  lazy = false,
  config = function()
    require("gruber-darker").setup {
      bold = true,
      invert = {
        signs = false,
        tabline = false,
        visual = false,
      },
      italic = {
        strings = true,
        comments = true,
        operators = false,
        folds = true,
      },
      undercurl = true,
      underline = true,
    }

    vim.cmd.colorscheme "gruber-darker"
  end,
}
