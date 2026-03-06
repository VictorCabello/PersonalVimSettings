local M = {}

M.reload_plarsma = function()
  vim.fn.system('systemctl --user restart plasma-plasmashell.service')
  vim.notify("Plasma Reloaded!")
end

M.test_notification = function()
  vim.fn.system('notify-send "testing notifications"')
  vim.notify("Test notification")
end

M.view_logs = function()
  vim.cmd('terminal echo "Plasma Logs (ctrl-c to exit)" ; journalctl --user -f | rg plasma')
end

vim.keymap.set(
  'n',
  '<leader>r',
  M.test_notification,
  {
    desc="Test notification"
  }
)

vim.keymap.set(
  'n',
  '<leader>l',
  M.view_logs,
  {
    desc="View plasma logs"
  }
)

return M
