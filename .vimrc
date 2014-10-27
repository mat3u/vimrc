" .vimrc by Matt Stasch <matt.stasch@outlook.com>
" http://github.com/mat3u/vimrc

set nocompatible    " not compatible with old vi

autocmd! bufwritepost .vimrc source %

filetype off

set rtp+=S:/Dropbox/Env/misc/vimrc/.viminfo/bundle/Vundle.vim
let path='S:/Dropbox/Env/misc/vimrc/.viminfo/bundle'
call vundle#begin(path)
" Plugins here

Plugin 'bling/vim-airline'
Plugin 'tomasr/molokai.git'
Plugin 'tpope/vim-fugitive'

Plugin 'gmarik/Vundle.vim'
" Plugin 'klen/python-mode'

" NERD Tree
" Bundle 'scrooloose/nerdtree'
" Bundle 'jistr/vim-nerdtree-tabs'

" Snipmate
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
set fo-=t                       " don't wrap text when typing
set tabstop=4
set softtabstop=4
set expandtab                   " expand tabs by default
set shiftwidth=4
set tw=79                       " Width of document
" set colorcolumn=80
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

set fileformats=unix,dos,mac    " Line endings
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

set clipboard=unnamed                   " Set system clipboard as default

" Airline setup
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'powerlineish'
let g:airline_powerline_fonts = 1

set splitbelow
set splitright

" Handy shortcuts

set pastetoggle=<F2>

" Private shortcuts
if !exists("WQ")
    map <leader>w :w<cr>                " \w - save file
    map <leader>= gg=G                  " \= - indent whole file
    map <leader>v :vsp<cr>              " \v - vertical split
    map <leader>h :sp<cr>               " \h - horizontal split
    map <leader>q :q<cr>                " \q - quit
    map <leader>t :tabnew<cr>           " \t - new tab

    map <Leader>n <plug>NERDTreeTabsToggle<CR>

    vnoremap <C-c> :y+<cr>              " Ctrl+C copies selected text in Visual Mode

    map <leader>[ <esc>:tabprevious<cr> " Change tabs with <leader> [ and ]
    map <leader>] <esc>:tabnext<cr>

    command! WQ wq
    command! Wq wq
    command! W w
    command! Q q

    " allow multiple indentation/deindentation in visual mode
    vnoremap < <gv
    vnoremap > >gv

endif

" omnicompletion
set omnifunc=syntaxcomplete#Complete

" Look 'n feel

colorscheme molokai 

if has('gui_running')
    "so gui.vim
    set guifont=Powerline\ Consolas:h11 

    set guioptions-=m  "remove menu bar
    set guioptions-=T  "remove toolbar
    set guioptions-=r  "remove right-hand scroll bar
    set guioptions-=L  "remove left-hand scroll bar

    map <F10> <ESC>:set guifont=Powerline\ Consolas:h15<cr>
    map <F11> <ESC>:set guifont=Powerline\ Consolas:h11<cr>

    colorscheme glacier
endif
