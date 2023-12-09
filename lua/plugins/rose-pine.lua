return {
  "rose-pine/neovim",
  name = "rose-pine",
  lazy = false,
  config = function()
    require("rose-pine").setup({
      --- @usage 'auto'|'main'|'moon'|'dawn'
      variant = "main",
      --- @usage 'main'|'moon'|'dawn'
      dark_variant = "main",
      bold_vert_split = false,
      dim_nc_background = false,
      disable_background = true,
      disable_float_background = false,
      disable_italics = false,


      -- Change specific vim highlight groups
      -- https://github.com/rose-pine/neovim/wiki/Recipes
      highlight_groups = {
        ColorColumn = { bg = "rose" },

        -- Blend colours against the "base" background
        CursorLine = { bg = "foam", blend = 10 },
        StatusLine = { fg = "love", bg = "love", blend = 10 },

        -- By default each group adds to the existing config.
        -- If you only want to set what is written in this config exactly,
        -- you can set the inherit option:
        Search = { bg = "gold", inherit = false },

        -- Borderless telescope
        TelescopeBorder = { fg = "overlay", bg = "overlay" },
        TelescopeNormal = { fg = "subtle", bg = "overlay" },
        TelescopeSelection = { fg = "text", bg = "highlight_med" },
        TelescopeSelectionCaret = { fg = "love", bg = "highlight_med" },
        TelescopeMultiSelection = { fg = "text", bg = "highlight_high" },

        TelescopeTitle = { fg = "base", bg = "love" },
        TelescopePromptTitle = { fg = "base", bg = "pine" },
        TelescopePreviewTitle = { fg = "base", bg = "iris" },

        TelescopePromptNormal = { fg = "text", bg = "surface" },
        TelescopePromptBorder = { fg = "surface", bg = "surface" },
      },
    })

    -- Set colorscheme after options
    vim.cmd("colorscheme rose-pine")
  end,
}
