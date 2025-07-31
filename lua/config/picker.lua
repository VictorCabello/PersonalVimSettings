vim.pack.add({
  {src='https://github.com/echasnovski/mini.pick'},
})

local picker = require 'mini.pick'
picker.setup()

local function find_files()
  picker.builtin.files({tools="fd"})
end

local function live_grep()
  picker.builtin.grep_live({tools="rg"})
end


vim.keymap.set(
  'n',
  '<leader><leader>',
  picker.builtin.buffers,
  { desc = 'Show open buffers' })

vim.keymap.set(
  'n',
  '<leader>f',
  find_files,
  { desc = 'Find files' }
)

vim.keymap.set(
  'n',
  '<leader>g',
  live_grep,
  { desc = 'Live grep in project' }
)
