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

## Linux

```bash
$ git clone git@github.com:VictorCabello/PersonalVimSettings.git ~/.config/nvim
```

# Default Maps

| Mode | Map | Action |
|------|-----|--------|
| Normal | <leader>cd | Change to the dir of current file |
| Normal | <leader>w | Save the current file |
| Normal | <leader>gb | Show git blame |
| Normal | <leader>gd | Go to definition |
| Normal | <leader>gy | Go to type definition |
| Normal | <leader>gi | Go to implementation |
| Normal | <leader>gr | Go to references |
| Normal | K | Show documentation |
| Normal | <leader>rn | Rename |
| Normal | <leader>f | Format selected |
| Normal | <leader>a | Code action |
| Normal | <leader>ac | Code action in cursor position |
| Normal | <leader>as | Code action in all file |
| Normal | <leader>qf | Quickfix action on current cursor position|
| Normal | <leader>re | Apply code refactor |
| Normal | <leader>r | Apply code refactor on selection |
| Normal | <C-s> | Range select |
| Normal | <leader>y | Yank list |
| Normal | <leader>f | Find a file |
| Normal | \\\\ | Find a buffer |
| Normal | <leader>t | Find a tag |
| Normal | <leader><leader>t | Resume last find |
| Normal | <leader>e | Find diagnostic |
| Normal | <leader>r | Live grep |
| Normal | <leader>sf | File browser |

# Surround

```

    Old text                    Command         New text
--------------------------------------------------------------------------------
    surr*ound_words             ysiw)           (surround_words)
    *make strings               ys$"            "make strings"
    [delete ar*ound me!]        ds]             delete around me!
    remove <b>HTML t*ags</b>    dst             remove HTML tags
    'change quot*es'            cs'"            "change quotes"
    <b>or tag* types</b>        csth1<CR>       <h1>or tag types</h1>
    delete(functi*on calls)     dsf             function calls
```
