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

"=== Search
set hlsearch
set incsearch
set ignorecase
set smartcase
" \n will unhighlight search
nmap <silent> <leader>n :silent :nohlsearch<CR>


"=== Smart indenting
set tabstop=2    " Set the default tabstop
set softtabstop=2
set shiftwidth=2 " Set the default shift width for indents
set expandtab   " Make tabs into spaces (set by tabstop)
set smarttab " Smarter tab levels
set autoindent
set cindent
set cinoptions=:s,ps,ts,cs
set cinwords=if,else,while,do,for,switch,case


"=== Shortcuts
set pastetoggle=<F3>
cmap w!! w !sudo tee % >/dev/null

" \s for seeing tabs spaces
set listchars=tab:>-,trail:·,eol:$
nmap <silent> <leader>s :set nolist!<CR>


"=== Vundle
filetype off                   " required!
set rtp+=~/.vim/bundle/vundle/

call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'

Bundle 'scrooloose/nerdtree.git'
map <F2> :NERDTreeToggle<CR>
" close when no other windows
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif 

Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-markdown' 
Bundle 'henrik/vim-markdown-preview'
Bundle 'bufexplorer.zip'
Bundle 'matchit.zip'

Bundle 'nginx.vim'
au BufRead,BufNewFile /etc/nginx/* set ft=nginx 

Bundle 'git://git.wincent.com/command-t.git'
nmap <silent> <Leader>r :CommandTFlush<CR>

Bundle 'Lokaltog/vim-powerline'
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show unicode glyphs
set t_Co=256 " Terminal colors

Bundle 'scrooloose/syntastic'

filetype plugin indent on