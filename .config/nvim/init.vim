call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'iCyMind/NeoSolarized'
Plug 'tmhedberg/SimpylFold'
Plug 'vim-scripts/indentpython.vim'
Plug 'Shougo/deoplete.nvim'
Plug 'zchee/deoplete-jedi'
Plug 'ervandew/supertab'
Plug 'kien/ctrlp.vim'
Plug 'vim-syntastic/syntastic'
Plug 'nvie/vim-flake8'
call plug#end()

set termguicolors
colorscheme NeoSolarized

" pane movements
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" folding
set foldmethod=indent
set foldlevel=99
" folding with the spacebar
nnoremap <space> za

" Python PEP8 indentation
au BufNewFile,BufRead *.py
    \ set tabstop=4      |
    \ set softtabstop=4  |
    \ set shiftwidth=4   |
    \ set textwidth=79   |
    \ set expandtab      |
    \ set autoindent     |
    \ set fileformat=unix 

" web files indentation
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2      |
    \ set softtabstop=2  |
    \ set shiftwidth=2   |

" deoplete python autocompletion
let g:deoplete#enable_at_startup = 1

" config based on https://computableverse.com/blog/neovim-guide-python
"
autocmd FileType python nnoremap <leader>y :0,$!yapf<Cr>
autocmd CompleteDone * pclose " To close preview window of deoplete automagically


let python_highlight_all=1
syntax on

set relativenumber

" syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
