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
"a Git wrapper so awesome, it should be illegal
Bundle 'tpope/vim-fugitive'
"按两下 leader 键，再按w（或者b），可以快速跳转到任何位置；
Bundle 'Lokaltog/vim-easymotion'
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}   " write css, expand to html
Bundle 'tpope/vim-rails.git'
" vim-scripts repos
"Bundle 'L9' "FuzzyFinder 依赖
"Bundle 'FuzzyFinder'
" non github repos
"Bundle 'git://git.wincent.com/command-t.git'


" 新增的插件
"ctrl+p 打开查询文件
Bundle 'ctrlp.vim'
"补全大中小括号，原来是 "aa"，按 cs"' 把双引号改为单引号，按 ds' 键把单引号去掉，按 ysiw[，会改为 [aa]。更多例子 http://git.io/surround.vim
Bundle 'surround.vim'
"文件内出现了 saberma，再次需要输入时输入 sab 按 tab 就可以补全了
Bundle 'SuperTab'
"<a>，按 ds< 删除，需要重复这个动作时可以按 . 了
Bundle 'repeat.vim'
"最适合 rails 的补全（文件结构按目录划分，按快捷键命名补全内容的文件），在实体文件 中输入 hm 后按 tab，就会补全为 has_many。更多快捷键看这里 http://git.io/8ApXFg
Bundle 'scrooloose/snipmate-snippets'
Bundle 'scrooloose/nerdtree'
silent! nmap <silent> <Leader>p :NERDTreeToggle<CR>
"注释 leader + cc 注释，leader + cu 反注释
"Bundle 'The-NERD-Commenter'
" tComment
Bundle "tComment"
nnoremap // :TComment<CR>
vnoremap // :TComment<CR>
"按 leader + b 显示最近打开的文件
Bundle 'bufexplorer.zip'
nnoremap <leader>b :BufExplorer<cr>
"输入 :Ack foo 就搜索整个目录，效果比 grep 好（需要安装 ack-grep） http://git.io/tKhn2A
"不用安装 ack，但安装 ack-grep 后要进行链接，ln -s /usr/bin/ack-grep /usr/bin/ack
"要注意 ack 默认是不搜索 haml,scss 等未识别文件的，要将它们加到 .ackrc
Bundle 'ack.vim'
" 按 leader + # 键就可以在所有子目录搜索
noremap <LocalLeader># "ayiw:Ack <C-r>a<CR>
vnoremap <LocalLeader># "ay:Ack <C-r>a<CR>
Bundle 'endwise.vim'
"编写 md 文件时，自动打开浏览器实时看效果（需要安装node.js） http://git.io/KUAglw
Bundle 'instant-markdown.vim'
"Bundle 'Haml'
Bundle 'slim-template/vim-slim'
"coffee script 语法高亮
Bundle 'vim-coffee-script'
"语法检查，光标移到出错行，最底端会有错误详情
Bundle 'Syntastic'

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
