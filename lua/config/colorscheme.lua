-- version fancy
vim.pack.add({

  { src = 'https://github.com/scottmckendry/cyberdream.nvim'},
  { src = 'https://github.com/mofiqul/dracula.nvim' },
  { src = 'https://github.com/folke/tokyonight.nvim' },
  { src = 'https://github.com/nvim-lualine/lualine.nvim' },
  { src = 'https://github.com/nvim-tree/nvim-web-devicons' },
})


require("cyberdream").setup({
  transparent = true
})
require("dracula").setup({
  transparent = true
})
require("tokyonight").setup({
  transparent = true
})

vim.cmd.colorscheme('tokyonight-night')

require('lualine').setup {
  options = {
    theme = 'auto'
  }
}
