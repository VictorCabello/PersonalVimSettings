require('config.lsp_python')
require('config.lsp_lua')

vim.keymap.set(
  'n', '<leader>e',
  vim.diagnostic.open_float,
  { desc = 'Show diagnostic [E]rror messages' }
)

vim.keymap.set(
  'n', '<leader>q',
  vim.diagnostic.setloclist,
  { desc = 'Open diagnostic [Q]uickfix list' }
)

vim.keymap.set(
  'n', 'gd', '<C-]>',
  { desc = 'Go to [D]efinition' }
)
