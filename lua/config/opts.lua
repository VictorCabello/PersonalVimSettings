-- Encoding
vim.scriptencoding = 'utf-8'
vim.o.encoding = 'utf-8'
vim.o.fileencoding = 'utf-8'

-- Clipboard
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

-- Scroll
vim.opt.sidescrolloff = 0
vim.opt.scrolloff = 0

-- Indentation
vim.o.autoindent = true
vim.o.smartindent = true
vim.o.ignorecase = true
vim.o.smarttab = true
vim.o.breakindent = true
vim.o.tabstop = 4
vim.o.expandtab = true
vim.o.softtabstop = 4
vim.o.shiftwidth = 4

vim.g.mapleader = " "

-- Quick save files
vim.keymap.set('n', '<leader>w', ':w<cr>', { desc = 'Save file' })

-- Fast esc en modo inserción
vim.keymap.set('i', 'hh', '<Esc>', { desc = 'Exit insert mode' })

-- Escape en terminal sin romper fzf
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

vim.api.nvim_create_autocmd({ 'TextYankPost', 'TextPutPost' }, {
  desc = 'Resaltar texto al copiar o pegar',
  callback = function()
    vim.hl.hl_op({ timeout = 150 })
  end,
})
