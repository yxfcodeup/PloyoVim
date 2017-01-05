set nocompatible    "去掉讨厌的有关vi一致性模式，避免以前版本的一些bug和局限
set cmdheight=1     "命令行（在状态行下）的高度，设置为1 
set helplang=cn     "设置中文帮助文档，若需要英文则改为helplang=en
"set langmenu=zh_CN.UTF-8
"******************************************************************************
"---------------------------------快捷设置-------------------------------------
"F1                         vim help
"F2                         
"F3                         
"F4                         
"F5                         Quickly Run
"F6                         
"F7                         
"F8                         
"F9                         
"Ctr+F9                     
"F10
"F12                        
"Ctrl+n                     ctags生成.tags文件
"Ctrl+m                     打开taglist窗口
"Ctrl+b                     tagbar
"Ctrl+l                     IndentLine
"Ctrl+e                     phpcs error window toggle

"---------------------------------键映射---------------------------------------
"Command    Normal      Visual      Operator Pending    Inder Only  Command Line
"           常规模式    可视化模式  运算符模式          插入模式    命令行模式
":map       y           y           y
":nmap      y
":vmap                  y
":omap                              y
":map!                                                  y           y
":imap                                                  y
":cmap                                                              y
":map {lhs} {rhs}       其含义是，在:map作用的模式中把键系列 {lhs} 映射为{rhs}，{rhs}可进行映射扫描，也就是可递归映射。
"{rhs} 之前可能显示一个特殊字符:& 表示仅脚本的局部映射可以被重映射;@表示缓冲区的局部映射
"键表：
"<k0> - <k9>        小键盘 0 到 9
"<S-...>            Shift＋键
"<C-...>            Control＋键
"<M-...>            Alt＋键 或 meta＋键
"<A-...>            同 <M-...>
"<Esc>              Escape 键
"<Up>               光标上移键
"<Space>            插入空格
"<Tab>              插入Tab
"<CR>               等于<Enter>
"特殊参数：<buffer>,<silent>,<special>,<expr>,<unique>,<Leader>和mapleader变量,<LocalLeader>和maplocalleader变量



"******************************************************************************
"-----------------------------------文档格式-----------------------------------
set nu
"set encoding=utf-8
set expandtab       "使用space代替tab
set tabstop=4       "设置制表符(tab键)的宽度
set softtabstop=4   "设定编辑模式下 tab 的视在宽度，这不改变 tabstop，但让编辑的时候 tab 看起来是指定的宽度
set shiftwidth=4    "(自动) 缩进使用的4个空格，用于 'cindent', '>>', '<<' 等
"set smarttab        "解决 shiftwidth 和 tabstop 不等时的麻烦
set autoindent      "vim使用自动对起，也就是把当前行的对起格式应用到下一行；
set backspace=indent,eol,start
"set cindent        "Vim可以很好的识别出C和Java等结构化程序设计语言，并且能用C语言的缩进格式来处理程序的缩进结构
"set smartindent    "依据上面的对起格式，智能的选择对起方式，对于类似C语言编 
if has("syntax")
	syntax on "语法高亮
endif
colorscheme default "设置配色方案
"colorscheme contrastneed
"colorscheme github
"colorscheme ron
"colorscheme desert
"set cursorcolumn   "高亮光标所在列
"highlight CursorColumn cterm=NONE ctermbg=darkblue ctermfg=green guibg=NONE guifg=NONE
"set cursorline     "高亮光标所在行
"highlight CursorLine   cterm=NONE ctermbg=NONE ctermfg=green guibg=NONE guifg=NONE
"set scrolloff=5    "光标上下两侧最少保留的屏幕行数。这使你工作时总有一些可见的上下文。
set showmatch       "设置匹配模式，显示匹配的括号
"set hidden          "允许在有未保存的修改时切换缓冲区，此时的修改由 vim 负责保存
"set previewwindow  "标识预览窗口  
"----------------------------------文件编码------------------------------------
set fileencoding=utf-8
set fileencodings=utf-8,gbk,cp936
set termencoding=utf-8,gb18030,gb2312,gbk
set encoding=utf-8



"******************************************************************************
"----------------------------自动加载和自动回写--------------------------------
"设置当正在编辑的文件被外部的其它程序所修改后自动在Vim加载
"if exists("&autoread")
"    set autoread
"endif
"自动把内容写回文件: 如果文件被修改过，在每个:next、:rewind、:last、:first、:previous、:stop、:suspend、:tag、:!、:make、CTRL-] 和 CTRL-^命令时进行；
"用 :buffer、CTRL-O、CTRL-I、'{A-Z0-9} 或 `{A-Z0-9} 命令转到别的文件时亦然。
set autowrite       "有改动时自动写回文件



"******************************************************************************
"------------------------------------鼠标设置----------------------------------
"   n --> 普通模式
"   v --> 可视模式
"   i --> 插入模式
"   c --> 命令行模式
"   h --> 编辑帮助文件时,所有前面的模式
"   a --> 所有前面的模式
"   r --> hit-enter 和 more-prompt 提示时
"if exists("&mouse")
"    set mouse=a
"使用鼠标这样设置后，不能用鼠标右键的”复制"了，解决方法，在复制之前，先按住Shift键
"endif



"******************************************************************************
"---------------------------------------备份文件-------------------------------
"默认情况下使用Vim编程，在修改文件后系统会自动生成一个带~的备份文件，如若不需要文件和备份，可以复位
"set nobackup
"set nowritebackup



"******************************************************************************
"-------------------------------------编辑操作---------------------------------
"set ignorecase             "搜索模式里忽略大小写   
"set smartcase              "如果搜索模式包含大写字符，不使用 'ignorecase' 选项。只有在输入搜索模式并且打开 'ignorecase' 选项时才会使用。
"set backspace=2            "设置退格键可用 
"set linebreak              "整词换行
"set whichwrap=b,s,<,>,[,]  "光标从行首和行末时可以跳到另一行去 
"set whichwrap+=<,>,h,l     "允许backspace和光标键跨越行边界(不建议)
"set scrolloff=3            "光标移动到buffer的顶部和底部时保持3行距离

"------------------------------------命令行设置--------------------------------
set showcmd         "命令行显示输入的命令   
set showmode        "命令行显示vim当前模式  

"-------------------------------------搜索设置---------------------------------
"set incsearch      "逐步搜索模式，对当前键入的字符进行搜索而不必等待键入完成
set hlsearch        "高亮搜索结果，所有结果都高亮显示，而不是只显示一个匹配 

"-------------------------------------记录信息---------------------------------
set history=100     "历史记录100条 
"set viminfo='1000,<500

"------------------------------------括号自动补全------------------------------
":inoremap ( ()<ESC>i
":inoremap ) <c-r>=ClosePair(')')<CR>
":inoremap { {<CR>}<ESC>O
":inoremap } <c-r>=ClosePair('}')<CR>
":inoremap [ []<ESC>i
":inoremap ] <c-r>=ClosePair(']')<CR>
":inoremap " ""<ESC>i
":inoremap ' ''<ESC>i
"function! ClosePair(char)
"   if getline('.')[col('.') - 1] == a:char
"       return "\<Right>"
"   else
"       return a:char
"   endif
"endfunction

"--------------------------------------拼写检查--------------------------------
"map <leader>sn ]
"map <leader>sp [
"map <leader>sa zg
"map <leader>s? z=

"------------------------------------状态栏相关的设置--------------------------
"set statusline=[%F]%y%r%m%*%=[Line:%l/%L,Column:%c][%p%%]   "状态栏的显示格式
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}   "状态行显示的内容
"set laststatus=2   "总显示最后一个窗口的状态行；设为1则窗口数多于一个的时候显示最后一个窗口的状态行；0不显示最后一个窗口的状态行 
set ruler           "标尺，用于显示光标位置的行号和列号，逗号分隔。每个窗口都有自己的标尺。如果窗口有状态行，标尺在那里显示。否则，它显示在屏幕的最后一行上

"------------------------------------折叠设置----------------------------------

"----------------------------------换行与折行----------------------------------
"set textwidth=0             "设置自动换行,0为不自动换行
set wrap                    "设置自动折行
"set nowrap                 "设置不自动折行



"******************************************************************************
"------------------------------------C,C++-------------------------------------
"C,C++的调试(适用于在Vim中编译调试单个文件)
"map <F7> :call Rungdb()<CR><CR><CR>
"func! Rungdb()
"	exec "w"
"   exec "!gcc % -g -o %<"
"   exec "!gdb %<"
"endfunc



"******************************************************************************
"------------------------------------Python------------------------------------
"一键执行python代码
"map <F5> :Autopep8<CR> :w<CR> :call RunPython()<CR>
"function RunPython()
"    let mp = &makeprg
"    let ef = &errorformat
"    let exeFile = expand("%:t")
"    setlocal makeprg=python\ -u
"    set efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m
"    silent make %
"    copen
"    let &makeprg = mp
"    let &errorformat = ef
"endfunction



"******************************************************************************
"-------------------------------------Quickly Run------------------------------
map <F5> :call CompileRun()<CR>
func! CompileRun()
    exec "w"
    if &filetype == 'c'
        exec "!g++ % -o %<"
        exec "!time ./%<"
    elseif &filetype == 'cpp'
        exec "!g++ $ -o $<"
        exec "!time ./%<"
    elseif &filetype == 'java'
        exec "!javac %"
        exec "!time java %<"
    elseif &filetype == 'sh'
        :!time bash %
    elseif &filetype == 'python'
        exec "!time python %"
    elseif &filetype == 'html'
        exec "!firefox % &"
    elseif &filetype == 'go'
        exec "!go build %<"
        exec "!time go run %"
    elseif &filetype == 'mkd'
        exec "!~/.vim/markdown.pl % > %.html"
        exec "!firefox %.html $"
    endif
endfunc




"******************************************************************************
"-------------------------让vim记忆上次编辑编辑的位置--------------------------
"当~/.viminfo文件出现权限问题时会失效
"删除文件~/.viminfo，然后重新打开vim(注意要以当前用户打开),vim会自动重建该文件
autocmd BufReadPost *
	\ if line("'\"")>0&&line("'\"")<=line("$") |
	\ exe "normal g'\"" |
	\ endif



"******************************************************************************
"------------------------------------其他设置----------------------------------
"------------------------------------*.c *.cpp---------------------------------
"autocmd BufRead,BufNewFile *.c set filetype=ccpp
"autocmd BufRead,BufNewFile *.cpp set filetype=ccpp
"autocmd FileType ccpp colorscheme cpp



"******************************************************************************
" 插件设置                                                      
"scope      ctags       omnicppcomplete Taglist     QuickFix    MiniBufferExplorer
"NERDTree   WinManager  A               grep        NERD        Commenter   
"SuperTag   c-support                                                      



"******************************************************************************
"---------------------------------------ctags----------------------------------
"按下Ctrl+n重新生成tag文件，并更新taglist
"map <silent> <C-N> :!ctags -R -f .tags --c-kinds=+cdfmsqtuv --c++-kinds=+cdfmnstuv --java-kinds=+cfimp --php-kinds=+cidfvj --python-kinds=+cfmvi --vim-kinds=+acfmv --fields=+ialS --extra=+q .<CR><CR> :TlistUpdate<CR>       "生成相对路径的tags
map <silent> <C-N> :!ctags -R -f .tags --c-kinds=+cdfmsqtuv --c++-kinds=+cdfmnstuv --java-kinds=+cfimp --php-kinds=+cidfvj --python-kinds=+cfmvi --vim-kinds=+acfmv --fields=+ialS --extra=+q `pwd`<CR><CR> :TlistUpdate<CR>       "生成绝对路径的tags
"map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
"imap <F5> <ESC>:!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR> :TlistUpdate<CR>
set tags=./.tags;,.tags       "不可省略，表示若当前目录中不存在tags，则在父目录中寻找。分号，代表 “向上搜索”，会首先在你当前文件所在的文件夹（不是当前文件夹）里面搜索名为 tags的文件，没有的话，往上一级目录，再没有的话，再往上一级目录，直到搜索到根目录为止
set tags+=~/.vim/GlobalTags/*.tags
"set tags+=~/.vim/tags/.tags
"set tags+=./.tags    "add current directory's generated tags file
"set tags+=~/arm/linux-2.6.24.7/tags "add new tags file(刚刚生成tags的路径，在ctags -R 生成tags文件后，不要将tags移动到别的目录，否则ctrl+］时，会提示找不到源码文件)



"******************************************************************************
"-------------------------------------echofunc---------------------------------
"echofunc可以在命令行中提示当前输入函数的原型
"此插件需要tags文件的支持,并且在创建tags文件的时候要加选项"--fields=+lS"
"echofunc插件对库函数不起作用，如果想在输入库函数时也能显示函数原型，可以在库函数所在文件夹生成tag文件



"******************************************************************************
"------------------------------------taglist-----------------------------------
"<CR>           跳到光标下tag所定义的位置，用鼠标双击此tag功能也一样
"o              在一个新打开的窗口中显示光标下tag
"<Space>        显示光标下tag的原型定义
"u              更新taglist窗口中的tag
"s              更改排序方式，在按名字排序和按出现顺序排序间切换
"x              taglist窗口放大和缩小，方便查看较长的tag
"+              打开一个折叠，同zo
"-              将tag折叠起来，同zc
"*              打开所有的折叠，同zR
"=              将所有tag折叠起来，同zM
"[[             跳到前一个文件
"]]             跳到后一个文件
"q              关闭taglist窗口
"<F1>           显示帮助 
"可以用“:TlistOpen”打开taglist窗口，用“:TlistClose”关闭taglist窗口。或者使用“:TlistToggle”在打开和关闭间切换

"if MySys() == "windows"                "设定windows系统中ctags程序的位置
"    let Tlist_Ctags_Cmd = 'ctags'
"elseif MySys() == "linux"              "设定linux系统中ctags程序的位置
"    let Tlist_Ctags_Cmd = '/usr/bin/ctags'
"endif
let Tlist_Ctags_Cmd='ctags'             "指定Exuberant ctags程序的位置，如果它没在你PATH变量所定义的路径中，需要使用此选项设置一下。因为我们放在环境变量里，所以可以直接执行
let Tlist_Process_File_Always=1         "实时更新tags!是否一直处理tags.1:处理;0:不处理
let Tlist_Use_Right_Window=1            "让窗口显示在右边,0的话就是显示在左边,默认为左侧
let Tlist_GainFocus_On_ToggleOpen=1     "在使用:TlistToggle打开taglist窗口时，如果希望输入焦点在taglist窗口中，设置Tlist_GainFocus_On_ToggleOpen为1
"let Tlist_Sort_Type='name'             "设置Tlist_Sort_Type为”name”可以使taglist以tag名字进行排序，缺省是按tag在文件中出现的顺序进行排序。按tag出现的范围（即所属的namespace或class）排序，已经加入taglist的TODO List，但尚未支持
let Tlist_Show_One_File=1               "让taglist可以同时显示多个文件的函数列表,设置0则为显示多个,1为显示单个
let Tlist_File_Fold_Auto_Close=1        "当同时显示多个文件中的tag时，设置Tlist_File_Fold_Auto_Close为１，可使taglist只显示当前文件tag，其它文件的tag都被折叠起来
let Tlist_Close_On_Select=1             "在选择了tag后自动关闭taglist窗口,1为关闭
let Tlist_Exit_OnlyWindow=1             "当taglist是最后一个分割窗口时，自动推出vim
let Tlist_Inc_Winwidth=0
let Tlist_Auto_Open=0                   "启动VIM后,自动打开taglist窗口，1为打开,0为不打开
"let Tlist_WinHeight=100
"let Tlist_WinWidth=40
"let Tlist_Use_Horiz_Window=1           "为１则设置taglist窗口横向显示
nmap <silent> <C-M> :TlistToggle<CR>



"******************************************************************************
"------------------------------------------------------>>> neocomplete
"代码自动补全插件neocomplete



"******************************************************************************
"NOTE:以下皆为vundle以及vundle管理的插件部分，其余部分皆放在上面设置
"--------------------------------vundle----------------------------------------
":BundleList                -列举列表(也就是.vimrc)中配置的所有插件
":BundleInstall             -安装列表中的全部插件
":BundleInstall!            -更新列表中的全部插件
":BundleSearch foo          -查找foo插件
":BundleSearch! foo         -刷新foo插件缓存
":BundleClean               -清除列表中没有的插件
":BundleClean!              -清除列表中没有的插件

"filetype的默认属性：detection:ON plugin:OFF indent:OFF
filetype off                        "required!关闭自动检测文件类型!从这行开始，vimrc配置
set rtp+=~/.vim/bundle/Vundle.vim   "rpt:runtimepath
call vundle#begin()                 "另一种选择, 指定一个vundle安装插件的路径 call vundle#begin('~/some/path/here')

"let Vundle manage Vundle
"required! 
Plugin 'VundleVim/Vundle.vim'

"My Bundles here:  /* 插件配置格式说明 */
"------------------------------------------------------------------------------
"plugin on GitHub repo
"(github网站上非vim-scripts仓库的插件，使用“用户名/插件名称”的方式指定)
"Plugin 'tpope/vim-fugitive'
"------------------------------------------------------------------------------
"plugin from http://vim-scripts.org/vim/scripts.html
"(vim-scripts仓库里的，直接指定插件名称即可，插件明中的空格使用“-”代替)
"Plugin 'L9'
"------------------------------------------------------------------------------
"Git plugin not hosted on GitHub
"(指定非Github的Git仓库的插件，需要使用git地址)
"Plugin 'git://git.wincent.com/command-t.git'
"------------------------------------------------------------------------------
"(指定本地Git仓库中的插件)
"git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
"------------------------------------------------------------------------------
"The sparkup vim script is in a subdirectory of this repo called vim.
"Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
"------------------------------------------------------------------------------
"Install L9 and avoid a Naming conflict if you've already installed a
"different version somewhere else.
"Plugin 'ascenator/L9', {'name': 'newL9'}

"-------------------------------------------------------------------->>> Xdebug
"Plugin 'xdebug/xdebug'
"let g:debuggerPort=9090     "注意：要与/etc/php.d/xdebug.ini中xdebug.remote_port端口配置一致

"----------------------------------------------------------------->>> syntastic
"syantastic是一款强大的语法检查插件，支持很多语言的语法与编码风格检查。实际上这个插件只是个接口，背后的语法检查是交给各个语言自己的检查器
Plugin 'vim-syntastic/syntastic'
map <C-E> :call ToggleErrors()<CR>
"map <C-0> :SyntasticToggleMode<CR>         "在激活/禁用间切换
"map <C-9> :lclose<CR>                      "关闭提示窗口
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list=1  "每次自动调用 :SyntasticSetLocList, 将错误覆盖 **quickfix**
let g:syntastic_auto_loc_list=1             "自动拉起/关闭错误窗口, 不需要手动调用 :Errors。0不自动. 1自动拉起关闭. 2 自动关闭，但不自动拉起. 3 自动拉起，但不自动关闭 默认2, 改为1
let g:syntastic_loc_list_height=5           "错误提示窗口高度
let g:syntastic_check_on_open=1             "设置为每次打开buffer就执行语法检查，而不只是在保存时
let g:syntastic_check_on_wq=0               "设置保存关闭文件时不执行语法检查
let g:syntastic_echo_current_error=1        "在命令行显示当前行的错误信息. 默认1
let g:syntastic_enable_sign=1               "做行号左边显示错误标记. 默认1
"配置error-sign
let g:syntastic_error_symbol='=>'
let g:syntastic_style_error_symbol='??'
let g:syntastic_warning_symbol='->'
let g:syntastic_style_warning_symbol='?'
"配置各语言的checker
let g:syntastic_python_checkers=['pylint']  "python语法检查器
let g:syntastic_python_pylint_args='--disable=C,R,W'    "忽略convention(C),refactor()R,warning(W),只报error(E)与致命错误(F)
let g:syntastic_php_checkers=['php']
let g:syntastic_php_phpcs_args='--standard=zend -n --report=csv'
func! ToggleErrors()
    if empty(filter(tabpagebuflist(), 'getbufvar(v:val, "&buftype") is# "quickfix"'))
        "No location/quickfix list shown, open syntastic error location panel
        Errors
    else 
        lclose
    endif
endfunc
func! ToggleErrors1()
    let old_last_winnr=winnr('$')
    lclose
    if old_last_winnr == winnr('$')
        "Nothing was closed, open syntastic error location panel
        Errors
    endif
endfunc

"------------------------------------------------------------->>> YouCompleteMe
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'Valloric/ListToggle'
"Plugin 'scrooloose/syntastic'
"let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py '
"下面这句话是决定补全时用什么按键
"let g:ycm_key_list_select_completion = ['<Down>'] 
"nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
"nnoremap <F9> :YcmCompleter GoToDefinitionElseDeclaration<CR>
"nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>
"let g:ycm_confirm_extra_conf=0    "打开vim时不再询问是否加载ycm_extra_conf.py配置
"let g:ycm_collect_identifiers_from_tag_files = 1 "使用ctags生成的tags文件
"let g:ycm_filetype_whitelist = {'cpp':1 , 'c': 1, 'python':1}

"-------------------------------------------------------------->>> Vim Markdown
Plugin 'MikeCoder/markdown-preview.vim'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
let g:vim_markdown_folding_disabled = 1		"禁用了vim-markdown的自动折叠

"----------------------------------------------------------------->>> Vim Shell
"Plugin 'Shougo/vimshell.vim'

"------------------------------------------------------------------>>> NERDTree
"Plugin 'scrooloose/nerdtree'
"设置NerdTree
"map <F3> :NERDTreeMirror<CR>
"map <F3> :NERDTreeToggle<CR>
"let g:NERDTree_title = "[NERDTree]"
"function! NERDTree_Start() 
"	exe 'NERDTree'
"endfunction
"function! NERDTree_IsValid() 
"	return 1
"endfunction
"autocmd VimEnter * NERDTree
"wincmd w
"autocmd VimEnter * wincmd w

"--------------------------------------------------------------------->>> a.vim
"头文件和实现文件的快速切换
"Plugin 'a.vim'

"--------------------------------------------------------------------->>> c.vim
"1. 自动为*.c文件添加文件头说明; 2. 插入一个函数 \if; 3. 插入main函数 \im; 4. 插入函数头 \cfu; 5. 添加一个注释块 \cfr; 6. 包含(include)一个头文件 \p<; 7. 保存文件，编译后立即执行; 8. 插入预先编辑好的程序块 \nr
Plugin 'c.vim'

"------------------------------------------------------------------>>> quickfix
"QuickFIX C++ Fix Engine Library
"将编译过程中产生的错误信息保存到文件中，然后vim利用这些信息跳转到源文件的对应位置
Plugin 'quickfix/quickfix'
"set makeprg=gcc\ hello.c\ -o\ hello   "make命令执行的程序为vim变量makeprg的值，默认makeprg=make，使用Makefile机制进行项目的编译、管理。可以通过set makeprg=xxx的命令修改makeprg的值，从而使make命令执行不同的编译。
"常用quickfix命令
":cc            显示详细错误信息
":cp            跳到上一个错误
":cn            跳到下一个错误
":cl            列出所有错误
":cw            如果有错误列表，则打开quickfix窗口，没有则什么也不错
":copen         打开quickfix窗口，可以在后面添加窗口高度参数，如10行： :copen 10
":cclose        关闭quickfix窗口
":col           到前一个旧的错误列表
":cnew          到后一个较新的错误列表

"------------------------------------------------------------->>> vim-powerline
"PowerLine是一个增强的Vim状态栏插件。当Vim处于NORMAL、INSERT、BLOCK等状态时，状态栏会呈现不同的颜色，同时状态栏还会显示当前编辑文件的格式（uft-8等）、文件类型（java、xml等）和光标位置等
"Plugin 'Lokaltog/vim-powerline'

"-------------------------------------------------------------------->>> tagbar
"ctags标签提取显示
"tagbar比taglist优化之处:
"1. 支持头文件的函数列表显示
"2. 对面向对象的支持更好
"3. 自动根据文件修改时间来重建
"NOTE:文件不支持中文路径
Plugin 'majutsushi/tagbar'
map <C-B> :TagbarToggle<CR>
let g:tagbar_ctags_bin='ctags'
let g:tagbar_autofocus=1        "设置为打开tagbar自动切换
"let g:tagbar_width=30

"------------------------------------------------------------->>> Indent Guides
"Plugin 'https://github.com/nathanaelkane/vim-indent-guides.git'

"--------------------------------------------------------------->>> Indent Line
"插件安装成功后就会显示缩进对齐线, 我们仅仅在 .vimrc 里加一行来切换是否显示
Plugin 'Yggdroot/indentLine'
map <C-L> :IndentLinesToggle<CR>
let g:indentLine_char='|'
let g:indentLine_enabled=0
"let g:indentLine_setColors=0
"let g:indentLine_color_term=239

"--------------------------------------------------------------------->>> ctrlp
"文件跳转
"Plugin 'kien/ctrlp.vim'
"let g:ctrlp_map='<c-p>'
"let g:ctrlp_cmd='CtrlP'
"设置过滤不进行查找的后缀名 
"let g:ctrlp_custom_ignore='\v[\/]\.(git|hg|svn|pyc)$' 

"--------------------------------------------------------------->>> vim-airline
"Plugin 'vim-airline/vim-airline'

"---------------------------------------------------->>> ShowTrailingWhitespace
"显示行尾空格
Plugin 'vim-scripts/ShowTrailingWhitespace'
map <silent> <C-Z> :call ShowTrailingWhitespace#Toggle(0)<CR>
let g:ShowTrailingWhitespace=0


" All of your Plugins must be added before the following line
call vundle#end()               "required
filetype plugin indent on       "required!      /** vimrc文件配置结束 **/
"                                               /** vundle命令 **/
" see :h vundle for more details or wiki for faq 
" NOTE: comments after Bundle command are not allowed..
