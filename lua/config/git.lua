vim.pack.add({
  { src = 'https://github.com/lewis6991/gitsigns.nvim' },
})
require('gitsigns').setup({
  signs = {
    add          = { text = '┃' },
    change       = { text = '┃' },
    delete       = { text = '_' },
    topdelete    = { text = '‾' },
    changedelete = { text = '~' },
  },
  on_attach = function(bufnr)
    local gs = package.loaded.gitsigns

    -- Navegar entre hunks        
    vim.keymap.set('n', ']c', gs.next_hunk, {
      buffer = bufnr, desc = 'Next hunk' })
    vim.keymap.set('n', '[c', gs.prev_hunk, {
      buffer = bufnr, desc = 'Prev hunk' })

    -- Ver el diff del hunk bajo  el cursor                       
    vim.keymap.set('n',
    '<leader>gd', gs.preview_hunk, {
      buffer = bufnr, desc = 'Preview hunk diff' })

    -- Stage / reset hunk       
    vim.keymap.set('n',
    '<leader>gs', gs.stage_hunk,  {
      buffer = bufnr, desc = 'Stage hunk' })
      vim.keymap.set('n',
      '<leader>gr', gs.reset_hunk,  {
        buffer = bufnr, desc = 'Reset hunk' })

    -- Blame de la línea actual 
    vim.keymap.set('n',
    '<leader>gb', gs.blame_line,  {
      buffer = bufnr, desc = 'Blame line' })
  end,
})
