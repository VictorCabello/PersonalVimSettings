-- Quick save files
vim.keymap.set('n', '<leader>w', ':w<cr>', { desc = 'save file'} )

-- Emmacs moves on command mode 
vim.keymap.set('c', '<M-b>',  '<S-Left>', {
  desc = 'Move to the previous word',
})
vim.keymap.set('c', '<M-f>',  '<S-Right>', {
  desc = 'Move to the next word',
})
vim.keymap.set('c', '<C-A>',  '<HOME>', {
  desc = 'Move to the previous word',
})


-- Fast esc
vim.keymap.set('i', 'hh', '<Esc>', { desc = 'Exit terminal mode' })
