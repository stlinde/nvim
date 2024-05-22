-- Configure Neorg
return {
  "nvim-neorg/neorg",
  version = "^8",
  dependencies = {
    "vhyrro/luarocks.nvim",
    priority = 1000,
    config = true,
  },
  config = function()
    require("neorg").setup {
      load = {
        ["core.defaults"] = {},
        ["core.concealer"] = {},
        ["core.keybinds"] = {},
        ["core.completion"] = {
          config = {
            engine = "nvim-cmp",
          },
        },
        ["core.journal"] = {},
        ["core.dirman"] = {
          config = {
            workspaces = {
              personal = "$PNOTES",
              work = "$WNOTES",
              default = "$WNOTES",
            },
          },
        },
      },
    }

    vim.keymap.set(
      "n",
      "<leader>nn",
      "<CMD>Neorg workspace work<CR>",
      { noremap = true, silent = true, desc = "Work notes" }
    )
    vim.keymap.set(
      "n",
      "<leader>nN",
      "<CMD>Neorg workspace personal<CR>",
      { noremap = true, silent = true, desc = "Personal notes" }
    )
  end,
}
