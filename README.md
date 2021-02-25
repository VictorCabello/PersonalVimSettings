# Personal Vim Settings

I have used vim since 2007, it was a very nice editor and I think it was once of the best investments in my life because even when it was little bit complicated to understand it at the beginning is my first tools when I code or when I need to change configurations files on a server.

The only challenge with this great tool is to try to migrate my settings from one computer to an other one, almost all the time I ends to just look on internet some vimrc samples that help to what I want to do for each moment.

Given that inconvenient I create this repo to keep my configurations up and running and ready to be copied for me to an other machine. At the same time I hope that my configuration could help to some one else.

# How to install

I have this bad luck that because my work I always end working on windows environment so I need to use my favorite text editor in that environment so for me the installation process is simple like to run the following command:

	git clone --depth=1 https://github.com/VictorCabello/PersonalVimSettings.git ~/vimfiles
    
I didn't test it in a linux environment jet but I am sure that the only change after run that command could be just add the following to your **~/.vimrc**.

    source ~/vimfiles/vimrc

# Maps Cheat Sheet

In this section I would like to document the different maps that are already implemented on my settings.

    <leader>w         Quick Save 
    *                 On visual mode search current selection
    #                 On visual mode search current selection
    <space>           Find until the end of the document           
    Crl-<space>       Find until the begining of the document           
    <leader><cr>      Clear search findings
    <leader>bd        Close the current buffer
    <leader>ba        Close all the buffers
    <leader>l         Next buffer
    <leader>h         Previous buffer
    <leader>tn        New Tab
    <leader>to        Close other tabs
    <leader>tc        Close current tab
    <leader>tm        Move Tab
    <leader>t<leader> Next Tab
    <leader>te        Opens a new tab with the current buffer's path
    <leader>cd        Switch CWD to the directory of the open buffer
    <leader>ss        Pressing ,ss will toggle and untoggle spell checking
    <leader>sn        ]s
    <leader>sp        [s
    <leader>sa        zg
    <leader>s?        z=
    <M-j>             Move a line of text using ALT+[jk] or Command+[jk] on mac
    <M-k>             Move a line of text using ALT+[jk] or Command+[jk] on mac
    <M-j>             Move a line of text using ALT+[jk] or Command+[jk] on mac
    <M-k>             Move a line of text using ALT+[jk] or Command+[jk] on mac
    <F12>             Open quick menu (TODO I didn't configure what I want to execute with it)
    <leader>nn        Open file tree on the current path
    <leader>nb        Open file tree on the bookmarks
    <leader>nf        Open file tree on the path of the active file
    <leader>z         Write without distractions or comeback to normality
    <leader>zl        More focus
    <leader>a         Enable/disable the linter

# Note regarding fonts    

Maybe this section is not very important because it is mainly regarding to eye candy but I enjoy those little details that improve my interface meanwhile I am coding.

Some of the plugins that I use like [NerdTree](https://github.com/preservim/nerdtree) or [airline](https://github.com/vim-airline/vim-airline) looks better when you set correctly a powerline font.

In my case I prefer to use [NERD Fonts](https://www.nerdfonts.com/) because that project it is a little more updated. It was easy as go to the download part of the page and choose the font that I like.



# Special thanks

I took a lot of configurations from [amix](https://github.com/amix/vimrc), I really recommend you to take a look on his repo and check the way that he organize his settings, it is really awesome.

In the other hand I really like the plugin [vim-plug](https://github.com/junegunn/vim-plug), to make my configuration portable I just copy its main configuration file but I really recommend to take a look on its repo to understand all the nice features that vim-plug provide.
