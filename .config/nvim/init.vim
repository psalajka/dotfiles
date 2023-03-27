call plug#begin()

" Neovim plugin for GitHub Copilot
Plug 'github/copilot.vim', {'on': 'Copilot'}

" Fugitive is the premier Vim plugin for Git.
Plug 'tpope/vim-fugitive', {'on': 'G'}

" Asynchronous Lint Engine
Plug 'dense-analysis/ale', {'on': ['ALEEnable']}

" Tagbar: a class outline viewer for Vim
Plug 'preservim/tagbar', {'on': 'TagbarToggle'}

" A tree explorer plugin for vim.
Plug 'preservim/nerdtree', {'on': 'NERDTreeToggle'}

call plug#end()

nmap <Tab> :tabnext<Enter>
nmap <S-Tab> :tabprevious<Enter>

set backupdir-=.

set undofile

set number
set relativenumber

set cursorline

nnoremap <F12> :nohlsearch<Enter>
