-- version fancy
vim.pack.add({

  { src = 'https://github.com/scottmckendry/cyberdream.nvim'},
  { src = 'https://github.com/mofiqul/dracula.nvim' },
  { src = 'https://github.com/folke/tokyonight.nvim' },
  { src = 'https://github.com/nvim-lualine/lualine.nvim' },
  { src = 'https://github.com/nvim-tree/nvim-web-devicons' },
})


local configured = {}
-- permite correr setup del tema solo si se cambia
vim.api.nvim_create_autocmd('ColorSchemePre', {
  callback = function(ev)
    local name = ev.match:match('^([^-]+)')
    if not configured[name] and vim.tbl_contains({ 'cyberdream', 'dracula', 'tokyonight' }, name) then
      require(name).setup({ transparent = true })
      configured[name] = true
    end
  end,
})

vim.cmd.colorscheme('tokyonight-night')
require('lualine').setup({ options = { theme = 'auto' } })
