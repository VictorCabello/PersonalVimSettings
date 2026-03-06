vim.pack.add({
  { src = 'https://github.com/zbirenbaum/copilot.lua' },
  { src = 'https://github.com/CopilotC-Nvim/CopilotChat.nvim' },
  { src = 'https://github.com/nvim-lua/plenary.nvim' },
}, {
  -- This function runs ONLY after the plugins above are ready
  on_done = function()
    require("copilot").setup({
      filetypes = {
        yaml = true,
        json = true,
        markdown = true,
      },
    })

    require("CopilotChat").setup({})
  end
})
