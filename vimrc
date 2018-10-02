syntax enable
set number
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab
set autoindent
set splitright
set splitbelow
set colorcolumn=80
set mouse=a

" Powerline settings
let $PYTHONPATH = 'home/jason/.local/lib/python3.6/site-packages'
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup
set laststatus=2
set showtabline=2
set noshowmode
" set t_Co=256
" vim-plug
call plug#begin()
Plug 'valloric/youcompleteme'
Plug 'stannangeloff/php.vim'
Plug 'vim-scripts/c.vim'
Plug 'rust-lang/rust.vim'
Plug 'flazz/vim-colorschemes'
Plug 'tpope/vim-surround'
Plug 'plasticboy/vim-markdown'
Plug 'pangloss/vim-javascript'
Plug 'klen/python-mode'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'thaerkh/vim-workspace'
Plug 'crusoexia/vim-monokai'
call plug#end()
colorscheme monokai
let g:pymode_python = 'python3'
if has('gui_running')
    set guifont=Source\ Code\ Pro\ 11
endif
