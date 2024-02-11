" vim:fdm=marker
" General {{{
"" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set ttyfast

"" Fix backspace indent
set backspace=indent,eol,start

"" Tabs. May be overridden by autocmd rules
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab

"" Map leader to ,
let mapleader=' '

"" Enable hidden buffers
set hidden

"" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase
set nobackup

set fileformats=unix,dos,mac

set shell=pwsh.exe


set cursorline
set cursorcolumn
set relativenumber
set number

set noswapfile

syntax on

"" Copy/Paste/Cut
if has('unnamedplus')
  set clipboard=unnamed,unnamedplus
endif

set grepprg=git\ grep\ -n

" }}}

" Plugins {{{
call plug#begin()

" status line
Plug 'itchyny/lightline.vim'

" theme
Plug 'https://github.com/morhetz/gruvbox'

" fuzzy search
Plug 'Donaldttt/fuzzyy'

" IDE capabilties
Plug 'yegappan/lsp'

" Git {{{
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-rhubarb' " required by fugitive to :Gbrowse
"}}}

" Utility {{{
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'dense-analysis/ale'
Plug 'sheerun/vim-polyglot'
Plug 'mbbill/undotree'
Plug 'editorconfig/editorconfig-vim'
" }}}

"" HTML Bundle
Plug 'mattn/emmet-vim'

call plug#end()

" }}}

" Visual Settings {{{

set background=dark
" colorscheme onehalfdark
colorscheme gruvbox
set laststatus=2
let g:lightline = {
            \ 'colorscheme': 'gruvbox',
            \ }
let g:lightline.separator = { 'left': '', 'right': '' }
let g:lightline.subseparator = { 'left': '', 'right': '' }
let g:lightline.component = {'lineinfo': ' %3l:%-2v',}
let g:lightline.component_function = {'gitbranch': 'FugitiveHead',}
let g:lightline.active = {
            \ 'left': [
            \ [ 'mode', 'paste' ], 
            \ [ 'gitbranch', 'readonly', 'filename', 'modified' ]
            \ ],
            \ 'right': [
            \ [ 'lineinfo' ], [ 'percent' ], [ 'fileformat', 'fileencoding', 'filetype' ] ] }

" Better command line completion
set history=200
set wildmenu
set wildmode=full
set wildignore+=*.o,*~,*.pyc,*/.DS_Store
set wildignore+=*/Library/*,*/node_modules/*,*/.git/*,*/.hg/*,*/.svn/*

" mouse support
set mouse=a

set mousemodel=popup
set termguicolors
set t_Co=256


"" Disable the blinking cursor.
set gcr=a:blinkon0

set scrolloff=3

" Disable visualbell
set noerrorbells visualbell t_vb=
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb=
endif
hi Normal guibg=NONE ctermbg=NONE

" }}}

" Language Servers {{{
let lspOpts = #{autoHighlightDiags: v:true}
autocmd VimEnter * call LspOptionsSet(lspOpts)


let lspServers = [#{
\    name: 'typescriptlang',
\    filetype: ['javascript', 'typescript'],
\    path: 'powershell',
\    args: ['typescript-language-server.ps1', '--stdio'],
\  }, #{
\    name: 'vimls',
\    filetype: ['vim'],
\    path: 'powershell',
\    args: ['vim-language-server.ps1', '--stdio'],
\  }, #{
\    name: 'pythonlang',
\    filetype: ['python'],
\    path: 'powershell',
\    args: ['jedi-language-server.exe'],
\  }, #{
\    name: 'marksman',
\    filetype: ['markdown'],
\    path: 'powershell',
\    args: ['marksman.exe', 'server'],
\    syncInit: v:true 
\  }]
autocmd VimEnter * call LspAddServer(lspServers)
" }}}

" Mappings {{{

" Search {{{
" These will make it so that going to the next one in a
" search will center on the line it's found in.
nnoremap n nzzzv
nnoremap N Nzzzv

"" Clean search (highlight)
nnoremap <silent> <leader><esc> :noh<cr>
" }}}

"" Split {{{
noremap <Leader>h :<C-u>split<CR>
noremap <Leader>v :<C-u>vsplit<CR>
" }}}

"" Set working directory
nnoremap <leader>. :lcd %:p:h<CR>

" Copy/Paste {{{
noremap YY "+y<CR>
noremap <leader>p "+P<CR>
noremap XX "+x<CR>
" }}}

" `help undotree.txt`
noremap <leader>u :UndotreeToggle<CR>

noremap <leader>w :w<CR>

"" Close buffer
noremap <leader>c :bd<CR>

"" Move visual block
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

"" Open current line on GitHub
nnoremap <Leader>o :.GBrowse<CR>

" Fuzzy Finder {{{
let g:enable_fuzzyy_keymaps = 0
noremap <silent> <leader><leader> :FuzzyBuffers<CR>
noremap <silent> <leader>/ :FuzzyInBuffer<CR>
noremap <silent> <leader>f :FuzzyGitFiles<CR>
" }}}


" LSP {{{
noremap <silent> [d :LspDiag prev<CR>
noremap <silent> ]d :LspDiag next<CR>
noremap <silent> gd :LspGotoDefinition<CR>
noremap <silent> gr :LspPeekReferences<CR>
noremap <silent> gI :LspPeekImpl<CR>
noremap <silent> <leader>D :LspPeekTypeDef<CR>
noremap <silent> <leader>ds :LspDocumentSymbol<CR>
noremap <silent> <leader>ws :LspSymbolSearch<CR>
noremap <silent> <leader>ca :LspCodeAction<CR>
noremap <silent> K :LspHover<CR>
" }}}
" }}}
