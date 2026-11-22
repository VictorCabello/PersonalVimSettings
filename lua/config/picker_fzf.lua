-- 1. Configurar ripgrep nativo para :grep
vim.opt.grepprg = "rg --vimgrep --smart-case"
vim.opt.grepformat = "%f:%l:%c:%m"

-- 2. Ventana flotante nativa con fzf
local function fzf_float(cmd, on_select)
  local buf = vim.api.nvim_create_buf(false, true)
  vim.keymap.set('t', 'hh', 'hh', { buffer = buf, desc='permitir hh en fzf'})
  local width = math.floor(vim.o.columns * 0.8)
  local height = math.floor(vim.o.lines * 0.8)

  local win = vim.api.nvim_open_win(buf, true, {
    relative = "editor",
    width = width,
    height = height,
    row = math.floor((vim.o.lines - height) / 2),
    col = math.floor((vim.o.columns - width) / 2),
    style = "minimal",
    border = "rounded",
  })

  local tmpfile = vim.fn.tempname()
  vim.fn.jobstart({ "sh", "-c", cmd .. " > " .. tmpfile }, {
    term = true,
    on_exit = function()
      vim.schedule(function()
        if vim.api.nvim_win_is_valid(win) then
          vim.api.nvim_win_close(win, true)
        end
        if vim.api.nvim_buf_is_valid(buf) then
          vim.api.nvim_buf_delete(buf, { force = true })
        end
        if vim.fn.filereadable(tmpfile) == 1 then
          local lines = vim.fn.readfile(tmpfile)
          vim.fn.delete(tmpfile)
          if lines[1] and lines[1] ~= "" then
            on_select(lines[1])
          end
        end
      end)
    end,
  })
  vim.cmd("startinsert")
end

-- 3. Atajos
vim.keymap.set("n", "<space>ff", function()
  fzf_float("rg --files | fzf", function(file)
    vim.cmd("edit " .. vim.fn.fnameescape(file))
  end)
end, { desc = "Find files (fzf)" })

vim.keymap.set("n", "<space>fg", function()
  fzf_float("git status -s -uall | cut -c4- | fzf", function(file)
    vim.cmd("edit " .. vim.fn.fnameescape(file))
  end)
end, { desc = "Git status files (fzf)" })

vim.keymap.set("n", "<space><space>", function()
  local bufs = {}
  for _, b in ipairs(vim.api.nvim_list_bufs()) do
    if vim.api.nvim_buf_is_loaded(b) and vim.bo[b].buflisted then
      local name = vim.fn.bufname(b)
      if name ~= "" then
        table.insert(bufs, name)
      end
    end
  end
  if #bufs == 0 then return end
  local input = table.concat(bufs, "\n")
  fzf_float("printf " .. vim.fn.shellescape(input) .. " | fzf", function(file)
    vim.cmd("edit " .. vim.fn.fnameescape(file))
  end)
end, { desc = "Show buffers (fzf)" })

vim.keymap.set("n", "<space>t", "<cmd>Explore<cr>", { desc = "File Explorer" })
vim.keymap.set("n", "<leader>pr", "<cmd>copen<cr>", { desc = "Open Quickfix" })
vim.keymap.set("n", "<leader>sg", ":grep ", { desc = "Live Grep (ripgrep)" })
vim.keymap.set("n", "<leader>ws", vim.lsp.buf.workspace_symbol, { desc = "LSP Workspace Symbols" })
