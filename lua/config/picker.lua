vim.pack.add({
  {src='https://github.com/folke/snacks.nvim'},
  { src = 'https://github.com/coder/claudecode.nvim' },
})

local snacks = require('snacks')

snacks.setup({
  explorer = { enabled = true },
  image = { enabled = true },
  indent = { enabled = true },
  scroll = { enabled = true },
  picker = {
    enabled = true,
    ui_select = true
  },
  statuscolumn = { enabled = true },
  input = { enabled = true },
  scope = { enabled = true },
  notifier = { enabled = true },
  words = { enabled = true },
})


vim.keymap.set(
  'n',
  '<space>ff',
  function()
    snacks.picker.files()
  end,
  { desc = 'Show buffers' }
)

vim.keymap.set(
  'n',
  '<space><space>',
  function()
    snacks.picker.buffers()
  end,
  { desc = 'Show buffers' }
)

vim.keymap.set(
  'n',
  '<space>t',
  function()
    snacks.explorer()
  end,
  { desc = 'Show buffers' }
) 

vim.keymap.set(
  { 'n', 't' },
  ']]',
  function()
    snacks.words.jump(vim.v.count1)
  end,
  { desc = 'Next reference' }
)

vim.keymap.set(
  { 'n', 't' },
  '[[',
  function()
    snacks.words.jump(-vim.v.count1)
  end,
  { desc = 'Prev reference' }
)

vim.keymap.set(
  { 'n' },
  '<leader>p',
  function()
    snacks.picker()
  end,
  { desc = 'Show picker' }
)



require("claudecode").setup({
  terminal_cmd = "claude", -- usa "~/.claude/local/claude" si lo instalaste localmente
})

-- Keymaps
local keys = {
  { "<leader>ac", "<cmd>ClaudeCode<cr>",          desc = "Toggle Claude" },
  { "<leader>af", "<cmd>ClaudeCodeFocus<cr>",     desc = "Focus Claude" },
  { "<leader>am", "<cmd>ClaudeCodeSelectModel<cr>", desc = "Select model" },
  { "<leader>ab", "<cmd>ClaudeCodeAdd %<cr>",     desc = "Add current buffer" },
  { "<leader>aa", "<cmd>ClaudeCodeDiffAccept<cr>", desc = "Accept diff" },
  { "<leader>ad", "<cmd>ClaudeCodeDiffDeny<cr>",  desc = "Deny diff" },
}

for _, map in ipairs(keys) do
  vim.keymap.set(map.mode or "n", map[1], map[2], { desc = map.desc })
end

-- Keymap visual para enviar selección
vim.keymap.set("v", "<leader>as", "<cmd>ClaudeCodeSend<cr>", { desc = "Send selection to Claude" })
