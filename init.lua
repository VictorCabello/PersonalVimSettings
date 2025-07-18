local is_full = not vim.g.is_mini

if is_full then
  require("config.lazy")
end
require("config.opts")
require("config.lsp")
require("config.file_manager")
require("config.global_keymaps")
require("config.terminal")

if not is_full then
  vim.cmd[[color zaibatsu]]
end
