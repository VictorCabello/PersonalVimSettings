-- vim.cmd([[colorscheme unokai]])
-- Encoding
vim.scriptencoding = 'utf-8'
vim.o.encoding = 'utf-8'
vim.o.fileencoding = 'utf-8'

-- clipboard
vim.o.clipboard = "unnamedplus"

vim.o.conceallevel = 0
vim.o.foldlevel = 99
vim.o.relativenumber = false
vim.o.number = true
vim.o.wrap = true

vim.opt.guicursor = ""
vim.o.termguicolors = true
vim.o.colorcolumn = "80"
vim.o.signcolumn = "yes"
vim.o.hlsearch = false
vim.o.title = true
vim.o.backup = false
vim.o.showcmd = true
vim.o.cmdheight = 1
vim.opt.backupskip = { '/tmp/*', '/private/tmp/*' }
vim.o.inccommand = 'split'
vim.o.winborder = 'rounded'
vim.o.splitright = true
vim.o.splitbelow = true
vim.o.undofile = true
vim.o.undodir = vim.fn.expand('~/.local/share/nvim/undo')

-- Permite scroll horizontal para tablas anchas
vim.opt.sidescrolloff = 0
vim.opt.scrolloff = 0

-- indentation
vim.o.autoindent = true
vim.o.smartindent = true
vim.o.ignorecase = true -- Case insensitive searching UNLESS /C or capital in search
vim.o.smarttab = true
vim.o.breakindent = true
vim.o.tabstop = 4      -- A TAB character looks like 4 spaces
vim.o.expandtab = true -- Pressing the TAB key will insert spaces instead of a TAB character
vim.o.softtabstop = 4  -- Number of spaces inserted instead of a TAB character
vim.o.shiftwidth = 4   -- Number of spaces inserted when indenting

-- Netrw is the default file manager in Neovim and it works very
-- well to navigate files but some most of the times I need a
-- tree to navigate the files an this config help me with that.

vim.g.netrw_banner = 0       -- by default, Netrw shows a banner but I don't like it
vim.g.netrw_liststyle = 3    -- tree view
vim.g.netrw_altv = 1
vim.g.netrw_browse_split = 4 -- open in previous window
vim.g.netrw_preview = 1      -- enable preview of files
vim.g.netrw_winsize = 80     -- set the width of the Netrw window to 20% of the screen

vim.g.mapleader = " "

-- Quick save files
vim.keymap.set('n', '<leader>w', ':w<cr>', { desc = 'save file' })

-- Emmacs moves on command mode
-- vim.keymap.set('c', '<M-b>',  '<S-Left>', {
--   desc = 'Move to the previous word',
-- })
-- vim.keymap.set('c', '<M-f>',  '<S-Right>', {
--   desc = 'Move to the next word',
-- })
-- vim.keymap.set('c', '<C-A>',  '<HOME>', {
--   desc = 'Move to the previous word',
-- })

-- Fast esc
vim.keymap.set('i', 'hh', '<Esc>', { desc = 'Exit terminal mode' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', 'hh', '<C-\\><C-n>', { desc = 'Exit terminal mode' })


vim.diagnostic.config({
  virtual_text = { prefix = '●', spacing = 4 },
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
  float = {
    border = 'rounded',
    source = 'always',
  },
})


