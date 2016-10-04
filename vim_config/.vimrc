set nobackup
set nowritebackup
set noswapfile
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4
set autoindent
set smarttab
filetype indent on
filetype on
filetype plugin on

set bs=2

" Text wrap for Python and C files at 79 chars
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h set textwidth=79

" Use jk  as <ESC> alternative
inoremap jk <ESC>

" Set the leader character
let mapleader = ","

" Enable sytax highlighting
let python_highlight_all=1
syntax on

" RUn Python code from Vim
" map <f5> :w <CR>!clear <CR>:!python % <CR>

" Toggle between normal and and relative line numbers on <leader>l
nnoremap <leader>l :call ToggleRelativeAbsoluteNumber()<CR>
function! ToggleRelativeAbsoluteNumber()
  if &number
    set relativenumber
  else
    set number
  endif
endfunction

