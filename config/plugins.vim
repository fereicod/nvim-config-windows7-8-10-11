call plug#begin('~/AppData/Local/nvim/.vim-plug/')

" resaltado de sintaxis
Plug 'sheerun/vim-polyglot'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

" tema
Plug 'morhetz/gruvbox'

" barra de estado
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'maximbaz/lightline-ale'
Plug 'itchyny/lightline.vim'

" barra lateral o árbol
Plug 'scrooloose/nerdtree'
Plug 'nvim-treesitter/nvim-treesitter'

" otros complementos
Plug 'terrortylor/nvim-comment'
Plug 'easymotion/vim-easymotion'

" navegación rápida entre tabs o pestañas
Plug 'christoomey/vim-tmux-navigator'

" autocompletado
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'
Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'

" IDE
Plug 'terryma/vim-multiple-cursors'
Plug 'yggdroot/indentline'
Plug 'junegunn/fzf', {'do': { -> fzf#install()}}
Plug 'junegunn/fzf.vim'

call plug#end()
