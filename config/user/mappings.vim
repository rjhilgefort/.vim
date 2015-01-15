"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" user/mappings.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Change leader
let mapleader = "\<Space>"

" <Esc> key alternative
inoremap jk <Esc>
xnoremap ;; <Esc>

" Setup mapping
noremap <Leader>r :ReloadConfig<CR>

" Easier saving, and quiting
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>wq :wq<CR>
nnoremap <Leader>wa :wa<CR>
nnoremap <Leader>wqa :wqa<CR>

" nnoremap <Leader>wa :bufdo w<CR>
" nnoremap <Leader>wqa :bufdo wq<CR>

" Save a file as root (,W)
noremap <Leader>W :w !sudo tee % > /dev/null<CR>

" Disable arrow keys
let arrowKeyWarn = "You no like hjkl navigation? STOP USING THE CURSOR KEYS!"
noremap <up> :echo arrowKeyWarn<CR>
noremap <down> :echo arrowKeyWarn<CR>
noremap <left> :echo arrowKeyWarn<CR>
noremap <right> :echo arrowKeyWarn<CR>
inoremap <up> <Nop>
inoremap <down> <Nop>
inoremap <left> <Nop>
inoremap <right> <Nop>

" Setup expected mapping
noremap cow :ToggleWrap<CR>

" Execute the current file
nnoremap <F9> :!%:p<CR>

" Search for currently selected text from visual mode
vnoremap / "vy/<c-r>v

" Repeat previous command
nnoremap <Leader>. @:

" Add spacing
nmap <Leader><Leader>h i<Space><Esc>l
nmap <Leader><Leader>j ]<Leader>
nmap <Leader><Leader>k [<Leader>
nmap <Leader><Leader>l i<Space><Esc>

" Use Q for formatting the current paragraph (or selection)
vmap Q gq
nmap Q gqap

" Semicolon is much easier to use for commands (and not used much otherwise)
nnoremap ; :

" Easier than <C-r>
nnoremap U :redo<CR>

" Delete current file
nnoremap <C-Del> :!rm "%"<CR>

" Buffer reloading
nmap <Leader>e :e<CR>
" nmap <Leader>ea :bufdo e<CR>
nmap <Leader>ea :checktime<CR>

" Select all, copy all
nmap <Leader>va ggVG
nmap <Leader>ya ggVGy
