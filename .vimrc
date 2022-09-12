"basic Setup
set nu
syntax on
" Bell Off
set visualbell
" theme setup
set background=dark
colorscheme ron
" Indent setup
set autoindent
set smartindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=79
set expandtab
set fileformat=unix
" search setting
set ignorecase
set smartcase
set incsearch
set mouse=
" disable YCM preview
" set completeopt-=preview
" WhiteSpace Highlight
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
" BackSpace Setting
set backspace=indent,eol,start
