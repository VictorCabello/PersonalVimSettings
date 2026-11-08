vim.pack.add({
  { src = 'https://github.com/iamcco/markdown-preview.nvim' },
  { src = 'https://github.com/OXY2DEV/markview.nvim' },
})

require("markview").setup({
  -- markview ≥ v25 usa esta clave:
  preview = {
    enable_hybrid_mode = true,  -- deshabilita modo híbrido que usa conceallevel
  },
})
