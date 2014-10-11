execute pathogen#infect()
syntax on 
filetype plugin indent on

if has('mouse')
  set mouse=a
endif

set smartindent
set smarttab
set expandtab
set softtabstop=4
set shiftwidth=4
set cursorline

if has('gui_running')
    colorscheme codeschool
    set guifont=Monospace\ 11
else
    if $COLORTERM == 'gnome-terminal'
        set t_Co=256
    endif
    colorscheme default
    hi CursorLine term=NONE cterm=NONE ctermbg=237
endif

let g:snips_email='ezeq.au@gmail.com'
let g:snips_author='Ezequiel Muns'
let g:snips_github='ezk84'


" See the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
if !exists(":DiffOrig")
    command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif

" <F2> to paste safely from other apps
nnoremap <F2> :set invpaste Paste?<CR>
set pastetoggle=<F2>

" Line jiggling with Alt-dir
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv
