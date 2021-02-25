call plug#begin('~/.vim/plugged')
""""""""""""""""""""""""""""""""""""""""""""""""""""""
"=> File Tree
""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'scrooloose/nerdtree'

""""""""""""""""""""""""""""""""""""""""""""""""""""""
"=> Interface
""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'ryanoasis/vim-devicons'
""""""""""""""""""""""""""""""""""""""""""""""""""""""
"=> Useful menu to invoke taks
""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'skywind3000/quickmenu.vim'

""""""""""""""""""""""""""""""""""""""""""""""""""""""
"=> Git
""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'tpope/vim-fugitive'

""""""""""""""""""""""""""""""""""""""""""""""""""""""
"=>  Insert all inputs with tab
""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'ervandew/supertab'

""""""""""""""""""""""""""""""""""""""""""""""""""""""
"=>  Lang
""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'plasticboy/vim-markdown'

""""""""""""""""""""""""""""""""""""""""""""""""""""""
"=>  Utils
""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'vimwiki/vimwiki'
Plug 'dense-analysis/ale'
" Initialize plugin system
call plug#end()

