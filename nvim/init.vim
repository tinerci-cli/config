syntax on

call plug#begin()
Plug 'https://github.com/gruvbox-community/gruvbox' "gruvbox colorscheme
Plug 'https://github.com/norcalli/nvim-colorizer.lua' "show written colors as real colors
Plug 'https://github.com/mbbill/undotree' "ctrl h to toggle undotree
Plug 'https://github.com/junegunn/fzf', { 'do': { -> fzf#install() } } "dependencie of fzf.vim
Plug 'https://github.com/junegunn/fzf.vim' "use fzf with vim
Plug 'https://github.com/junegunn/vim-slash' "cool search
Plug 'https://github.com/tpope/vim-commentary' "commenting faster
call plug#end()

"cool numbers
set number "get linenumber
set relativenumber "show other linenumbers realtive to current line
"search
set hlsearch "highlight search results
set wildmode=longest,list
set incsearch "search as you type
set exrc "vim config per folder
set mouse=vi "mouse support in visual & insert
set smartcase
"tabs
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
"quality of life
"set nowrap
set colorcolumn=100
set signcolumn=auto
set scrolloff=20
set termguicolors
"Backups
set nohidden
set noswapfile
set nobackup
set undodir=~/.local/share/nvim/undodir
set undofile

"key mappings
map <F2> :%s/\s\+$//e <CR>
map <F12> :set number! relativenumber! <CR>
map <C-h> :UndotreeToggle <CR>
nnoremap j gj
nnoremap k gk
nnoremap <C-j> gt
nnoremap <C-k> gT
let mapleader = ","
nnoremap  <leader>y  "+yy
nnoremap  <leader>p  "+p
nnoremap  <leader>P  o<ESC>"+P
nnoremap <leader>f :Files .<CR>

"theming
colorscheme gruvbox
set background=dark
highlight Normal guibg=none

"plugin specific
"force usage of colorizer
lua require'colorizer'.setup()
"fzf open tabs not buffers
let g:fzf_action = { 'enter': 'tab split' }
"blink for vim-slash
if has('timers')
  noremap <expr> <plug>(slash-after) slash#blink(6, 400)
endif

"stupid
command! Wq :wq
command! WQ :wq
command! W :w
command! Q :q
:cmap Q! q!
:cmap q1 q!
