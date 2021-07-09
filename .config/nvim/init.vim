filetype indent on                  " load filetype-specific indent files
syntax on                           " syntax highlighting

set vb t_vb=                        " no visual bell & flash"
set tabstop=4                       " 4 characters long
set softtabstop=4                   " number of spaces in tab while editing
set shiftwidth=4                    " when indenting with >, user 4 spaces width
set expandtab 	                    " tabs are spaces
set smartindent                     " indentation
set nu                              " line numbers
set showmatch                       " highlight matching !!important!!
set wildmenu                        " visual autocomplete for command menu
set showcmd                         " show command in bottom bar
set cursorline                      " highlight current line
set cursorline                      " highlight current line
set mouse=a                         " mouse support?                        
set incsearch                       " search highlighing
set guicursor=                      " vim like cursor behavior


" Fixes for Tmux rendering
" This is only necessary if you use 'set termguicolors'
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" fixes glitch? in colors when using vim with tmux
set background=dark
set t_Co=256
set termguicolors


call plug#begin('~/.vim/plugged')       " vim-plug plugins will be downloaded there
Plug 'vim-airline/vim-airline'          " nice colored bar the the bottom of the file 
Plug 'tpope/vim-fugitive'               " git versioning and bar 
Plug 'sheerun/vim-polyglot'             " syntax highlightning for different languages
Plug 'ervandew/supertab'                " tab autocomplete
Plug 'jiangmiao/auto-pairs'             " auto close brackets
Plug 'plasticboy/vim-markdown'          " Markdown folding 
Plug 'sjl/badwolf'                      " Badwolf colorscheme
Plug 'nathangrigg/vim-beancount'        " beancount plugin
Plug 'embark-theme/vim', { 'as': 'embark'  } " theme
Plug 'morhetz/gruvbox'
Plug 'wojciechkepka/vim-github-dark'
Plug 'psf/black', { 'branch': 'stable' }
Plug 'dracula/vim', { 'as': 'dracula'  }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
"Plug 'neoclide/coc.nvim', {'branch': 'release'} " conquer of completion
call plug#end()                         " vim-plugs should not be declared below this.

colorscheme badwolf                     " colorscheme


" Configuration for vim-markdown plugin
autocmd FileType markdown let g:vim_markdown_new_list_item_indent = 0

" Because we dont want to screw with PEP 8
autocmd FileType python let g:black_linelength = 79         " max file length
nnoremap <C-k> :Black<Cr>

" Clear search highlighting when hitting ESC
nnoremap <esc> :let @/=""<return><esc>

" Ctrl+p for fzf vim
nnoremap <C-p> :GFiles<Cr>

" Spell check for markdown files
autocmd FileType markdown setlocal spell
