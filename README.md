# Intro

This is a base configuration for my favorite editor. The main idea is to have a clear way to introduce new settings to neovim.

I fond that every plungin needs configuration so instead to have a big file we break in small files one for each plungin.

# Adding new plungin

You need to follow the next steps:

- Update the 'lua/plungin.lua' on the `packer.startup` as `use 'newplugingithubid'`
- Run the command `:PackerSync`
- Add a new file on the folder 'after/plungin' with extension '.rc.lua'

We use packer.vim to handle plungins so more information can be found in their [home page](https://github.com/wbthomason/packer.nvim#quickstart).

# Default Maps

| Mode | Map | Action |
|------|-----|--------|
| Normal | <leader>cd | Change to the dir of current file |
| Normal | <leader>w | Save the current file |
| Normal | <space> | Search |
| Normal | <space><cr> | Clear current search |
| Normal | <leader>w | Save the current file |
| Normal | <C-K> | Move to below panel |
| Normal | <C-J> | Move to above panel |
| Normal | <C-H> | Move to panel on the right |
| Normal | <C-L> | Move to panel on the left |
| Normal | <leader>gb | Show git blame |
| Normal | gD | Go to declaration |
| Normal | gd | Go to definition |
| Normal | gi | Go to implementation |

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
