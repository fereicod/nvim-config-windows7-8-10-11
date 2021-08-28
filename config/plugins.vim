call plug#begin('~/.config/.vim')

" tema
Plug 'morhetz/gruvbox'
Plug 'shinchu/lightline-gruvbox.vim'

" barra de estado
Plug 'maximbaz/lightline-ale'
Plug 'itchyny/lightline.vim'

" resaltado de sintaxis
Plug 'sheerun/vim-polyglot'
Plug 'quietshu/vimtones'

" barra lateral o árbol
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'

" complementos
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdcommenter'

" navegación rápida entre búfer
Plug 'christoomey/vim-tmux-navigator'

" autocompletado
Plug 'jiangmiao/auto-pairs'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" IDE
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'terryma/vim-multiple-cursors'

call plug#end()
