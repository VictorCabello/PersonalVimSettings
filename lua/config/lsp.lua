vim.pack.add({
  { src = 'https://github.com/neovim/nvim-lspconfig' },
})

vim.api.nvim_create_autocmd('LspAttach', {
  desc = 'Acciones LSP',
  callback = function(event)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {
      buffer = event.buf,
      desc = 'Go to definition'
    })
    vim.keymap.set("n", "<leader>cl",
      vim.lsp.codelens.run,
      { desc = "Ejecutar CodeLens" }
    )
  end
})

-- Atajo de teclado estándar para ejecutar las acciones del lente
vim.lsp.codelens.enable(true)
vim.lsp.enable({
  'lua_ls',
  'ts_ls',
  'pyright',
  'quick_lint_js',
  'markdown_oxide',
  'bashls',
})
