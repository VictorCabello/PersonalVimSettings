-- Quick save files
vim.keymap.set('n', '<leader>w', ':w<cr>', { desc = 'save file'} )
vim.keymap.set('i', '<leader>w', '<C-o>:w<cr>', { desc = 'save file'} )


-- Fast esc
vim.keymap.set('i', 'hh', '<Esc>', { desc = 'Exit terminal mode' })
