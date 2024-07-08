# Intro

This is a base configuration for my favorite editor. The main idea is to have a clear way to introduce new settings to neovim.

## LSP node

Each lsp server should install its implementation.

# Installation

## Windows

Firs you need to install the following dependencies.

```pwsh
PS>scoop install make
PS>scoop install mingw
PS>npm install -g emmet-ls
PS>pip install "python-lsp-server[all]"
```

And then you can use the configuration.

```pwsh
PS> git clone https://github.com/VictorCabello/PersonalVimSettings.git $env:LOCALAPPDATA\nvim
PS> cd $env:LOCALAPPDATA\nvim
PS> git checkout nvim
```
