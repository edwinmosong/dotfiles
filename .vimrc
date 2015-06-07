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
endif
set colorcolumn=80
highlight ColorColumn ctermbg=DarkGray
set number  	    " Show line numbers
" set textwidth=80    " Line wrap (number of cols)
set showmatch       " Highlight matching brace
set visualbell	    " Use visual bell (no beeping)
set hlsearch	    " Highlight all search results
set smartcase	    " Enable smart-case search
set autoindent	    " Auto-indent new lines
set expandtab	    " Use spaces instead of tabs
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

" set better highlighting colors for matchparen and search
hi Search ctermfg=0 ctermbg=15
hi MatchParen ctermfg=0 ctermbg=15
" set better color for line numbers
hi LineNr ctermfg=grey
