call plug#begin('~/AppData/Local/nvim/.vim-plug/')

" resaltado de sintaxis
Plug 'sheerun/vim-polyglot'

" tema
Plug 'morhetz/gruvbox'

" barra de estado especial para gruvbox
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'maximbaz/lightline-ale'
Plug 'itchyny/lightline.vim'

" barra lateral o árbol
Plug 'scrooloose/nerdtree'

" otros complementos
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'

" navegación rápida entre tabs o pestañas
Plug 'christoomey/vim-tmux-navigator'

" autocompletado
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'

" complemento telescope
Plug 'nvim-lua/popup'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'kyazdani42/nvim-web-devicons'

" test
"Plug 'tyewang/vimux-jest-test'
"Plug 'janko-m/vim-test'

" git
"Plug 'tpope/vim-fugitive'
"Plug 'tpope/vim-repeat'
"Plug 'mhinz/vim-signify'

" IDE
Plug 'terryma/vim-multiple-cursors'
Plug 'jiangmiao/auto-pairs'
Plug 'yggdroot/indentline'
Plug 'terrortylor/nvim-comment'

call plug#end()
