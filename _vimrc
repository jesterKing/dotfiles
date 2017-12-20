" vimrc of Nathan Letwory
"
" plugins used:
" NERDTree
" MiniBufExpl
" python-mode
" snipMate
" Pathogen
" Powerline

set nocompatible

" on/off is for making sure pathogen works properly
filetype on
filetype off

call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

filetype plugin indent on

" CtrlP settings
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.pyo
set wildignore+=*\\tmp\\*,*.so,*.swp,*.zip,*.exe,*.pyc,*.pyo


" syntax colouring on
syntax on
" show line numbers
set number
" Spaces for tabs... madness. Use actual tabs instead
set noexpandtab
" (visual) width of tab
set ts=2
set sw=2
"set fo-=t
" visual queue for 80th column
set colorcolumn=80
highlight ColorColumn ctermbg=233

let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1 

let mapleader = ","
let g:mapleader = ","
let maplocalleader = "ä"

noremap <leader>d :source ~/das<cr>
noremap <leader>q :source ~/qwerty<cr>

" set up powerline
" source ~/vimfiles/bundle/powerline/powerline/ext/vim/source_plugin.vim


" pymode settings
let g:pymode_lint_checker="pyflakes,mccabe"

colorscheme koehler

" rember the first ; in the concatenated string. Otherwise path will be
" broken
let $PATH .= ';C:\Program Files\nodejs;C:\Users\Nathan\AppData\Roaming\npm'

autocmd! BufWritePost _vimrc source $MYVIMRC
noremap <leader>e :e! $MYVIMRC<cr>
nnoremap <leader>sw :so $MYVIMRC<cr>

nnoremap <leader>s :syn sync fromstart<cr>

" COFFEE stuff
let coffee_make_options = '--bare --lint --compile'
" au BufWritePost *.coffee silent CoffeeMake! | cwindow
noremap <localleader>l :CoffeeLint | cwindow<cr>
noremap <localleader>r :CoffeeRun<cr>
noremap <localleader>m :CoffeeMake! | cwindow<cr>
noremap <localleader>c :CoffeeCompile watch vert<cr>

" KEYBOARD CUSTOMIZATIONS
source ~/das
" set LeftAlt+9 to jump to tags
" note that with settings below going back is possible only
" with C-O
noremap <A-9> <C-]>
" up
nnoremap <C-r> <C-W>k
" down
nnoremap <C-m> <C-W>j
" left
nnoremap <C-l> <C-W>h
" right
nnoremap <C-t> <C-W>l

nnoremap E ge

" better backspace behaviour
set backspace=indent,eol,start
let g:pymode_indent = 0
