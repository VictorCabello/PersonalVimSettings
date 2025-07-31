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

- **lua/config/lsp_lua.lua**  
  Configures Language Server Protocol (LSP) settings for enhanced code intelligence.

## Plugins

- **lua/plugins/telescope.lua**  
  Configures Telescope for fuzzy finding files, buffers, and more.

- **lua/plugins/cmp.lua**  
  Sets up nvim-cmp for autocompletion features.

- **lua/plugins/eyecandy.lua**  
  Adds visual enhancements (themes, statusline, etc).

- **lua/plugins/markdown.lua**  
  Provides Markdown editing improvements.

- **lua/plugins/copilot.lua**  
  Integrates GitHub Copilot for AI-powered code suggestions.

- **lua/plugins/obsidian.lua**  
  Adds support for working with Obsidian notes.

- **lua/plugins/git.lua**  
  Git integration for version control features.

---

Each file is focused on a specific aspect of Neovim, making it easy to customize or extend your setup.

# Installation

## Windows

Firs you need to install the following dependencies.

```pwsh
scoop install make
scoop install mingw
scoop install fzf
scoop install ripgrep
npm install -g emmet-ls
pip install "python-lsp-server[all]"
```

And then you can use the configuration.

```pwsh
git clone https://github.com/VictorCabello/PersonalVimSettings.git $env:LOCALAPPDATA\nvim
cd $env:LOCALAPPDATA\nvim
git checkout nvim
```
