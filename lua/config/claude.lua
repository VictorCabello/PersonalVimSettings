vim.pack.add({
  { src = 'https://github.com/coder/claudecode.nvim' },
})


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
