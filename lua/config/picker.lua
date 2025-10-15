vim.pack.add({
  {src='https://github.com/folke/snacks.nvim'},
})

local snacks = require('snacks')

snacks.setup({
  explorer = { enabled = true },
  image = { enabled = true },
  indent = { enabled = true },
  scroll = { enabled = true },
  picker = { enabled = true },
  statuscolumn = { enabled = true },
  input = { enabled = true },
  scope = { enabled = true },
  notifier = { enabled = true },
  words = { enabled = true },
})


vim.keymap.set(
  'n',
  '<space>ff',
  function()
    Snacks.picker.files()
  end,
  { desc = 'Show buffers' }
)

vim.keymap.set(
  'n',
  '<space><space>',
  function()
    Snacks.picker.buffers()
  end,
  { desc = 'Show buffers' }
)

vim.keymap.set(
  'n',
  '<space>t',
  function()
    Snacks.explorer()
  end,
  { desc = 'Show buffers' }
) 

vim.keymap.set(
  { 'n', 't' },
  ']]',
  function()
    Snacks.words.jump(vim.v.count1)
  end,
  { desc = 'Next reference' }
)

vim.keymap.set(
  { 'n', 't' },
  '[[',
  function()
    Snacks.words.jump(-vim.v.count1)
  end,
  { desc = 'Prev reference' }
)

vim.keymap.set(
  { 'n' },
  '<leader>p',
  function()
    Snacks.picker()
  end,
  { desc = 'Show picker' }
)
