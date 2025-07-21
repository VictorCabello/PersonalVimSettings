local M = {
    "nvim-treesitter/nvim-treesitter",
    branch = "master",
    lazy = false,
    build = function()
        require("nvim-treesitter.install").update({
          with_sync = true,
        })()


    end,
    config = function ()
      require('nvim-treesitter.configs').setup({
        highlight = { enable = true },
        indent = { enable = true }
      })
      vim.wo.foldmethod = 'expr'
      vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
      vim.opt.foldlevel = 20
    end
}

return { M }
