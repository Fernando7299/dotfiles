call plug#begin('~/.config/nvim/plugged')

" Themes
Plug 'joshdick/onedark.vim'
Plug 'kaicataldo/material.vim'
Plug 'tomasiser/vim-code-dark'
Plug 'crusoexia/vim-monokai'
Plug 'ayu-theme/ayu-vim'
Plug 'dracula/vim', { 'as': 'dracula' }
" ----------------------------------- "
" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" ----------------------------------- "
" Snippets
Plug 'honza/vim-snippets' 					
" ----------------------------------- "

" CoC
Plug 'neoclide/coc.nvim', {'branch': 'release'}			
" ----------------------------------- "

" Ranger
Plug 'kevinhwang91/rnvimr', {'do': 'make sync'} 		
" ----------------------------------- "

" Vim-Commentary
Plug 'tpope/vim-commentary'					
" ----------------------------------- "
" FZF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Vim-rooter
Plug 'airblade/vim-rooter'
" ----------------------------------- "
Plug 'liuchengxu/vim-which-key'
call plug#end()
