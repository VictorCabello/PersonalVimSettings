vim.pack.add({
<<<<<<< Updated upstream
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
||||||| Stash base
  {src='https://github.com/CopilotC-Nvim/CopilotChat.nvim'},
  {src='https://github.com/zbirenbaum/copilot.lua'},
  {src='https://github.com/nvim-lua/plenary.nvim'},
})
=======
  {src='https://github.com/CopilotC-Nvim/CopilotChat.nvim'},
  {src='https://github.com/zbirenbaum/copilot.lua'},
  {src='https://github.com/copilotlsp-nvim/copilot-lsp'},
  {src='https://github.com/nvim-lua/plenary.nvim'},
})
>>>>>>> Stashed changes

<<<<<<< Updated upstream
    require("CopilotChat").setup({})
  end
||||||| Stash base
require("copilot").setup({
  filetypes = {
    yaml = true,
    json = true,
    markdown = true,
  },
=======
require("copilot").setup({
  filetypes = {
    yaml = true,
    json = true,
    python = true,
    typescript = true,
    markdown = true,
    sh = function ()
      if string.match(vim.fs.basename(vim.api.nvim_buf_get_name(0)), '^%.env.*') then
        -- disable for .env files
        return false
      end
      return true
    end,
  }
>>>>>>> Stashed changes
})
<<<<<<< Updated upstream
||||||| Stash base

require("CopilotChat").setup({})
=======


require("CopilotChat").setup({
  window = {
    layout = 'horizontal',       -- 'vertical', 'horizontal', 'float'
    border = 'rounded', -- 'single', 'double', 'rounded', 'solid'
    title = '🤖 AI Assistant',
  },

  headers = {
    user = '👤 You',
    assistant = '🤖 Copilot',
    tool = '🔧 Tool',
  },

  separator = '━━',
  auto_fold = false, -- Automatically folds non-assistant messages
})



vim.keymap.set({'n', 'v'},
'<leader>cc',
':CopilotChat<CR>',
{ desc = 'Open Copilot Chat window'})
>>>>>>> Stashed changes
