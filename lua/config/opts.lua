
vim.cmd[[ color unokai ]]
vim.api.nvim_set_hl(0, "Normal", { bg = "None" })
vim.api.nvim_set_hl(0, "NormalNC", { bg = "None" })
vim.api.nvim_set_hl(0, "EndBuffer", { bg = "None" })

-- Encoding
vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'

-- clipboard
vim.o.clipboard = "unnamedplus"

vim.opt.conceallevel = 2
vim.opt.foldlevel = 99
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.wrap = true -- No Wrap lines

vim.opt.termguicolors = true
vim.opt.colorcolumn = "100"
vim.opt.signcolumn = "yes"
vim.opt.hlsearch = true
vim.opt.title = true
vim.opt.backup = false
vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.laststatus = 2
vim.opt.backupskip = { '/tmp/*', '/private/tmp/*' }
vim.opt.inccommand = 'split'
vim.opt.scrolloff = 2

-- indentation
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.expandtab = true
vim.opt.ignorecase = true -- Case insensitive searching UNLESS /C or capital in search
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.o.tabstop = 4 -- A TAB character looks like 4 spaces
vim.o.expandtab = true -- Pressing the TAB key will insert spaces instead of a TAB character
vim.o.softtabstop = 4 -- Number of spaces inserted instead of a TAB character
vim.o.shiftwidth = 4 -- Number of spaces inserted when indenting
vim.g.mapleader = " "
