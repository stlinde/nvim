-- Tabs / Indentation
vim.opt.tabstop = 2 -- How many spaces is a tab?
vim.opt.shiftwidth = 2 -- Sets the number of spaces for each level of indentation.
vim.opt.softtabstop = 2 -- When in insert mode how many spaces is a tab?
vim.opt.expandtab = true -- Convert tabs to spaces.
vim.opt.smartindent = true -- Autoindent.
vim.opt.wrap = false -- We don't want lines to wrap.

-- Search
vim.opt.incsearch = true -- Show matches while typing.
vim.opt.ignorecase = true -- Don't care about which case.
vim.opt.smartcase = true -- When using capitalization manually, use it in search
vim.opt.hlsearch = false -- Don't highlight

-- Appearance
vim.opt.number = true
vim.opt.relativenumber = true -- Use relative line numbers
vim.opt.termguicolors = true -- Allow full color support in terminal

-- vim.opt.colorcolumn = "120" -- Set column for colors column
vim.opt.signcolumn = "yes" -- Keep necessary space available in the with gutter.
vim.opt.cmdheight = 1 -- Height of cmd line
vim.opt.scrolloff = 10 -- When to start moving page

-- Behavior
vim.opt.hidden = true -- Enable changing buffers without saving.
vim.opt.errorbells = false -- Disable error bells.
vim.opt.swapfile = false -- Disable annoying swapfiles.
vim.opt.backup = false -- Disable backups
vim.opt.undodir = vim.fn.expand("~/.vim.undodir") -- Where to store undo history.
vim.opt.undofile = true -- Store the undo history.
vim.opt.backspace = "indent,eol,start" -- Make backspace work on eol, indent, and start of line.
vim.opt.splitright = true -- Split to the right default
vim.opt.splitbelow = true -- Split to button when horizontal split.
vim.opt.autochdir = true -- Don't automatically change directories.
vim.opt.iskeyword:append("-") -- Treat hyphenated words as one.
vim.opt.mouse:append("a") -- Enable mouse support in all modes.
vim.opt.clipboard:append("unnamedplus") -- Merge OS and Nvim Clipboard.
vim.opt.modifiable = true -- Enable editing in the buffer that you are in.
vim.opt.encoding = "UTF-8" -- Set encoding to "UTF-8".
vim.opt.timeout = true -- Enable timeout for which-key.
vim.opt.timeoutlen = 300 -- Set timeoutlen to 300 ms.

-- For Org mode
vim.opt.conceallevel = 2
vim.opt.concealcursor = "nc"

-- Status Line
-- vim.opt.statusline = "%n%f%=c%c %l/%L"
