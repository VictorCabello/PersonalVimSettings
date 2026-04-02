vim.pack.add({
  {src='https://github.com/folke/tokyonight.nvim'},
  {src='https://github.com/nvim-lualine/lualine.nvim'},
  {src='https://github.com/nvim-tree/nvim-web-devicons'},
})

require('tokyonight').setup({
  style = 'storm',
  transparent = true,
  terminal_colors = true,
  styles = {
    sidebars = 'transparent',
    floats = 'transparent',
  },
})

vim.cmd.colorscheme('tokyonight-storm')

require('lualine').setup {
  options = {
    theme = 'tokyonight'
  }
}
