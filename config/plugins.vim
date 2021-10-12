call plug#begin('~/AppData/Local/nvim/vim-plug/')

" temas
Plug 'morhetz/gruvbox'
Plug 'shinchu/lightline-gruvbox.vim'

" barra de estado
Plug 'maximbaz/lightline-ale'
Plug 'itchyny/lightline.vim'

" resaltado de sintaxis
Plug 'sheerun/vim-polyglot'

" barra lateral o árbol
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'

" otros complementos
Plug 'terrortylor/nvim-comment'
Plug 'easymotion/vim-easymotion'

" navegación rápida entre tabs o pestañas
Plug 'christoomey/vim-tmux-navigator'
Plug 'benmills/vimux'

" autocompletado
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'

" IDE
Plug 'terryma/vim-multiple-cursors'
Plug 'yggdroot/indentline'
Plug 'junegunn/fzf', {'do': { -> fzf#install()}}
Plug 'junegunn/fzf.vim'
Plug 'ianks/vim-tsx'

call plug#end()
