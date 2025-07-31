vim.pack.add({
  {src='https://github.com/neovim/nvim-lspconfig'},
  {src='https://github.com/nvim-treesitter/nvim-treesitter'},
})


vim.keymap.set('i',
'<C- >',
'<C-X><C-O>',
{ desc = 'Trigger omnifunc completion (insert mode)' })

vim.keymap.set('n',
'gd',
"<C-]>",
{ desc = 'Go to definition' })

vim.keymap.set(
  'n', '<leader>e',
  function ()
    vim.diagnostic.open_float()
  end,
  { desc = 'Show diagnostic [E]rror messages' }
)

vim.keymap.set(
  'n', '<leader>q',
  function ()
    vim.diagnostic.setloclist()
  end,
  { desc = 'Open diagnostic [Q]uickfix list' }
)

require('nvim-treesitter.configs').setup({
  ensure_installed = {
    "c",
    "lua",
    "python",
    "vimdoc",
    "css",
    "html",
    "javascript",
    "latex",
    "norg",
    "scss",
    "svelte",
    "tsx",
    "typst",
    "diff",
    "vue"
  },
  highlight = { enable = true },
  indent = { enable = true }
})
vim.wo.foldmethod = 'expr'
vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
vim.opt.foldlevel = 20

require "config/lsp_lua"
vim.lsp.enable({'ts_ls', 'pyright', 'codebook'})
