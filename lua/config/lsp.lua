vim.pack.add({
  {src='https://github.com/neovim/nvim-lspconfig'},
  {src='https://github.com/nvim-treesitter/nvim-treesitter', version='main'},
  {src='https://github.com/iamcco/markdown-preview.nvim' },
  {src='https://github.com/OXY2DEV/markview.nvim' },
  {src='https://github.com/stevearc/conform.nvim'},
  {src='https://github.com/Saghen/blink.cmp', version='v1'},
})


vim.diagnostic.config({
    virtual_text = { prefix = '●', spacing = 4 },
    signs = true,
    underline = true,
    update_in_insert = true,
    severity_sort = true,
    float = {
        border = 'rounded',
        source = 'always',
    },
})

vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(event)
        local buf = event.buf
        vim.keymap.set('n', '<leader>r', vim.lsp.buf.rename, { buffer = buf, desc = 'LSP rename' })
        vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { buffer = buf, desc = 'LSP code action' })
        vim.keymap.set('n', '<leader>ih', function()
            local enabled = vim.lsp.inlay_hint.is_enabled({ bufnr = buf })
            vim.lsp.inlay_hint.enable(not enabled, { bufnr = buf })
        end, { buffer = buf, desc = 'Toggle inlay hints' })
    end,
})

vim.keymap.set('n',
'gd',
function() vim.lsp.buf.definition() end,
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

vim.keymap.set('n', ']d', function() vim.diagnostic.jump({ count = 1 }) end,
  { desc = 'Next diagnostic' })
vim.keymap.set('n', '[d', function() vim.diagnostic.jump({ count = -1 }) end,
  { desc = 'Prev diagnostic' })

require "config/lsp_lua"

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
    python     = { "ruff_format" },
    javascript = { "prettier" },
    typescript = { "prettier" },
    lua        = { "stylua" },
  },
  format_on_save = {
    timeout_ms = 2000,
    lsp_format = false,
  },
})

vim.keymap.set({ 'n', 'v' }, '<leader>f', function()
  require("conform").format({ async = true, lsp_format = false })
end, { desc = 'Format file or selection' })

require('blink.cmp').setup({
  keymap = { preset = 'default' },
  appearance = { nerd_font_variant = 'mono' },
  sources = { default = { 'lsp', 'path', 'snippets', 'buffer' } },
  completion = { documentation = { auto_show = true } },
})
