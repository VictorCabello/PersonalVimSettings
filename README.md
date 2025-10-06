# Intro

This configuration is organized to keep settings modular and easy to maintain. Below is an explanation of each Lua file and its purpose:

## Core Files

- **init.lua**  
  Entry point for Neovim configuration. Loads options, plugins, and sets up the environment.

## Configuration

- **lua/config/opts.lua**  
  Sets Neovim options (such as line numbers, tabs, etc).

- **lua/config/lazy.lua**  
  Handles plugin management using the 'lazy.nvim' plugin manager.

- **lua/config/lsp.lua**  
  Configures Language Server Protocol (LSP) settings with built-in LSP support for TypeScript, Python, JavaScript, Markdown, and GitHub Copilot. Includes keymaps for diagnostics and inline completion.

- **lua/config/lsp_lua.lua**  
  Additional LSP configuration for Lua language server.

### Installing Language Servers

This configuration uses several language servers that need to be installed. Most can be installed using npm:

#### NPM-based Language Servers

```bash
# Install all language servers via npm
npm install -g typescript-language-server typescript
npm install -g emmet-ls
npm install -g pyright
npm install -g quick-lint-js
npm install -g @vscode/vscode-languageserver-node
```

#### Alternative Language Servers

For Lua language server, if npm version is not available or preferred:

**Using package managers:**
```bash
# macOS with Homebrew
brew install lua-language-server

# Ubuntu/Debian
sudo apt install lua-language-server

# Windows with Scoop
scoop install lua-language-server
```

**Manual installation:**
Download from [lua-language-server releases](https://github.com/LuaLS/lua-language-server/releases) and add to PATH.

#### Markdown Language Server

For markdown-oxide, install via cargo if Rust is available:
```bash
cargo install --locked markdown-oxide
```

Or use an alternative npm-based markdown server:
```bash
npm install -g unified-language-server
```

#### GitHub Copilot

GitHub Copilot is installed as a project dependency:
```bash
npm install
```

Ensure you have an active GitHub Copilot subscription and are authenticated.

#### Verification

After installation, verify language servers are working:
1. Open a file of the respective language
2. Run `:LspInfo` in Neovim to see active servers
3. Test with `gd` (go to definition) or `<leader>e` (show diagnostics)

## Plugins

- **lua/plugins/lspconfig.lua**  
  Minimal LSP configuration using nvim-lspconfig.

- **lua/plugins/colorscheme.lua**  
  Sets up the Kanagawa colorscheme with transparency and lualine statusline integration.

- **lua/plugins/sidekick.lua**  
  Integrates Snacks.nvim for modern UI components (picker, explorer, notifications, etc.) and Sidekick for AI-powered coding assistance. Includes comprehensive keymaps for file navigation, git operations, search, and LSP functions.

#### Main Keymaps

| Category | Keymap | Description |
|----------|--------|-------------|
| **Core Navigation** | `<leader><space>` | Smart Find Files |
| | `<leader>,` | Buffers |
| | `<leader>/` | Grep |
| | `<leader>t` | File Explorer |
| **File Operations** | `<leader>ff` | Find Files |
| | `<leader>fg` | Find Git Files |
| | `<leader>fr` | Recent Files |
| | `<leader>fc` | Find Config File |
| | `<leader>fp` | Projects |
| **Git Operations** | `<leader>gg` | Lazygit |
| | `<leader>gb` | Git Branches |
| | `<leader>gl` | Git Log |
| | `<leader>gs` | Git Status |
| | `<leader>gd` | Git Diff (Hunks) |
| | `<leader>gB` | Git Browse |
| **Search** | `<leader>sg` | Grep |
| | `<leader>sw` | Grep Word/Selection |
| | `<leader>sb` | Buffer Lines |
| | `<leader>sk` | Keymaps |
| | `<leader>sh` | Help Pages |
| **LSP** | `gd` | Goto Definition |
| | `gr` | References |
| | `gI` | Goto Implementation |
| | `<leader>ss` | LSP Symbols |
| | `<leader>sd` | Diagnostics |
| **AI Assistance** | `<tab>` | Next Edit Suggestion |
| | `<leader>ap` | Sidekick Select Prompt |
| | `<leader>av` | Send Visual Selection |
| | `<leader>at` | Surround Selection |
| | `<c-.>` | Sidekick Switch Focus |
| **Utilities** | `<leader>z` | Toggle Zen Mode |
| | `<leader>.` | Toggle Scratch Buffer |
| | `<leader>n` | Notification History |
| | `<c-/>` | Toggle Terminal |
| | `<leader>bd` | Delete Buffer |

---

Each file is focused on a specific aspect of Neovim, making it easy to customize or extend your setup.

## Key Features

- **Modern LSP Integration**: Built-in LSP support with TypeScript, Python, JavaScript, Markdown, and GitHub Copilot language servers
- **Snacks.nvim**: Comprehensive UI framework providing file picker, explorer, notifications, and more
- **Sidekick AI**: Advanced AI-powered coding assistance with edit suggestions and intelligent prompts
- **Kanagawa Theme**: Beautiful colorscheme with transparency support and matching statusline
- **Minimal Dependencies**: Streamlined plugin setup focused on essential functionality

# Installation

## Windows

First you need to install the following dependencies.

```pwsh
scoop install make
scoop install mingw
scoop install fzf
scoop install ripgrep
npm install -g emmet-ls
pip install "python-lsp-server[all]"
```

Then install the Node.js dependencies for GitHub Copilot support:

```pwsh
npm install
```

And then you can use the configuration.

```pwsh
git clone https://github.com/VictorCabello/PersonalVimSettings.git $env:LOCALAPPDATA\nvim
cd $env:LOCALAPPDATA\nvim
git checkout nvim
```
