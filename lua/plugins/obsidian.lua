local myNotesPath=os.getenv("NOTES_DIR")
local SNACKS = {
  "folke/snacks.nvim",
  lazy = false,
  priority=1000
}
local OBSIDIAN =  {
  "obsidian-nvim/obsidian.nvim",
  version = "*",  -- recommended, use latest release instead of latest commit
  ft = "markdown",
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  -- event = {
  --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
  --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
  --   "BufReadPre path/to/my-vault/**.md",
  --   "BufNewFile path/to/my-vault/**.md",
  -- },
  dependencies = {
    -- Required.
    "nvim-lua/plenary.nvim",
    -- { "hrsh7th/nvim-cmp", }
    -- see below for full list of optional dependencies 👇
  },
  opts = {
    follow_url_func = function (url)
      vim.fn.jobstart({"xdg-open", url})
    end,
    notes_subdir = "000 Entrada",
    legacy_commands = false,
    completion = {
      nvim_cmp = false,
      blink = true,
      min_chars = 2,
    },
    ui = { enable = false},

    callbacks = {
      -- This function is called when the user clicks on a link in a note.
      -- It can be used to open the link in a web browser or in a different application.
      on_link_click = function(link)
        if link:match("^https?://") then
          -- Open web links in the default browser.
          vim.fn.jobstart({"xdg-open", link})
        else
          -- For other links, just open them in the current buffer.
          require("obsidian").util.smart_action(link)
        end
      end,
    },

    workspaces = {
      {
        name = "personal",
        path = myNotesPath,
      },
    },
    templates = {
      folder = "999 plantillas"
    },
    picker = {
      name = "telescope.nvim",
      note_mappings = {
        note_mappings = {
          new = "<C-x>",
          insert_link = "<C-l>"
        },
        tag_mappings = {
          tag_note = "<C-x>",
          insert_tag = "<C-l>",
        }
      },
    },

    attachments = {
      img_folder = "999 assets",  -- This is the default

    },
  },
  config = function(_, opts)
    require("obsidian").setup(opts)
    require("snacks").setup {
      image = {
        resolve = function(path, src)
          if require("obsidian.api").path_is_note(path) then
            return require("obsidian.api").resolve_image_path(src)
          end
        end,
      },
    }
  end,
}

return {
  SNACKS,
  OBSIDIAN
}
