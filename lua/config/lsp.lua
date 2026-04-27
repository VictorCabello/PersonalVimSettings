vim.pack.add({
  {src='https://github.com/neovim/nvim-lspconfig'},
  -- {src='https://github.com/MeanderingProgrammer/render-markdown.nvim'},
  {src='https://github.com/nvim-treesitter/nvim-treesitter', version='main'},
  {src='https://github.com/iamcco/markdown-preview.nvim' },
  {src='https://github.com/OXY2DEV/markview.nvim' },
  {src='https://github.com/stevearc/conform.nvim'},
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

vim.lsp.config('pyright', {
  settings = {
    python = {
      analysis = {
        typeCheckingMode = "standard",
        autoImportCompletions = true,
        useLibraryCodeForTypes = true,
        diagnosticMode = "openFilesOnly",
      },
    },
  },
})

vim.lsp.config('ruff', {
  on_attach = function(client, _)
    -- Pyright gestiona hover mejor; sin esto el hover alterna aleatoriamente
    client.server_capabilities.hoverProvider = false
  end,
})

vim.lsp.enable({
  'ts_ls',
  'pyright',
  'quick_lint_js',
  'markdown_oxide',
  'qmlls',
  'copilot',
  'lemminx',
  'bashls',
  'ruff',
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

vim.api.nvim_create_autocmd('FileType', {
  pattern = 'python',
  callback = function()
    vim.bo.smartindent = false
    vim.bo.cindent = false
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

require("conform").setup({
  formatters_by_ft = {
    python = { "ruff_format" },
  },
  format_on_save = {
    timeout_ms = 2000,
    lsp_fallback = false,
  },
})

vim.keymap.set({ 'n', 'v' }, '<leader>f', function()
  require("conform").format({ async = true, lsp_fallback = false })
end, { desc = 'Format file or selection' })
