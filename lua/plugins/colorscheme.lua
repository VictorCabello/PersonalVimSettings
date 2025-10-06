
return {
  "rebelot/kanagawa.nvim",
  dependencies = {
    'nvim-lualine/lualine.nvim',
    'nvim-tree/nvim-web-devicons'
  },
  config = function()
    require("kanagawa").setup({
      transparent = true,
      colors = {
        theme = {
          all = {
            ui = {
              bg_gutter = "none",
            },
          },
        },
      },
    })
    vim.cmd("colorscheme kanagawa")
    require('lualine').setup {
      options = {
        theme = 'kanagawa'
      }
    }
  end,
}
