"https://github.com/tpope/vim-pathogen
call pathogen#infect()
call pathogen#helptags()


filetype plugin indent on   	" Automatically detect file types.
syntax on 			" Turn code syntax highlighting on.
colorscheme ir_black 		" Set colorscheme.
set virtualedit=onemore         " Allow for cursor beyond last character.
set history=1000                " Store a ton of history (default is 20).
" set spell                       " Spell checking on.

" UI
set showmode                    " display the current mode
set cursorline                  " highlight current line
hi cursorline guibg=#333333     " highlight bg color of current line
hi CursorColumn guibg=#333333   " highlight cursor
set backspace=indent,eol,start  " backspace for dummys
set linespace=0                 " No extra spaces between rows
set nu                          " Line numbers on
set showmatch                   " show matching brackets/parenthesis
set incsearch                   " find as you type search
set hlsearch                    " highlight search terms

" Split
set splitbelow
set splitright

" NERDTree
let g:NERDTreeWinSize = 25

" Format
set autoindent                  " indent at the same level of the previous line
set shiftwidth=2                " use indents of 4 spaces
set expandtab                   " tabs are spaces, not tabs
set tabstop=2                   " an indentation every four columns
set softtabstop=2               " let backspace delete indent

" Key Mapping

" Ctrl P
let g:ctrlp_map = '<c-t>' " because I used textmate once....
let g:ctrlp_cmd = 'CtrlP'

" Easier moving in tabs and windows
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
map <C-L> <C-W>l<C-W>_
map <C-H> <C-W>h<C-W>_
map <C-K> <C-W>k<C-W>_

" Wrapped lines goes down/up to next row, rather than next line in file.
nnoremap j gj
nnoremap k gk

" Stupid shift key fixes
cmap W w                        
cmap WQ wq
cmap wQ wq
cmap Q q
cmap Tabe tabe

" For when you forget to sudo.. Really Write the file.
cmap w!! w !sudo tee % >/dev/null

