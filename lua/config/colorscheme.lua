vim.pack.add({
  {src="https://github.com/Mofiqul/dracula.nvim"},
  {src="https://github.com/nvim-tree/nvim-web-devicons"},
  {src="https://github.com/nvim-lualine/lualine.nvim"},
})
local dracula = require("dracula")
dracula.setup({
  transparent_bg = true
})
vim.cmd("colorscheme dracula")
require('lualine').setup()
