" automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

"better copy paste
set pastetoggle=<F2>
set clipboard+=unnamed
set mouse=a
set bs=2
syntax on

set number
set nowrap
set tw=79 "width of document used by gd
set fo-=t "don't wrap automatically while typing

set fileencodings=iso-2022-jp,euc-jp,cp932,utf8,default,latin1

imap <C-b> <Left>
imap <C-f> <Right>
imap <C-e> <End>
imap <C-a> <Home>
imap <C-j> <Down>
imap <C-k> <Up>

let mapleader = ","
nmap <leader>nt :NERDTree<cr>
"Fast quit and save from normal and insert mode
map <C-X> <ESC>:x<CR>
imap <C-X> <ESC>:x<CR>
if 0 | endif
set showcmd
if has('vim_starting')
   if &compatible
     set nocompatible               " Be iMproved
   endif

   " Required:
   set runtimepath+=~/.vim/bundle/neobundle.vim/
 endif


   " Required:
   call neobundle#begin(expand('~/.vim/bundle/'))
   "
   " Let NeoBundle manage NeoBundle
   " Required:
   NeoBundleFetch 'Shougo/neobundle.vim'
   "
   " My Bundles here:
   " Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!
   NeoBundle 'https://github.com/easymotion/vim-easymotion' 
   NeoBundle 'klen/python-mode'
   let g:pymode_rope = 0
let g:pymode_rope_complete_on_dot = 0
let g:pymode_rope_completion = 0
   " Documentation
 let g:pymode_doc = 1
 let g:pymode_doc_key = 'K'

 "Linting
 let g:pymode_lint = 1
 let g:pymode_lint_checker = "pyflakes,pep8"
 " Auto check on save
 let g:pymode_lint_write = 1

 " Support virtualenv
 let g:pymode_virtualenv = 1

 " Enable breakpoints plugin
 let g:pymode_breakpoint = 1
 let g:pymode_breakpoint_bind = '<leader>b'

 " syntax highlighting
 let g:pymode_syntax = 1
 let g:pymode_syntax_all = 1
 let g:pymode_syntax_indent_errors = g:pymode_syntax_all
 let g:pymode_syntax_space_errors = g:pymode_syntax_all

 " Don't autofold code
 let g:pymode_folding = 0
   NeoBundle 'scrooloose/nerdtree'
NeoBundle 'pangloss/vim-javascript'
   NeoBundle 'davidhalter/jedi-vim'
let g:jedi#rename_command = "<C-r>" 
   " let g:jedi#use_splits_not_buffers = "right" 
   call neobundle#end()
   " Required:
   filetype plugin indent on
   
   " If there are uninstalled bundles found on startup,
   " this will conveniently prompt you to install them.
   NeoBundleCheck
