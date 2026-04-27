# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a modular Neovim configuration written in Lua. It uses **Neovim's native plugin system** (`vim.pack.add()`) — no external package manager (no lazy.nvim, packer, etc.).

## Plugin Management

Plugins are declared with `vim.pack.add("owner/repo")` calls scattered across config modules. Plugin versions are pinned in `nvim-pack-lock.json`. To add a plugin, call `vim.pack.add()` in the relevant config module.

## Architecture

`init.lua` is the entry point — it loads modules in order:

```
colorscheme → opts → lsp → picker → git → claude
```

All config lives in `lua/config/`:
- `opts.lua` — editor options and global keymaps (leader = Space)
- `colorscheme.lua` — Tokyo Night Storm theme + lualine
- `lsp.lua` — LSP servers, Treesitter, markdown plugins
- `lsp_lua.lua` — Lua LSP (`lua_ls`) only
- `picker.lua` — Snacks.nvim (fuzzy finder, file explorer, scrolling, notifier)
- `git.lua` — Gitsigns
- `claude.lua` — claudecode.nvim integration

`lua/myplugins/plasma_dev.lua` exists but is **not loaded by default** — it contains KDE Plasma development utilities (journalctl log viewer, test notification shortcuts).

## Key Keymaps

| Key | Action |
|-----|--------|
| `<Space>` | Leader key |
| `hh` | Exit insert/terminal mode (custom `<Esc>`) |
| `<leader>w` | Save file |
| `<leader>ff` | Find files (Snacks picker) |
| `<leader><Space>` | Switch buffers |
| `<leader>t` | Toggle file explorer |
| `gd` | Go to definition (LSP) |
| `<C-Space>` | Trigger LSP completion (insert mode) |
| `<leader>e` | Show diagnostics |
| `<leader>r` | LSP rename (buffer-local, on attach) |
| `<leader>ca` | LSP code action (buffer-local, on attach) |
| `<leader>ih` | Toggle inlay hints (buffer-local, on attach) |
| `<leader>a*` | Claude Code panel (toggle/focus/model/buffer/diff) |
| `<leader>g*` | Git operations (diff/stage/reset/blame) |

## LSP Servers Configured

`ts_ls`, `pyright`, `quick_lint_js`, `markdown_oxide`, `qmlls`, `copilot`, `lemminx`, `bashls`, `lua_ls`, `ruff`

Treesitter parsers enabled: Python, Markdown, TypeScript, Bash, C, JavaScript.

## Style

- Indentation: 4 spaces (no tabs)
- `colorcolumn` at 100
- UTF-8 encoding
- Rounded window borders throughout
