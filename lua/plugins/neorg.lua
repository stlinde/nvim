return {
  "nvim-neorg/neorg",
  lazy = false,
  run = ":Neorg sync-parsers",
  config = function()
    require("neorg").setup({
      load = {
        ["core.defaults"] = {}, -- Loads default behavior
        ["core.concealer"] = {}, -- Adds pretty icons to your documents
        ["core.dirman"] = { -- Manages Neorg workspaces
          config = {
            workspaces = {
              occam = "~/occam",
            }
          }
        }
      }
    })
  end,
}
