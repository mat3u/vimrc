" .vimrc by Matt Stasch <matt.stasch@outlook.com>
" http://github.com/mat3u/vimrc

set nocompatible    " not compatible with old vi

filetype off

set rtp+=S:/Dropbox/Env/misc/vimrc/.viminfo/bundle/Vundle.vim
let path='S:/Dropbox/Env/misc/vimrc/.viminfo/bundle'
call vundle#begin(path)
" Plugins here

Plugin 'bling/vim-airline'
Plugin 'tomasr/molokai.git'

Plugin 'gmarik/Vundle.vim'

Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"

" Optional:
Bundle "honza/vim-snippets"

" End of plugins
call vundle#end()            " required
filetype plugin indent on

" so basic.vim
syntax on
set showmode                    " always show mode
set nowrap                      " don't wrap lines
set tabstop=4
set softtabstop=4
set expandtab                   " expand tabs by default
set shiftwidth=4
set backspace=indent,eol,start "allow backspacing over everything in insert mode
set autoindent
set copyindent
set number
set showmatch                   " show matching parenthesis
set ignorecase                  " ignore case when searching
set smartcase                   " ignore cs when lowercase, otherwise don't ignore
set smarttab
set scrolloff=5                 " keep 5 lines off the edges of screen when scrolling

set hlsearch                    " highlight search terms
set incsearch                   " show search matches as you type
set pastetoggle=<F2>            " when in INSERT, <F2> enables paste mode
set mouse=a                     " if terminal supports it

set fileformats="unix,dos,mac"
set shortmess+=I                " hide welcome msg

set fileencoding=utf-8
set encoding=utf-8

set wildmenu
set wildignore=*.dll,*.o,*.obj,*.bak,*.exe,*.pyc,*.png,*.gif,*.jpg,*.swp
set wildmode=list:longest

set nobackup
set noswapfile

set visualbell
set noerrorbells
set showcmd
set nomodeline

set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'powerlineish'
let g:airline_powerline_fonts = 1

noremap! <F1> <Esc>

set splitbelow
set splitright

" Handy shortcuts

map <leader>w :w<cr>                " \w - save file
map <leader>= gg=G                  " \= - indent whole file
map <leader>v :vsp<cr>              " \v - vertical split
map <leader>h :sp<cr>               " \h - horizontal split
map <leader><leader> :q<cr>         " \\ - quit
map <leader>t :tabnew<cr>           " \t - new tab

command WQ wq
command Wq wq
command W w
command Q q

" allow multiple indentation/deindentation in visual mode
vnoremap < <gv
vnoremap > >gv

" omnicompletion
set omnifunc=syntaxcomplete#Complete

" Look 'n feel

colorscheme molokai

if has('gui_running')
    "so gui.vim
    set guifont=Ubuntu Mono:h11
endif
