set nocompatible " 这个不兼容特性要放在颜色设置之前

call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'

Plug 'vim-airline/vim-airline-themes'

Plug 'scrooloose/nerdtree'

Plug 'mattn/emmet-vim'

Plug 'Valloric/YouCompleteMe'

Plug 'davidhalter/jedi-vim'

Plug 'mattn/emmet-vim'

Plug 'morhetz/gruvbox'

Plug 'tomasr/molokai'

Plug 'nanotech/jellybeans.vim'

Plug 'altercation/vim-colors-solarized'

Plug 'plasticboy/Vim-markdown'

Plug 'suan/vim-instant-markdown'
call plug#end()

set nu
set ruler
set encoding=utf-8
" set encoding=gbk
syntax on
set tabstop=4 " tab缩进为4， vim默认是8
set shiftwidth=4 " 每层缩进空格数为4，vim默认是8
set backspace=indent,eol,start
set textwidth=79  " 超过70个字自动换行
set completeopt-=menu

" =========================================
" Gui Seting
" =========================================
colorscheme solarized
set background=dark
" set background=light
set t_Co=256
let g:rehash256 = 1
let g:molokai_original = 1
set guioptions=  " 隐藏菜单,左右拖动、上下拖动条
if has("gui_running")
  if has("win64")
    set guifont=mononoki:h16  " win10下的设置字体，中间有空格用_代替
  elseif has("gui_macvim")  " mac下设置的字体，未拥有，未验证
    set guifont=Menlo\ Regular:h14
  else " Ubuntu设置
    set guifont=Fira\ Code\ 18  " 中间有空格前面家一个/转义，字号前也要加\
  endif
endif

" ==========================================
" Map Setting
" ==========================================
map <F2> :NERDTreeToggle<CR>
nmap <c-p> "+gp  " normal模式control+p粘贴寄存器的内容

" ==========================================
" Plug Setting
" ==========================================
" airline setting
" unicode symbols work in ubuntu
let g:airline_theme='solarized'

let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.maxlinenr = '㏑'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = 'Ɇ'
let g:airline_symbols.whitespace = 'Ξ'


" YouCompleteMe setting
let g:ycm_autoclose_preview_window_after_completion = 1
