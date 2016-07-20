set smartindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
nm , :
set nowrap
set number
set nowritebackup
set nobackup
nmap <silent> <C-N> :silent noh<CR>
set ignorecase
set incsearch
set smartcase
set autoindent
set novb
set showcmd
set backspace=indent,eol,start
syntax enable
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
autocmd BufNewFile,BufRead COMMIT_EDITMSG setlocal spell

" Pathogen 
execute pathogen#infect() 
syntax on 
filetype plugin indent on

inoremap OO <ESC>O
