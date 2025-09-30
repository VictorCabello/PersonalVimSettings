vim.pack.add({
  {src='https://github.com/echasnovski/mini.pick'},
})

-- Function to check if .git directory exists in the root directory
local function check_git_directory()
  local handle = io.popen("ls -a")
  local result = handle:read("*a")
  handle:close()
  -- Look for the .git directory in the output
  if string.match(result, "%.git$") then
    return true
  else
    return false
  end
end

-- Execute the function
check_git_directory()
local picker = require 'mini.pick'
picker.setup()

local function find_files()
  local tool = 'fd'
  if check_git_directory() then
    tool = 'git'
  end
  picker.builtin.files({tool=tool})
end

local function live_grep()
  picker.builtin.grep_live({tool="rg"})
end


vim.keymap.set(
  'n',
  '<leader><leader>',
  picker.builtin.buffers,
  { desc = 'Show open buffers' })

vim.keymap.set(
  'n',
  '<leader>f',
  find_files,
  { desc = 'Find files' }
)

vim.keymap.set(
  'n',
  '<leader>g',
  live_grep,
  { desc = 'Live grep in project' }
)
