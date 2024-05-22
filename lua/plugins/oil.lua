---@type LazySpec
return {
  "stevearc/oil.nvim",
  event = "VeryLazy",
  config = function()
    local HEIGHT_RATIO = 0.8 -- You can change this
    local WIDTH_RATIO = 0.5 -- You can change this too

    require("oil").setup {
      float = {
        border = "single",
        win_options = {
          winblend = 10,
        },
        override = function(conf)
          -- Setup for centered floating window
          local screen_w = vim.opt.columns:get()
          local screen_h = vim.opt.lines:get() - vim.opt.cmdheight:get()
          local window_w = screen_w * WIDTH_RATIO
          local window_h = screen_h * HEIGHT_RATIO
          local window_w_int = math.floor(window_w)
          local window_h_int = math.floor(window_h)
          local center_x = (screen_w - window_w) / 2
          local center_y = ((vim.opt.lines:get() - window_h) / 2) - vim.opt.cmdheight:get()

          conf.relative = "editor"
          conf.row = center_y
          conf.col = center_x
          conf.width = window_w_int
          conf.height = window_h_int
          return conf
        end,
      },
    }

    vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Show parent directory" })
    vim.keymap.set("n", "<leader>-", require("oil").toggle_float, { desc = "Show parent directory" })
  end,
}
