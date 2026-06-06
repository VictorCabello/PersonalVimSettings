vim.pack.add({
  { src = 'https://github.com/folke/snacks.nvim' },
})

local snacks = require('snacks')


snacks.setup({
  explorer = { enabled = false },
  image = { enabled = true },
  indent = { enabled = false },
  scroll = { enabled = false },
  picker = {
    enabled = true,
    ui_select = true
  },
  statuscolumn = { enabled = false },
  input = { enabled = false },
  scope = { enabled = false },
  notifier = { enabled = true },
  words = { enabled = false },
})


vim.keymap.set(
  'n',
  '<space>fg',
  function()
    snacks.picker.git_status()
  end,
  { desc = 'Show git files' }
)

vim.keymap.set(
  'n',
  '<space>ff',
  function()
    snacks.picker.files()
  end,
  { desc = 'Show buffers' }
)

vim.keymap.set(
  'n',
  '<space><space>',
  function()
    snacks.picker.buffers()
  end,
  { desc = 'Show buffers' }
)

vim.keymap.set(
  'n',
  '<space>t',
  function()
    snacks.explorer()
  end,
  { desc = 'Show buffers' }
)

vim.keymap.set(
  { 'n', 't' },
  ']]',
  function()
    snacks.words.jump(vim.v.count1)
  end,
  { desc = 'Next reference' }
)

vim.keymap.set(
  { 'n', 't' },
  '[[',
  function()
    snacks.words.jump(-vim.v.count1)
  end,
  { desc = 'Prev reference' }
)

vim.keymap.set(
  { 'n' },
  '<leader>p',
  function()
    snacks.picker()
  end,
  { desc = 'Show picker' }
)

vim.keymap.set(
  { 'n' },
  '<leader>pr',
  function()
    snacks.picker.resume({ exclude = { 'select', 'pickers' } })
  end,
  { desc = 'Resume last picker' }
)
