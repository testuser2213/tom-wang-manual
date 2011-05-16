let g:ctagsdir = "exctags"

set dictionary-=~/.vim/funclist.txt dictionary+=~/.vim/funclist.txt
set complete-=k complete +=k

source 	~/.vim/plugin.vim
source ~/.project.vim

"colo evening
set go= "无菜单、工具栏
set history=400
"显示行号
set number

"设置字体样式,防止vim在windos下乱码
set encoding=utf-8
set termencoding=utf-8
"set fileencodings=utf-8,chinese,latin-1
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1 
if has("win32")
  set langmenu=zh_CN.utf-8
  language message zh_CH.utf-8
  set guifont=Courier_New:h14:cANSI
  source $VIMRUNTIME/delmenu.vim
  source $VIMRUNTIME/menu.vim
endif

let mapleader=','
let g:mapleader=','

"快捷键设置{{{
"ctrl+s 保存文件
map <leader>w :w!<CR>
map <leader>nu :set nu!<bar>set nu?<CR>
map <leader>wr :set wrap!<bar>set wrap?<CR>
map <leader>% :echo expand("%:p")<CR>
map <leader>hls :set hls!<bar>set hls?<CR>
"快速加载 vimrc 文件
map <leader>s :source ~/.vimrc<CR>
"快速编辑vimrc文件
map <leader>e :e! ~/.vimrc<CR>
"如果vimrc做了修改自动加载文件
autocmd! bufwritepost vimrc source ~/.vimrc
"smart way to move btw. windows
if !has("gui_running")
	map <C-h> <C-W>h
	map <C-k> <C-W>k
	map <C-j> <C-W>j
	map <C-l> <C-W>l
endif

"重启apache
map <leader>ya :call ApacheRestart()<CR>
" Switch to current dir
"map <leader>cd :cd %:p:h<cr>
"map <leader>nt :NERDTree<CR>

" NERDTree
map <F10> :NERDTreeToggle<CR>
"}}}

"{{{----------tab section---------
map <C-T> :tabnew<CR>
map <leader>1 :tabnext 1<CR>
map <leader>2 :tabnext 2<CR>
map <leader>3 :tabnext 3<CR>
map <leader>6 :tabnext 4<CR>
map <leader>5 :tabnext 5<CR>
map <leader>6 :tabnext 6<CR>
map <leader>7 :tabnext 7<CR>
map <leader>8 :tabnext 8<CR>
map <leader>9 :tabnext 9<CR>

imap <C-T> <ESC>:tabnew<CR>
"}}}

"{{{---------------全局设置-------------------
"代码折叠
set fdm=marker

"备份设置
set backup
set backupext=.bk
set backupdir=/home/tom.wang/.vim/vim_bk/

"在处理未保存或只读文件的时候,弹出确认
set confirm

"侦测文件类型
filetype on

"载入文件类型插件
filetype plugin on

"为特定文件类型载入相关缩进文件
filetype indent on

"保存全局变量
set viminfo+=!

"带有如下符号单词不要被换行分割
set iskeyword+=_,$,@,%,#,-

"语法高亮
syntax on

"状态行颜色
highlight StatusLine guifg=SlateBlue guibg=Yellow
highlight StatuslineNC guifg=Gray guibg=White

"不让vim发出讨厌的声音
set noerrorbells

"在被分割的窗口间显示空白,便于阅读
set fillchars=vert:\ ,stl:\ ,stlnc:\

"字符键插入的像素行数目
set linespace=0

" 增强模式中的命令行自动完成操作
set wildmenu

" 命令行
set cmdheight=2

"使回格键正常处理indent,eol,start等
set backspace=2

"允许backspace和光标键跨越行边界
set whichwrap+=<,>,h,l

"可以在buffer的任何地方使用鼠标
set mouse=
set selection=exclusive
set selectmode=key

"启动的时候不显示那个援助索马里儿童的提示
set shortmess=atI
"}}}

"--------------------------文件设置

"不要生成swap文件，当buffer被丢弃的时候隐藏他
setlocal noswapfile
set bufhidden=hide
"文件更新时候自动重新载入
set autoread

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 搜索和匹配
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 高亮显示匹配的括号
set showmatch

" 匹配括号高亮的时间（单位是十分之一秒）
set matchtime=5

" 在搜索的时候忽略大小写
set ignorecase

" 不要高亮被搜索的句子（phrases）
set hlsearch

" 在搜索时，输入的词句的逐字符高亮（类似firefox的搜索）
set incsearch

"不要闪烁
set novisualbell

" Set statusline
function! CurrectDir()
	let curdir = substitute(getcwd(), "", "", "g")
	return curdir
endfunction
set statusline=\ [File]\ %F%m%r%h\ %w\ \ [PWD]\ %r%{CurrectDir()}%h\ \ %=[Line]\ %l,%c\ %=\ %P
set laststatus=2



"set statusline=%F%m%r%h%w\[POS=%l,%v][%p%%]\%{strftime(\"%d/%m/%y\ -\ %H:%M\")}

" 总是显示状态行
"set laststatus=2
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 文本格式和排版
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 自动格式化
set formatoptions=tcrqn

" 继承前一行的缩进方式，特别适用于多行注释
set autoindent

" 为C程序提供自动缩进
set smartindent

" 使用C样式的缩进
set cindent

" 制表符为4
set tabstop=4

" 统一缩进为4
set softtabstop=4
set shiftwidth=4

set background=dark
" 不要用空格代替制表符
"set noexpandtab

" 用空格代替制表符
set expandtab

" 不要换行
set nowrap

" 在行和段开始处使用制表符
set smarttab

" CTags的设定{{{
let Tlist_Use_Right_Window=1 
" 按照名称排序
let Tlist_Sort_Type = "name"
" 在右侧显示窗口
let Tlist_Use_Right_Window = 1
" 压缩方式
let Tlist_Compart_Format = 1
" 如果只有一个buffer，kill窗口也kill掉buffer
let Tlist_Exist_OnlyWindow = 1
" 不要关闭其他文件的tags
let Tlist_File_Fold_Auto_Close = 0
" 不要显示折叠树
let Tlist_Enable_Fold_Column = 0
"taglist 只显示当前文件的tag
let Tlist_Show_One_File=1
let Tlist_WinWidth=20
"语法高亮
let g:Tb_ForceSyntaxEnable=0
nmap <silent> <leader>tag :TlistToggle<CR>
"set tags=/home/www/lib/tags
"set tags=/home/www/htdocs/qeephp/tags
"}}}

"-------------------------vim file{{{
autocmd filetype vim map <buffer> <leader><space> :w!<CR>:source %<CR>
"}}}

"------------------------php file {{{
autocmd filetype php compiler php
autocmd filetype php set autoindent
autocmd filetype php set errorformat=<b>%*[^<]</b>:\ \ %m\ in\ <b>%f</b>\ on\ line\ <b>%l</b><br\ />
"autocmd filetype php set makeprg=php\ -l %
"注释一整行
autocmd filetype php map <buffer><leader>/ ^i//<ESC>
autocmd filetype php map <buffer> <leader><space> :w!<cr>:!/opt/php/bin/php %<cr>
autocmd filetype php map <buffer> <leader>m<space> :w!<cr>:!/opt/php/bin/php %<bar> more<cr>
"}}}

" remove CR at end of lines
let PHP_removeCRwhenUnix = 1
" Set up automatic formatting
set formatoptions+=tcqlro
" Set maximum text width (for wrapping)
set textwidth=120

let php_folding = 0
let php_strict_blocks = 1
let php_special_vars = 0
let php_special_functions = 0
let php_alt_comparisons = 0
let php_alt_assignByReference = 0
let php_alt_arrays = 0
let php_baselib = 0
let php_oldStyle = 0
let php_fold_heredoc = 0
let php_short_tags = 0
let php_noShortTags = 1
inoremap <A-/> <ESC>:call PhpDocSingle()<CR>
nnoremap <A-/> :call PhpDocSingle()<CR>
vnoremap <A-/> :call PhpDocRange()<CR>
"------------------------bash
autocmd filetype sh map <buffer> <leader><space> :w!<CR>:!/bin/bash %<CR>


"-------------------------tab configure{{{
map <leader>tn :tabnew %<cr>
map <leader>te :tabedit <cr>
map <leader>tc :tabclose <cr>
map <leader>l :tabn <cr>
map <leader>h :tabp <cr>
map <leader>1 :tabn 1 <cr>
map <leader>2 :tabn 2 <cr>
map <leader>3 :tabn 3 <cr>
map <leader>4 :tabn 4 <cr>
map <leader>5 :tabn 5 <cr>
map <leader>6 :tabn 6 <cr>
map <leader>7 :tabn 7 <cr>
map <leader>8 :tabn 8 <cr>
map <leader>9 :tabn 9 <cr>

"}}}
"
"

"Auto completion using the TAB key
""This function determines, wether we are on
"the start of the line text(then tab indents)
""or if we want to try auto completion
function! InsertTabWrapper()
	let col=col('.')-1
	if !col || getline('.')[col-1] !~ '\k'
		return "\<TAB>"
	else
		return "\<C-N>"
	endif
endfunction

"Remap the tab key to select action
"with InsertTabWrapper
inoremap <TAB> <C-R>=InsertTabWrapper()<CR>


"function{{{
"function! Test()
"	let s = expand("%:h")
"	echo s
"endfunction
"map mm :call Test()<CR>

function! ApacheRestart()
	!sudo apachectl -k restart
endfunction

function! s:Test()
	echo 'invalid command'
endfunction

"auto add Command
function! s:Command()
	command! T call s:Test()
endfunction


"autocmd BufEnter * call s:Command()
"}}}


"""python{{{
autocmd FileType python set expandtab
autocmd FileType python setlocal et sta sw=4 sts=4
autocmd filetype python map <buffer> <leader><space> :w!<cr>:!/usr/bin/python %<cr>
"}}}
"--------------------- W --------------------"{{{                                                                                                
