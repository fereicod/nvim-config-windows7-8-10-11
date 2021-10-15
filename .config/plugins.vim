call plug#begin('~/AppData/Local/nvim/.vim-plug/')

" resaltado de sintaxis
Plug 'sheerun/vim-polyglot'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

" tema
Plug 'morhetz/gruvbox'

" barra de estado especial para gruvbox
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'maximbaz/lightline-ale'
Plug 'itchyny/lightline.vim'

" barra lateral o árbol
Plug 'scrooloose/nerdtree'
Plug 'nvim-treesitter/nvim-treesitter'

" otros complementos
Plug 'terrortylor/nvim-comment'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'

" navegación rápida entre tabs o pestañas
Plug 'christoomey/vim-tmux-navigator'

" autocompletado
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'
Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'

" IDE
Plug 'nvim-lua/popup'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'terryma/vim-multiple-cursors'
Plug 'yggdroot/indentline'

call plug#end()
