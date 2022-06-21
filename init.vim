" this is supposed to display the number of search results
" set shortmess-=S
set exrc
set hidden
set noerrorbells
set smartindent
set softtabstop=2
set shiftwidth=2
set expandtab
set number
set relativenumber
set completeopt=menuone,preview
set noswapfile
set nobackup
set ruler
set hlsearch
set linebreak
set breakat=^I!@*+;,./?
set mouse=a
set laststatus=2
set clipboard+=unnamedplus
set scrolloff=8
set signcolumn=yes

" to change cursor color: https://stackoverflow.com/questions/6230490/how-i-can-change-cursor-color-in-color-scheme-vim
" also see https://superuser.com/questions/1185611/vim-change-color-of-cursor

call plug#begin()
Plug 'sheerun/vim-polyglot'
Plug 'airblade/vim-gitgutter'
Plug 'chriskempson/base16-vim'
Plug 'vim-scripts/AutoComplPop'
Plug 'tpope/vim-commentary'
Plug 'cormacrelf/dark-notify'
call plug#end()

set termguicolors
let g:gitgutter_set_sign_backgrounds = 1
let base16colorspace = 256  " Access colors present in 256 colorspace

lua <<EOF
    local dn = require('dark_notify')

    dn.run({
      schemes = {
        dark  = "base16-atelier-sulphurpool",
        light = "base16-atelier-sulphurpool-light",
      },
    })
EOF
