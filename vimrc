" vim:fdm=marker

" Gerneral {{{

set nu
set nowrap
set t_Co=256
set noswapfile
set nocompatible
set cursorcolumn
set termguicolors

" CoC {{{
" utf-8 byte sequence
set encoding=utf-8
" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Having longer updatetime (default is 4000 ms = 4s) leads to noticeable
" delays and poor user experience
set updatetime=300

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved
set signcolumn=yes
" }}}

" }}}

" Plug {{{

call plug#begin()
Plug 'NLKNguyen/papercolor-theme'
Plug 'phanviet/vim-monokai-pro'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'


Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'

Plug 'editorconfig/editorconfig-vim'

" Use release branch (recommended)
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
Plug 'neoclide/coc-snippets', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-prettier', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-eslint', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-css', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-lists', {'do': 'yarn install --frozen-lockfile'} " mru and stuff
Plug 'neoclide/coc-highlight', {'do': 'yarn install --frozen-lockfile'} " color highlighting
Plug 'neoclide/coc-angular', {'do': 'yarn install --frozen-lockfile'} " color highlighting
Plug 'neoclide/coc-emmet', {'do': 'yarn install --frozen-lockfile'} " color highlighting


" Git
Plug 'tpope/vim-fugitive'

call plug#end()

" }}}

" Look and Feel {{{
let g:airline_powerline_fonts = 1
set background=dark
colorscheme monokai_pro
" }}}

" Maps {{{
let mapleader = " "
nnoremap <leader>w :w<CR>
" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

nnoremap <leader>n :NERDTreeFocus<CR>
" COC {{{
" https://github.com/neoclide/coc.nvim#example-vim-configuration
inoremap <silent><expr> <c-space> coc#refresh()

" gd - go to definition of word under cursor
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)

" gi - go to implementation
nmap <silent> gi <Plug>(coc-implementation)

" gr - find references
nmap <silent> gr <Plug>(coc-references)

" gh - get hint on whatever's under the cursor
nnoremap <silent> K :call <SID>show_documentation()<CR>
nnoremap <silent> gh :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction


" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

nnoremap <silent> <leader>co  :<C-u>CocList outline<cr>
nnoremap <silent> <leader>cs  :<C-u>CocList -I symbols<cr>

" List errors
nnoremap <silent> <leader>cl  :<C-u>CocList locationlist<cr>

" list commands available in tsserver (and others)
nnoremap <silent> <leader>cc  :<C-u>CocList commands<cr>

" restart when tsserver gets wonky
nnoremap <silent> <leader>cR  :<C-u>CocRestart<CR>

" view all errors
nnoremap <silent> <leader>cl  :<C-u>CocList locationlist<CR>

" manage extensions
nnoremap <silent> <leader>cx  :<C-u>CocList extensions<cr>

" rename the current word in the cursor
nmap <leader>cr  <Plug>(coc-rename)
nmap <leader>cf  <Plug>(coc-format-selected)
vmap <leader>cf  <Plug>(coc-format-selected)

" run code actions
vmap <leader>ca  <Plug>(coc-codeaction-selected)
" }}}
" }}}

" Search files {{{
set history=200
set path+=**
set wildmode=full
set wildignore+=*.o,*~,*.pyc,*/.DS_Store
set wildignore+=*/Library/*,*/node_modules/*,*/.git/*,*/.hg/*,*/.svn/*
set wildmenu
" }}}
