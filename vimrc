" Automatric reloading of .vimrc
autocmd! bufwritepost .vimrc source %

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'tpope/vim-markdown'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-surround'
Plugin 'kien/ctrlp.vim'
Plugin 'SirVer/ultisnips'
Plugin 'ConradIrwin/vim-bracketed-paste'
Plugin 'jpalardy/vim-slime'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

let g:slime_target = "tmux"

let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:ctrlp_cmd='CtrlP :pwd'

" snippets
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

let g:UltiSnipsEditSplit="vertical"

" always show that status line
set laststatus=2

" faster redrawing
set ttyfast

" Set the boolean number option to true set number set number
set number

" Highlight current line
set cursorline 

" Set the text width option to '74'
set tw=74 wrap linebreak

" Set the tab options
set smarttab
set autoindent
set tabstop=2
set shiftwidth=2
set expandtab
set visualbell

" normal tabs for Makefile and go
autocmd FileType make setlocal noexpandtab
autocmd FileType go setlocal noexpandtab
 
" Set incremental search
set incsearch
set ignorecase 
set smartcase
" Highlighting
set hlsearch

" wildmode
set wildmode=longest,list

" Folding settings
set foldmethod=marker
set foldnestmax=10
set nofoldenable
set foldlevel=0

" Spelling
set spelllang=en_us

" Disable swap files
set noswapfile
set nowritebackup 
" Disable backup copy
set backupcopy=yes

" Colors
syntax enable
try
  colorscheme solarized
catch /^Vim\%((\a\+)\)\=:E185/
  " ohh well
endtry
let g:airline_powerline_fonts = 1

" enable mouse scrolling
set mouse=a

" fix copy paste in vim for tmux
set clipboard=unnamed

" Disable ex-mode
map Q <Nop>

" It hurts to hit \ all of the time :-(
let mapleader=','

" Quick save command
noremap  <leader>s :update<CR>
"vnoremap <leader>s :update<CR>
"inoremap <leader>s :update<CR>

" Creating new tabs
map <leader>n <Esc>:tabnew<CR>
map gn <Esc>:tabnew<CR>
map gl <Esc>:tabnext<CR>
map gh <Esc>:tabprev<CR>

" Quit
noremap <leader>q :quit<CR>
noremap <leader>Q :quitall<CR>

" Highlight searching
noremap <leader>c :set nohlsearch<CR>
noremap <leader>C :set hlsearch<CR>

" Exit insert mode
inoremap kj <Esc>
inoremap kJ <Esc>
inoremap Kj <Esc>
inoremap KJ <Esc>

" Sort function
vnoremap <leader>r :sort<CR>

" Block indenting
vnoremap > >gv
vnoremap < <gv

" Quickly wrap a long line
nnoremap <leader>w mkVgq`k
" Wrap an entire file
noremap <leader>W gg200\w}j
" Quickly unwrap a paragraph
noremap <leader>u mk{jV}kJ`k

" Remove annoying whitespace for line
noremap <leader>e :s/\\s*$//<CR>
" Remove annoying whitespace for file
noremap <leader>E :%s/\s*$//<CR>

" Moving around splits
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" Magnify the current split
noremap <leader>m <C-w>_
" Restore split windows
noremap <leader>r <C-w>=

" I can finally paste again.
nnoremap <F2> :set invpaste paste?<CR>
set showmode

" Toggle spelling 
imap <Leader>s <C-o>:setlocal spell! spelllang=en_gb<CR>
nmap <Leader>s :setlocal spell! spelllang=en_gb<CR>

" Open NERDTree file navigator
noremap <leader>t :NERDTree<CR>

" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>

" Open the .vimrc file
command! V :e ~/.vimrc
noremap <leader>v :tabnew ~/.vimrc <CR>
