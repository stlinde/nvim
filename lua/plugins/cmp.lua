return { -- override nvim-cmp plugin
  "hrsh7th/nvim-cmp",
  -- override the options table that is used in the `require("cmp").setup()` call
  opts = function(_, opts)
    -- Setup cmp
    opts.completion = { completeopt = "menu,menuone,noinsert" }

    -- opts parameter is the default options table
    -- the function is lazy loaded so cmp is able to be required
    local cmp = require "cmp"
    -- modify the mapping part of the table
    opts.mapping["<C-n>"] = cmp.mapping.select_next_item { behavior = cmp.SelectBehavior.Insert }
    opts.mapping["<C-p>"] = cmp.mapping.select_prev_item { behavior = cmp.SelectBehavior.Insert }
    opts.mapping["<CR>"] = cmp.config.disable
    opts.mapping["<C-y>"] = cmp.mapping(
      cmp.mapping.confirm {
        behavior = cmp.ConfirmBehavior.Insert,
        select = true,
      },
      { "i", "c" }
    )
  end,
}
