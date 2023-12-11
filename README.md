# Personal Vim Settings

I have used vim since 2007, it was a very nice editor and I think it was once of the best investments in my life because even when it was little bit complicated to understand it at the beginning is my first tools when I code or when I need to change configurations files on a server.

The only challenge with this great tool is to try to migrate my settings from one computer to an other one, almost all the time I ends to just look on internet some vimrc samples that help to what I want to do for each moment.

Given that inconvenient I create this repo to keep my configurations up and running and ready to be copied for me to an other machine. At the same time I hope that my configuration could help to some one else.

# Dependencies

First we need to instal [vim-plug](https://github.com/junegunn/vim-plug)

# How to install

## General dependencies

Some server are required due the LSP configuration. Please install the following server:

- [Python](https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#pyright)
- [Better Grep](https://github.com/ggreer/the_silver_searcher)
- nodejs >= 14.14
- vim >= 8.1.1719

## Linux

```bash
$ git clone git@github.com:VictorCabello/PersonalVimSettings.git ~/.vim
```

# Maps Cheat Sheet

In this section I would like to document the different maps that are already implemented on my settings.

    <leader>w         Quick Save 
    *                 On visual mode search current selection
    #                 On visual mode search current selection

## TODO Complete maps




# Special thanks

I took a lot of configurations from [rstacruz](https://github.com/rstacruz/vim-coc-settings), I really recommend you to take a look on his repo and check the way that he organize his settings, it is really awesome.

In the other hand I really like the plugin [vim-plug](https://github.com/junegunn/vim-plug), to make my configuration portable I just copy its main configuration file but I really recommend to take a look on its repo to understand all the nice features that vim-plug provide.
