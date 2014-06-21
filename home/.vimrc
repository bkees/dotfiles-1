"=== Some defaults
set nocompatible
syntax on
set hidden
set history=1000
set title
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set ruler
set shortmess=atI
set backspace=indent,eol,start " better backspace
set scrolloff=5
set mouse=a

"=== Search
set hlsearch
set incsearch
set ignorecase
set smartcase
" \n will unhighlight search
nmap <silent> <leader>n :silent :nohlsearch<CR>


"=== Smart indenting
set tabstop=4    " Set the default tabstop
set softtabstop=4
set shiftwidth=4 " Set the default shift width for indents
set expandtab   " Make tabs into spaces (set by tabstop)
set smarttab " Smarter tab levels
set autoindent
set cindent
set cinoptions=:s,ps,ts,cs
set cinwords=if,else,while,do,for,switch,case
set wildignore+=*.pyc,*/venv/*,*/s/*


"=== Shortcuts
set pastetoggle=<F3>
map <F4> :source ~/.vimrc<CR>
map <F5> :edit ~/.vimrc<CR>
cmap w!! w !sudo tee % >/dev/null

" \s for seeing tabs spaces
set listchars=tab:>-,trail:·,eol:$
nmap <silent> <leader>s :set nolist!<CR>

"=== Vundle
filetype off                   " required!
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/vundle'

" Rails
Plugin 'tpope/vim-rails.git'
Plugin 'tpope/vim-bundler.git'
Plugin 'tpope/vim-endwise'

Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

Plugin 'scrooloose/nerdtree.git'
map <F2> :NERDTreeToggle<CR>
" close when no other windows
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

Plugin 'tpope/vim-markdown'
Plugin 'henrik/vim-markdown-preview'
Plugin 'groenewege/vim-less'
Plugin 'nono/vim-handlebars'
au BufRead,BufNewFile *.handlebars,*.hbs,*.hjs set ft=handlebars
Plugin 'bufexplorer.zip'
Plugin 'matchit.zip'

Plugin 'nginx.vim'
au BufRead,BufNewFile /etc/nginx/* set ft=nginx

Plugin 'kien/ctrlp.vim'

Plugin 'Lokaltog/vim-powerline'
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show unicode glyphs
set t_Co=256 " Terminal colors

Plugin 'scrooloose/syntastic'
map <F9> :SyntasticToggleMode<CR>

" Working with Django
Plugin 'django.vim'
Plugin 'pydoc.vim'

" Coffeescript
Plugin 'kchmck/vim-coffee-script'
Plugin 'mintplant/vim-literate-coffeescript'

" Pysmell Autocompletion for Python
autocmd FileType python setlocal omnifunc=pysmell#Complete

" C++ compile and run
Plugin 'xuhdev/SingleCompile'
map <silent> <F9> :SCCompileRun <CR>

call vundle#end()
filetype plugin indent on
