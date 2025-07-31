vim.pack.add({
  {src='https://github.com/CopilotC-Nvim/CopilotChat.nvim'},
  {src='https://github.com/zbirenbaum/copilot.lua'},
  {src='https://github.com/nvim-lua/plenary.nvim'},
})
require("copilot").setup({
  suggestion = { enabled = true },
  panel = { enabled = true },
  filetypes = {
    yaml = true,
    json = true,
  },
})
require("CopilotChat").setup({})
vim.ui.select = require('mini.pick').ui_select
