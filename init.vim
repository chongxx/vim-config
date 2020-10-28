" 主题配置
syntax enable
set termguicolors " 一定要设置，不然颜色有可能不对
set number

" Tab 转2个空格
set tabstop=2
set shiftwidth=2        " Indents will have a width of 4
set softtabstop=2       " Sets the number of columns for a TAB
set expandtab           " Expand TABs to spaces

call plug#begin('~/.vim/plugged')
" Coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" 状态栏美化
Plug 'vim-airline/vim-airline'
" 主题
Plug 'morhetz/gruvbox'
" 小程序开发
Plug 'chemzqm/wxapp.vim'
" 括号补全
Plug 'raimondi/delimitmate'
" 注释插件
Plug 'scrooloose/nerdcommenter'

call plug#end()

" 在注释后面加个空格
let g:NERDSpaceDelims = 1

" 使用配色
colorscheme gruvbox
set background=dark

" 多余的空格显示成红色
highlight ExtraWhitespace ctermbg=red guibg=red
autocmd BufWinEnter * match ExtraWhitespace /\s\+$\| \+\ze\t\+\|\t\+\zs \+/
