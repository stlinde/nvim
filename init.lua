-- [[ SHLinde's Neovim Configuration]]

pcall(function() vim.loader.enable() end)

-- [[ Setup Mini ]]
-- Clone 'mini.nvim' manually in a way that it gets managed by 'mini.deps'
local path_package = vim.fn.stdpath('data') .. '/site/'
local mini_path = path_package .. 'pack/deps/start/mini.nvim'
if not vim.loop.fs_stat(mini_path) then
  vim.cmd('echo "Installing `mini.nvim`" | redraw')
  local clone_cmd = {
    'git', 'clone', '--filter=blob:none',
    'https://github.com/echasnovski/mini.nvim', mini_path
  }
  vim.fn.system(clone_cmd)
  vim.cmd('packadd mini.nvim | helptags ALL')
  vim.cmd('echo "Installed `mini.nvim`" | redraw')
end

-- Set up 'mini.deps' (customize to your liking)
require('mini.deps').setup({ path = { package = path_package } })

-- Define helpers
local add, now, later = MiniDeps.add, MiniDeps.now, MiniDeps.later
local cmd = function(cmd) return function() vim.cmd(cmd) end end
local load = function(spec, opts)
  return function()
    opts = opts or {}
    local slash = string.find(spec, "/[^/]*$") or 0
    local name = opts.init or string.sub(spec, slash + 1)
    if slash ~= 0 then
      add(vim.tbl_deep_extend("force", { source = spec }, opts.add or {}))
    end
    require(name)
    if opts.setup then require(name).setup(opts.setup) end
  end
end

-- [[ Load Configuration ]]
now(load("shl.config.options"))
now(load("shl.config.keymaps"))

-- [[ Load Plugins ]]
-- Eage Loaded ==============================================================
now(load("miikanissi/modus-themes.nvim", { init = "modus-themes", setup = { variant = "deuteranopia" } } ))
now(cmd("colorscheme modus_vivendi"))

-- Lazy Loaded ==============================================================
later(load("shl.plugins.mini.pick"))
later(load("shl.plugins.mini.files"))

later(load("NeogitOrg/neogit", { add = { depends = { "nvim-lua/plenary.nvim" } }, setup = {} }))


