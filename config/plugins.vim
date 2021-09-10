call plug#begin('~/.config/.vim')

" tema
Plug 'morhetz/gruvbox'
Plug 'shinchu/lightline-gruvbox.vim'

" barra de estado
Plug 'maximbaz/lightline-ale'
Plug 'itchyny/lightline.vim'

" resaltado de sintaxis
Plug 'sheerun/vim-polyglot'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'

" barra lateral o árbol
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'

" complementos
Plug 'easymotion/vim-easymotion'
Plug 'terrortylor/nvim-comment'

" navegación rápida entre búfer
Plug 'christoomey/vim-tmux-navigator'

" autocompletado
Plug 'jiangmiao/auto-pairs'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" IDE
Plug 'editorconfig/editorconfig-vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'yggdroot/indentline'
Plug 'junegunn/fzf'
Plug 'ianks/vim-tsx'
Plug 'junegunn/fzf.vim'

call plug#end()
