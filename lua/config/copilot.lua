vim.pack.add({
  {src='https://github.com/CopilotC-Nvim/CopilotChat.nvim'},
  {src='https://github.com/zbirenbaum/copilot.lua'},
  {src='https://github.com/nvim-lua/plenary.nvim'},
})

require("copilot").setup({
  filetypes = {
    yaml = true,
    json = true,
    markdown = true,
  },
})

require("CopilotChat").setup({})
