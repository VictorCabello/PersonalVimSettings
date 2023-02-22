require('base')
require('highlights')
require('maps')
require('plugins')


local has = vim.fn.has
local is_mac = has "macunix"
local is_win = has "win32"
local is_wsl = has "wsl"

if is_win then
    require('windows')
elseif is_mac then
    print('no support for mac')
elseif is_wsl then
    print('no support for wsl')
end
