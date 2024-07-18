# Intro

This is a base configuration for my favorite editor. The main idea is to have a clear way to introduce new settings to neovim.

## LSP node

Each lsp server should install its implementation.

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
