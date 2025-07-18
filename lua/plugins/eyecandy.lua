local treesitter = {
    "nvim-treesitter/nvim-treesitter",
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
    end
}

local scheme = {
  "rebelot/kanagawa.nvim",
  lazy = false,
  priority = 1000,
  dependencies = {
    'nvim-lualine/lualine.nvim',
    'nvim-tree/nvim-web-devicons'
  },
  config = function()
    local colorscheme = require("kanagawa")
    colorscheme.setup()
    colorscheme.load("wave")

    -- Default options:
    require('lualine').setup({
      options = {
        theme = "auto"
      }
    })
  end,
}

local indentation_highlighting = {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  ---@module "ibl"
  ---@type ibl.config
  opts = {},
  config = function(_, opts)
    local hooks = require "ibl.hooks"
    hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
      vim.api.nvim_set_hl(0, "RainbowRed",    { fg ="#E06C75" })
      vim.api.nvim_set_hl(0, "RainbowYellow", { fg ="#E5C07B" })
      vim.api.nvim_set_hl(0, "RainbowBlue",   { fg ="#61AFEF" })
      vim.api.nvim_set_hl(0, "RainbowOrange", { fg ="#D19A66" })
      vim.api.nvim_set_hl(0, "RainbowGreen",  { fg ="#98C379" })
      vim.api.nvim_set_hl(0, "RainbowViolet", { fg ="#C678DD" })
      vim.api.nvim_set_hl(0, "RainbowCyan",   { fg ="#56B6C2" })
    end)
    local highlight = {
      "RainbowRed",
      "RainbowYellow",
      "RainbowBlue",
      "RainbowOrange",
      "RainbowGreen",
      "RainbowViolet",
      "RainbowCyan",
    }
    require("ibl").setup({ indent = { highlight = highlight} })
  end,
}

local is_full = not vim.g.is_mini

if is_full then
  return {
    treesitter,
    scheme,
    indentation_highlighting
  }
else
  return { }
end

