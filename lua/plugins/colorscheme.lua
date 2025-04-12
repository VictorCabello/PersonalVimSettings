return {
  {
    'maxmx03/dracula.nvim',
    lazy = false,
    priority = 1000,
    config = function ()
      ---@type dracula
      local dracula = require "dracula"

      dracula.setup({
      styles = {
        Type = {},
        Function = {},
        Parameter = {},
        Property = {},
        Comment = {},
        String = {},
        Keyword = {},
        Identifier = {},
        Constant = {},
      },
      transparent = false,
      on_colors = function (colors, color)
        ---@type dracula.palette
        return {
          -- override or create new colors
          mycolor = "#ffffff",
          -- mycolor = 0xffffff,
        }
      end,
      on_highlights = function (colors, color)
        ---@type dracula.highlights
        return {
          ---@type vim.api.keyset.highlight
          Normal = { fg = colors.mycolor }
        }
      end,
      plugins = {
        ["nvim-treesitter"] = true,
        ["rainbow-delimiters"] = true,
        ["nvim-lspconfig"] = true,
        ["nvim-navic"] = true,
        ["nvim-cmp"] = true,
        ["indent-blankline.nvim"] = true,
        ["neo-tree.nvim"] = true,
        ["nvim-tree.lua"] = true,
        ["which-key.nvim"] = true,
        ["dashboard-nvim"] = true,
        ["gitsigns.nvim"] = true,
        ["neogit"] = true,
        ["todo-comments.nvim"] = true,
        ["lazy.nvim"] = true,
        ["telescope.nvim"] = true,
        ["noice.nvim"] = true,
        ["hop.nvim"] = true,
        ["mini.statusline"] = true,
        ["mini.tabline"] = true,
        ["mini.starter"] = true,
        ["mini.cursorword"] = true,
        ['bufferline.nvim'] = true,
      }
      })
      vim.cmd.colorscheme 'dracula'
      vim.cmd.colorscheme 'dracula-soft'
    end
  },
  {
    'nvim-lualine/lualine.nvim',
    opts = {
      options = {
        theme = vim.g.colors_name,
        refresh = {
          statusline = 1000,
        },
      },
    },
  }
}
-- return {
--   "catppuccin/nvim", name = "catppuccin", priority = 1000,
--   config =function ()
-- 
--     require("catppuccin").setup({
--       flavour = "macchiato", -- latte, frappe, macchiato, mocha
--       transparent_background = false, -- disables setting the background color.
--       show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
--       term_colors = true, -- sets terminal colors (e.g. `g:terminal_color_0`)
--       dim_inactive = {
--         enabled = false, -- dims the background color of inactive window
--         shade = "dark",
--         percentage = 0.15, -- percentage of the shade to apply to the inactive window
--       },
--       no_italic = false, -- Force no italic
--       no_bold = false, -- Force no bold
--       no_underline = false, -- Force no underline
--       styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
--         comments = { "italic" }, -- Change the style of comments
--         conditionals = { "italic" },
--         loops = {},
--         functions = {},
--         keywords = {},
--         strings = {},
--         variables = {},
--         numbers = {},
--         booleans = {},
--         properties = {},
--         types = {},
--         operators = {},
--         -- miscs = {}, -- Uncomment to turn off hard-coded styles
--       },
--       color_overrides = {},
--       custom_highlights = {},
--       default_integrations = true,
--       integrations = {
--         cmp = true,
--         gitsigns = true,
--         nvimtree = true,
--         treesitter = true,
--         notify = false,
--         mini = {
--           enabled = true,
--           indentscope_color = "",
--         },
--         -- For more plugins integrations please scroll down (https://github.com/cnatppuccin/nvim#integrations)
--       },
--     })
-- vim.cmd.colorscheme "catppuccin"
--   end
-- }
-- return {
  --   "rebelot/kanagawa.nvim",
  --   config = function()
    --     -- Default options:
    --     require('kanagawa').setup({
      --       compile = false,             -- enable compiling the colorscheme
      --       undercurl = true,            -- enable undercurls
      --       commentStyle = { italic = true },
      --       functionStyle = {},
      --       keywordStyle = { italic = true},
      --       statementStyle = { bold = true },
      --       typeStyle = {},
      --       transparent = true,         -- do not set background color
      --       dimInactive = false,         -- dim inactive window `:h hl-NormalNC`
      --       terminalColors = true,       -- define vim.g.terminal_color_{0,17}
      --       colors = {                   -- add/modify theme and palette colors
        --         palette = {},
        --         theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
        --       },
        --       overrides = function(colors) -- add/modify highlights
          --         return {}
          --       end,
          --       theme = "wave",              -- Load "wave" theme when 'background' option is not set
          --       background = {               -- map the value of 'background' option to a theme
            --         dark = "dragon",           -- try "dragon" !
            --         light = "lotus"
            --       },
            --     })
            -- 
            --     -- setup must be called before loading
            --     vim.cmd("colorscheme kanagawa")
            --   end,
            -- }
