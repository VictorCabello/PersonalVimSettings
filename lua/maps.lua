local keymap = vim.keymap

-- File management
keymap.set('n', '<leader>w', ':w<CR>')

-- Switch CWD to the directory of the open buffer
keymap.set('n', '<leader>cd', ':cd %:p:h<cr>:pwd<cr>')

-- Search
keymap.set('n', '<space>', '/')
keymap.set('n', '<leader><cr>', ':noh<cr>')

-- Move on splits
keymap.set('n', '<C-j>', '<C-W>j')
keymap.set('n', '<C-k>', '<C-W>k')
keymap.set('n', '<C-h>', '<C-W>h')
keymap.set('n', '<C-l>', '<C-W>l')

-- Useful mappings for managing tabs
keymap.set('n', '<leader>tn', ':tabnew<cr>')
keymap.set('n', '<leader>to', ':tabonly<cr>')
keymap.set('n', '<leader>tc', ':tabclose<cr>')
