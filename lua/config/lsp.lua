vim.pack.add({
  {src='https://github.com/neovim/nvim-lspconfig'},
  {src='https://github.com/MeanderingProgrammer/render-markdown.nvim'},
  {src='https://github.com/nvim-treesitter/nvim-treesitter', version='main'}
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

require "config/lsp_lua"
-- vim.lsp.enable({'ts_ls', 'pyright', 'codebook', 'ccls', 'quick_lint_js'})
vim.lsp.enable({
  'ts_ls',
  'pyright',
  'quick_lint_js',
  'markdown_oxide',
  'copilot',
 })

 vim.treesitter.language.register("bash", { "sh" })
 vim.api.nvim_create_autocmd('FileType', {
   pattern = {'markdown', 'typescript', 'bash', 'c', 'javascript'},
   callback = function()
     -- syntax highlighting, provided by Neovim
     vim.treesitter.start()
     -- folds, provided by Neovim
     vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
     -- indentation, provided by nvim-treesitter
     vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
   end,
 })
