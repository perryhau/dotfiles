set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
"Bundle 'tpope/vim-fugitive' " git
"按两下 leader 键，再按w（或者b），可以快速跳转到任何位置；
Bundle 'Lokaltog/vim-easymotion'
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}   " write css, expand to html
Bundle 'tpope/vim-rails.git'
" vim-scripts repos
Bundle 'L9'
"Bundle 'FuzzyFinder'
" non github repos
"Bundle 'git://git.wincent.com/command-t.git'


" 新增的插件
"ctrl+p 打开查询文件
Bundle 'ctrlp.vim'
Bundle 'scrooloose/nerdtree'
silent! nmap <silent> <Leader>p :NERDTreeToggle<CR>
"按 leader + b 显示最近打开的文件
Bundle 'bufexplorer.zip'
nnoremap <leader>b :BufExplorer<cr>
"输入 :Ack foo 就搜索整个目录，效果比 grep 好（需要安装 ack-grep） http://git.io/tKhn2A
"不用安装 ack，但安装 ack-grep 后要进行链接，ln -s /usr/bin/ack-grep /usr/bin/ack
"要注意 ack 默认是不搜索 haml,scss 等未识别文件的，要将它们加到 .ackrc
Bundle 'ack.vim'
"编写 md 文件时，自动打开浏览器实时看效果（需要安装node.js） http://git.io/KUAglw
Bundle 'instant-markdown.vim'
"Bundle 'Haml'
Bundle 'bbommarito/vim-slim'

" 热键绑定
"直接按 Ctrl + h 等方向键切换窗口
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
"ctrl + a 保存
imap <c-a> <esc>:wa<CR>
map <c-a> :wa<CR>
"Ctrl + c 退出窗口
imap <c-c> <esc>:q<CR>
map <c-c> :q<CR>
"Ctrl + s 打开vs新窗口
map <c-s> :vs<CR>
"Ctrl + n 打开sp新窗口
map <c-n> :sp<CR>

" 其他配置
set noswapfile " 不生成备份文件
set number      "add line numbers


filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
