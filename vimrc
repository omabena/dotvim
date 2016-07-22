execute pathogen#infect() 

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

"Enable autocompletion 
syntax enable
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
autocmd BufNewFile,BufRead COMMIT_EDITMSG setlocal spell

syntax on 
filetype plugin indent on

"mapping 00 to fast jumping up one line in insert mode
inoremap OO <ESC>O

"powerline configs
let g:Powerline_symbols = 'fancy'
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
set laststatus=2
set t_Co=256
