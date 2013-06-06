execute pathogen#infect()
syntax on
" color scheme wombat
colorscheme vividchalk  
filetype plugin indent on

" Spelling

set spelllang=pt,en
set spell

" Encoding

set encoding=utf-8
set fileencoding=utf-8

" Custom commands

command! -nargs=1 Silent
      \ | execute ':silent !'.<q-args>
      \ | execute ':redraw!'

" Mappings

nnoremap <C-L> :nohl<CR><C-L>
map <F2> :w \| silent execute "!make&>/dev/null &" \| redraw!<CR>
" Other

set viminfo='10,\"100,:20,%,n~/.viminfo

function! ResCur()
        if line("'\"") <= line("$")
                normal! g`"
                return 1
        endif
endfunction

augroup resCur
        autocmd!
        autocmd BufWinEnter * call ResCur()
augroup END

let g:tex_fold_enabled=1
let r_syntax_folding = 1

imap <F3> <Esc>[s1z=`]A

set synmaxcol=1024
set nocursorline

set tw=60

set hidden
set confirm
set autowriteall
set wildmenu
set showcmd
set hlsearch
set nomodeline
set ignorecase
set smartcase
set autoindent
set visualbell

set mouse=a

set shiftwidth=4
set softtabstop=4
set expandtab
set nocompatible
set background=dark
set lbr
set nobackup
set noswapfile
set shortmess=at

" map <C-n> :NERDTreeToggle<CR>
map <C-n> <plug>NERDTreeTabsToggle<CR>k

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

nnoremap <Leader>s :%s/\<<C-r><C-w>\>/

au FocusLost * :wa
