" vundle {{{1

" needed to run vundle (but i want this anyways)
set nocompatible

" vundle needs filtype plugins off
" i turn it on later
filetype plugin indent off
syntax off

" set the runtime path for vundle
set rtp+=~/.vim/bundle/Vundle.vim

" start vundle environment
call vundle#begin()

" list of plugins {{{2
" let Vundle manage Vundle (this is required)
Plugin 'gmarik/Vundle.vim'

" to install a plugin add it here and run :PluginInstall.
" to update the plugins run :PluginInstall! or :PluginUpdate
" to delete a plugin remove it here and run :PluginClean
 
" YOUR LIST OF PLUGINS GOES HERE LIKE THIS:
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'davidhalter/jedi-vim'
" Plugin 'klen/python-mode' (too slow and buggy!)
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
" Plugin 'gertjanreynaert/cobalt2-vim-theme'

" add plugins before this
call vundle#end()

" now (after vundle finished) it is save to turn filetype plugins on
filetype plugin indent on
syntax on

" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

let mapleader=","
if has("gui_running")
    syntax on
    set hlsearch
    colorscheme slate
    set bs=2
    set ai
    set ruler
    set guifont=Monaco\ for\ Powerline:h24
    set softtabstop=4   " Number of spaces per Tab
    set tabstop=4       " Force number of spaces for Tab
    highlight ColorColumn guibg=LemonChiffon3
    set colorcolumn=80
    set expandtab	    " Use spaces instead of tabs
endif
set colorcolumn=81
" highlight OverLength ctermbg=red ctermfg=white guibg=#592929
" match OverLength /\%81v.\+/
set number  	    " Show line numbers
set showmatch       " Highlight matching brace
set visualbell	    " Use visual bell (no beeping)
set hlsearch	    " Highlight all search results
set expandtab	    " Use spaces instead of tabs
set smartcase	    " Enable smart-case search
set autoindent	    " Auto-indent new lines
set shiftwidth=4    " Number of auto-indent spaces
set smartindent	    " Enable smart-indent
set smarttab	    " Enable smart-tabs
set softtabstop=4   " Number of spaces per Tab
set tabstop=4       " Force number of spaces for Tab
set ruler	    " Show row and column ruler information
set undolevels=1000 " Number of undo levels
set backspace=indent,eol,start	" Backspace behaviour
set incsearch       " inc search to match substrings when searching
set ignorecase      " Case insensitive search
set scrolloff=5     " context of 5 lines after/before cursor 
set history=1000    " remember more commands and search history
set undolevels=1000 " use many levels of undo
set title
set matchpairs+=<:>
set matchpairs+=(:)
set matchpairs+=[:]
set matchpairs+={:}
set mouse=a         " enable mouse functionality
syntax on           " enable syntax hightlighting

" binds \ to finding merge conflict!
function! FindConflict()
    try
        /<<<<<<
    catch
    endtry
endfunction
nnoremap \ :call FindConflict()<CR>

" Powerline settings
set guifont=Monaco\ for\ Powerline:h24
source /usr/local/lib/python2.7/site-packages/powerline/bindings/vim/plugin/powerline.vim
" Always show statusline
set laststatus=2
let g:Powerline_symbols = 'fancy'

" Uses OS X clipboard
set clipboard=unnamed

" Press Space to toggle highlighting on/off, and show current value.
:noremap <Space> :set hlsearch! hlsearch?<CR>

" Indent blocks left or right
vnoremap < <gv
vnoremap > >gv

" Splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitbelow  " splits below
set splitright  " splits right

" Fold settings
set foldlevel=99            " Unfolded by default

color wombat256mod
set t_Co=256

" Ropevim options
let ropevim_vim_completion=1
let ropevim_extended_complete=1
