# Neovim Lua Configuration

This repository contains a modular Neovim configuration written in Lua. It is organized for clarity and extensibility, focusing on modern Neovim features such as LSP, Treesitter, and plugin integration.

## File Structure

- `init.lua`: Main entry point for Neovim configuration. Loads all other modules.
- `lua/config/lsp.lua`: Sets up Language Server Protocol (LSP) integration for code completion, diagnostics, and more.
- `lua/config/lsp_lua.lua`: Provides additional configuration for the Lua language server, optimizing Neovim's Lua development experience.
- `lua/config/opts.lua`: Configures Neovim options and settings, such as line numbers, tabs, and UI preferences.
- `lua/config/copilot.lua`: Integrates GitHub Copilot for AI-assisted code completion.
- `lua/config/picker.lua`: Sets up fuzzy finding and picker utilities, likely using Telescope or similar plugins.

## Features

- **LSP Support**: Enables intelligent code features for multiple languages.
- **Lua Language Server**: Special configuration for Lua development.
- **Editor Options**: Customizes Neovim behavior and appearance.
- **GitHub Copilot**: AI-powered code suggestions.
- **Picker Utilities**: Fast navigation and searching within files and buffers.

## Getting Started

1. Clone this repository into your Neovim config directory:
   ```sh
   git clone <repo-url> ~/.config/nvim
   ```
2. Launch Neovim. The configuration will load automatically.

## Customization

Edit the files in `lua/config/` to adjust language servers, editor options, or plugin settings to your preference.

## License

MIT License
```
This README is based strictly on the listed Lua files and their typical roles in Neovim setups. For more detailed documentation, please provide file contents.
