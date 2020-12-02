let mapleader=";"
" Remap escape
nnoremap <C-c> <Esc>
inoremap ii <Esc>

" Alt + hjkl para redimensionar una ventana
nnoremap <M-j> :resize -2<CR>
nnoremap <M-k> :resize +2<CR>
nnoremap <M-h> :vertical resize -2<CR>
nnoremap <M-l> :vertical resize +2<CR>

" Guardar archivo
nnoremap <C-s> :w<CR>
" Guardar y salir
nnoremap <C-q> :wq!<CR>

" ALT-TAB: siguiente pestaña (modo normal)
nnoremap <M-TAB> :bnext<CR>
" SHIFT-TAB: anterior pestaña (modo normal)
nnoremap <S-TAB> :bprevious<CR>

" Cerrar pestaña actual
nnoremap <C-b> :bd<CR>

" Identación en modo visual
vnoremap < <gv
vnoremap > >gv

" Mover una linea hacia arriba/abajo en modo visual
" shift + k to move up
" shift + j to move down
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv

" Navegación entre ventanas
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
