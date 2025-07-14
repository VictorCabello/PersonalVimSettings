return {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    dependencies = {
      'nvim-lualine/lualine.nvim',
      'nvim-tree/nvim-web-devicons'
    },
    config = function ()
      local colorscheme = require("kanagawa")
      colorscheme.setup()
      colorscheme.load("wave")
      require('lualine').setup({
        options = {
          theme = "auto"
        }
      })
    end
}
