-- Netrw is the default file manager in Neovim and it works very
-- well to navigate files but some most of the times I need a 
-- tree to navigate the files an this config help me with that.

vim.g.netrw_banner = 0 -- by default, Netrw shows a banner but I don't like it
vim.g.netrw_liststyle = 3 -- tree view
vim.g.netrw_altv = 1
vim.g.netrw_browse_split = 4 -- open in previous window
vim.g.netrw_preview = 1 -- enable preview of files
vim.g.netrw_winsize = 80 -- set the width of the Netrw window to 20% of the screen
