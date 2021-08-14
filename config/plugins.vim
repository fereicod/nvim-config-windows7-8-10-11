call plug#begin('~/.vim/plugged')

" tema
Plug 'morhetz/gruvbox'

" barra de estado
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'maximbaz/lightline-ale'
Plug 'itchyny/lightline.vim'

" resaltado de sintaxis
Plug 'sheerun/vim-polyglot'

" barra lateral o árbol
Plug 'scrooloose/nerdtree'

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
