vim.pack.add({
  {src='https://github.com/neovim/nvim-lspconfig'},
  -- {src='https://github.com/MeanderingProgrammer/render-markdown.nvim'},
  {src='https://github.com/nvim-treesitter/nvim-treesitter', version='main'},
  {src='https://github.com/iamcco/markdown-preview.nvim' },
  {src='https://github.com/OXY2DEV/markview.nvim' },
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
--
vim.lsp.config['qmlls'] = {
  cmd = { 'qmlls6' }
}
vim.lsp.enable({
  'ts_ls',
  'pyright',
  'quick_lint_js',
  'markdown_oxide',
  'qmlls',
  'copilot',
  'lemminx',
  'copilot',
  'bashls',
 })

 vim.treesitter.language.register("bash", { "sh" })
 vim.api.nvim_create_autocmd('FileType', {
   pattern = {'python', 'markdown', 'typescript', 'bash', 'c', 'javascript'},
   callback = function()
     -- syntax highlighting, provided by Neovim
     vim.treesitter.start()
     -- folds, provided by Neovim
     vim.wo[0][0].foldexpr = 'v:lua.vim.treesitter.foldexpr()'
     vim.wo[0][0].foldmethod = 'expr'
     -- indentation, provided by nvim-treesitter
     vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
   end,
 })


require("markview").setup({
    tables = {
        enable = true,
        use_virt_lines = true -- Makes tables look like actual UI elements
    },
    code_blocks = {
        enable = false -- Let treesitter handle code block syntax highlighting
    }
})


-- Permite scroll horizontal para tablas anchas
vim.opt.sidescrolloff = 8 
-- Oculta los símbolos de markdown para limpiar la vista
vim.opt.conceallevel = 2 
