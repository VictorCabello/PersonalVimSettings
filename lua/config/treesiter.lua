vim.api.nvim_create_autocmd('PackChanged', {
  callback = function(ev)
    if ev.data.spec.name == 'nvim-treesitter' and ev.data.kind ~= 'delete' then
      if not ev.data.active then
        vim.cmd.packadd('nvim-treesitter')
      end
      vim.cmd('TSUpdate')
    end
  end,
})

vim.pack.add({
  { src = 'https://github.com/nvim-treesitter/nvim-treesitter', version = 'main' },
})

require('nvim-treesitter').install({
  'css',
  'html',
  'javascript',
  'latex',
  'markdown',
  'markdown_inline',
  'scss',
  'svelte',
  'tsx',
  'typst',
  'vue',
})

vim.api.nvim_create_autocmd('FileType', {
  desc = 'Activar Treesitter highlight',
  callback = function()
    pcall(vim.treesitter.start)
  end,
})
