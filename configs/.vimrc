"----------------------PLUGINS-----------------------"
" vundle {{{1

" needed to run vundle (but i want this anyways)
set nocompatible

" vundle needs filtype plugins off " i turn it on later
filetype plugin indent off
syntax off

" set the runtime path for vundle
set rtp+=~/.vim/bundle/Vundle.vim

" set the runtime path for fzf
set rtp+=~/.fzf

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
Plugin 'fatih/vim-go'
" Plugin 'kien/ctrlp.vim' " replaced by fzf
Plugin 'davidhalter/jedi-vim'
Plugin 'klen/python-mode' " (too slow and buggy!)
Plugin 'tpope/vim-fugitive'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'airblade/vim-gitgutter'
" Plugin 'jeffkreeftmeijer/vim-numbertoggle'
Plugin 'tpope/vim-commentary'
Plugin 'kshenoy/vim-signature'
Plugin 'morhetz/gruvbox'
Plugin 'junegunn/goyo.vim'
Plugin 'hdima/python-syntax'
" Plugin 'Valloric/YouCompleteMe'
" Plugin 'vim-scripts/pylint-mode'
" Plugin 'joeytwiddle/sexy_scroller.vim'
" Plugin 'scrooloose/syntastic'
" Plugin 'gertjanreynaert/cobalt2-vim-theme'

" add plugins before this
call vundle#end()
"----------------------PLUGINS-----------------------"
"------------------CONFIG PLUGINS--------------------"
" Ropevim options
let g:pymode_rope = 0
" Pymode hanging when autocomplete workaround...
let g:pymode_rope_autoimport = 0

"------------------CONFIG PLUGINS--------------------"


" now (after vundle finished) it is save to turn filetype plugins on
filetype plugin indent on
syntax on

" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

colorscheme gruvbox

" Powerline settings
set guifont=InputMono\ ExLight:h13
source /usr/local/lib/python2.7/site-packages/powerline/bindings/vim/plugin/powerline.vim

set background=dark
set t_Co=256
let g:enable_bold_font = 1
set laststatus=2
let g:Powerline_symbols = 'fancy'
set colorcolumn=81
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
set foldlevel=1            " Fold all by default
set foldmethod=syntax       " Fold by syntax
set clipboard=unnamed " shares clipboard with OS X
syntax on           " enable syntax hightlighting
set cursorline      " enable cursorline
set nowrap          " disable wrapping
set nolist          " disable listchars
set listchars=tab:▸…,eol:¬,trail:•
set nornu           " disable relative numbers

"----------------------FUNCTIONS.MISC-----------------------"
" binds \ to finding merge conflict!
function! FindConflict()
    try
        /<<<<<<
    catch
    endtry
endfunction
nnoremap \ :call FindConflict()<CR>

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

" indent guides
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
set ts=4 sw=4 et

" enable indentLine by default
let g:indentLine_enabled = 1
let g:indentLine_char = '┊'
let g:indent_guides_enable_on_vim_startup = 0

" set custom indent colors
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=lightgrey
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=lightgrey

" use colors depending on git-gutter to display  mark colors
let g:SignatureMarkTextHLDynamic = 1

if &term =~ '^screen'
    " tmux will send xterm-style keys when its xterm-keys option is on
    execute "set <xUp>=\e[1;*A"
    execute "set <xDown>=\e[1;*B"
    execute "set <xRight>=\e[1;*C"
    execute "set <xLeft>=\e[1;*D"
endif

" " Color Changes
" " .....................................
" hi LineNr                    ctermfg=green   ctermbg=black
" hi NERDTreeCWD               ctermfg=black
" hi NERDTreeLink              ctermfg=cyan
" hi NERDTreeExecFile          ctermfg=green
" hi SyntasticStyleWarningSign ctermfg=yellow  ctermbg=black
" hi SyntasticStyleErrorSign   ctermfg=red     ctermbg=black
" hi SyntasticWarningSign      ctermfg=yellow  ctermbg=black
" hi SyntasticErrorSign        ctermfg=red     ctermbg=black
hi SignColumn                ctermbg=none
hi GitGutterAdd              ctermfg=green   ctermbg=none
hi GitGutterChange           ctermfg=yellow  ctermbg=none
hi GitGutterDelete           ctermfg=red     ctermbg=none
hi GitGutterChangeDelete     ctermfg=blue    ctermbg=none
" hi vertsplit                 ctermfg=green   ctermbg=green
" hi ColorColumn               ctermbg=darkred
" hi Normal                    ctermbg=none

" Turns off docstring at the bottom for jedi-vim
autocmd FileType python setlocal completeopt-=preview

" 2 spaces for tabs in yml files
au FileType yaml setlocal tabstop=2 expandtab shiftwidth=2 softtabstop=2
