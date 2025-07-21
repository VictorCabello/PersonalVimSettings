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
