source /usr/share/vim/vim*/vimrc_example.vim

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" The NERDTree is a file system explorer for the Vim editor. Using this plugin,
" users can visually browse complex directory hierarchies, quickly open files for
" reading or editing, and perform basic file system operations.
"     This plugin can also be extended with custom mappings using a special API. The
" details of this API and of other NERDTree features are described in the
" included documentation.
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" vim-flake8 is a Vim plugin that runs the currently open file through Flake8,
" a static syntax and style checker for Python source code. It supersedes both
" vim-pyflakes and vim-pep8.
"     Flake8 is a wrapper around PyFlakes (static syntax checker), PEP8 (style
" checker) and Ned's MacCabe script (complexity checker).
Plug 'https://github.com/nvie/vim-flake8'

" Initialize plugin system
call plug#end()

set background=dark

set tabstop=4
" This is the 'shiftwidth' value unless it is zero, in which case it is
" the 'tabstop' value.
set shiftwidth=0
set expandtab

set autoindent
set smartindent

set backupdir=~/tmp//

set undofile
set undodir=~/tmp//

set directory=~/tmp//

nnoremap <F12> :nohl<CR>

nnoremap <Tab> :tabNext<CR>
nnoremap <S-Tab> :tabPrevious<CR>

inoremap ( ()<Esc>i
inoremap () ()
inoremap (<Esc> (<Esc>
inoremap (<Enter> (<Enter><BS>)<Esc>O

inoremap { {}<Esc>i
inoremap {} {}
inoremap {<Esc> {<Esc>
inoremap {<Enter> {<Enter><BS>}<Esc>O

set listchars=tab:>-,trail:x

set number
set relativenumber

autocmd BufNewFile,BufRead *.html set tabstop=2
