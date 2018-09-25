syntax enable set background=dark colorscheme solarized

let g:solarized_termtrans=1
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
" Set line numbers
set number

inoremap { {}<ESC>ha
inoremap ( ()<ESC>ha
inoremap < <><ESC>ha
inoremap " ""<ESC>ha
inoremap ' ''<ESC>ha
