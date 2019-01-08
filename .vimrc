set nocompatible
syntax enable
filetype plugin on
set path+=**
set wildmenu
set relativenumber
set showmatch
set autoindent
set shiftwidth=4
set smartindent
set smarttab
set softtabstop=4
let g:airline_powerline_fonts = 1
let g:vimtex_view_method = 'zathura'
let g:netrw_banner=0
let g:netrw_browser_split=4
let g:netrw_altv=1
let g:netrw_liststyle=3
let g:netrw_liststyle=3
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(1\|\s\s)\zs\-\S\+'

call plug#begin('~/.vim/plugged')
    Plug 'arcticicestudio/nord-vim'
    Plug 'lervag/vimtex'
call plug#end()

colorscheme nord

command! MakeTags !ctags -R .
command! Compile !make clean install
command! Pdfopen !zathura %:r.pdf
command! Pdfcompile !pdflatex %

nnoremap ,doku :read /home/dominik/Documents/templates/.doku.template<CR>3jf{li
