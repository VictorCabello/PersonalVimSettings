
-- vim.cmd([[colorscheme unokai]])


-- version fancy
vim.pack.add({
  { src = 'https://github.com/mofiqul/dracula.nvim' },
  { src = 'https://github.com/folke/tokyonight.nvim' },
  { src = 'https://github.com/nvim-lualine/lualine.nvim' },
  { src = 'https://github.com/nvim-tree/nvim-web-devicons' },
})

vim.cmd.colorscheme('dracula')

require('lualine').setup {
  options = {
    theme = 'dracula'
  }
}
