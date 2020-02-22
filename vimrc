" NO COMPATIBLE IS MUST
set nocompatible

" MISC
set backspace=indent,eol,start
set backup
set history=50
set ruler
set background=dark
set showcmd
set relativenumber

" SYNTAX
syntax on

" TAB
set tabstop=4		" number of visual spaces per TAB
set softtabstop=4	" number of spaces in tab when editing
set expandtab 		" tabs are spaces
set shiftwidth=4    " when indenting with '>=', use 4 spaces width
set autoindent      " autoindent 
set cindent         " indentation for C files

" AUTOCLOSE
" inoremap " ""<left>
" inoremap ' ''<left>
" iinoremap ( ()<left>
" iinoremap [ []<left>
" iinoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

" SEARCH
set hlsearch		" highlight searches
set incsearch		" search as you type
set ignorecase      " ignore case
set smartcase       " do not ignore case if upper chars

" FOLDING
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max

" KEYMAPPING
inoremap jk <esc>
inoremap kj <esc>
inoremap jj <esc>
" space is leader
let mapleader = " "
" double space is clear search highlight
nnoremap <Leader><space> :noh<cr>
" leader-c is make and execute
map <leader>c :!make '%:r' && ./'%:r'.exe<cr>
map <leader>d :!CXXFLAGS="$CXXFLAGS -O0" make '%:r' && gdb '%:r'.exe<cr>

" Doxygen style comments
map <leader>D :Dox<cr>
let g:DoxygenToolkit_commentType = "C++" 
let g:DoxygenToolkit_compactDoc = "Yes"
let g:DoxygenToolkit_briefTag_pre = ""
source ~/.vim/DoxygenToolkit.vim

" Cool status line
set laststatus=2
set statusline=
set statusline+=%#function#\ %l
set statusline+=\ %*
set statusline+=\ ‹‹
set statusline+=\ %f\ %*
set statusline+=\ ››
set statusline+=\ %m
set statusline+=%#keyword#\ %F
set statusline+=%=
set statusline+=\ ‹‹
set statusline+=\ %{strftime('%R',getftime(expand('%')))}
set statusline+=\ ::
set statusline+=\ %n
set statusline+=\ ››\ %*

" Pathogen is to install plugins located at ~/.vim/bundle folder
execute pathogen#infect()

" Cool colorscheme downloaded from https://github.com/morhetz/gruvbox/
colorscheme gruvbox
highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE

" Change temporary files folder to somewhere else
set backupdir=/usr/tmp
