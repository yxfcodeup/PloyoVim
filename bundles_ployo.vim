"*******************************************************************************
" NOTE:以下皆为Vundle以及Vundle管理的插件加载，不包括插件设置部分
" NOTE:旧版：vundle#rc()、Bundle；新版：vundle#begin()、Plugin
"<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
" [Vundle]
":BundleList                -列举列表(也就是.vimrc)中配置的所有插件
":BundleInstall             -安装列表中的全部插件
":BundleInstall!            -更新列表中的全部插件
":BundleSearch foo          -查找foo插件
":BundleSearch! foo         -刷新foo插件缓存
":BundleClean               -清除列表中没有的插件
":BundleClean!              -清除列表中没有的插件
">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


"filetype的默认属性：detection:ON plugin:OFF indent:OFF
filetype off                    "required!关闭自动检测文件类型!从这行开始，vimrc配置
set rtp+=~/.vim/bundle/Vundle.vim/  "rpt:runtimepath
"call vundle#rc()               "旧版Vundle使用
call vundle#begin()             "新版Vundle使用。另一种选择, 指定一个vundle安装插件的路径 call vundle#begin('~/some/path/here')

"-------------------------------------------------------------------------------
" [Add an UnBundle command]
function! UnBundle(arg, ...)
    let bundle = vundle#config#init_bundle(a:arg, a:000)
    call filter(g:vundle#bundles, 'v:val["name_spec"] != "' . a:arg . '"')
endfunction

"let Vundle manage Vundle
"required!
"Plugin 'gmarik/vundle'          "旧版
Plugin 'VundleVim/Vundle.vim'


"<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
" My Bundles here.插件配置格式说明
"-------------------------------------------------------------------------------
"plugin on GitHub repo
"(github网站上非vim-scripts仓库的插件，使用“用户名/插件名称”的方式指定)
"Plugin 'tpope/vim-fugitive'
"-------------------------------------------------------------------------------
"plugin from http://vim-scripts.org/vim/scripts.html
"(vim-scripts仓库里的，直接指定插件名称即可，插件明中的空格使用“-”代替)
"Plugin 'L9'
"-------------------------------------------------------------------------------
"Git plugin not hosted on GitHub
"(指定非Github的Git仓库的插件，需要使用git地址)
"Plugin 'git://git.wincent.com/command-t.git'
"-------------------------------------------------------------------------------
"(指定本地Git仓库中的插件)
"git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
"-------------------------------------------------------------------------------
"The sparkup vim script is in a subdirectory of this repo called vim.
"Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
"-------------------------------------------------------------------------------
"Install L9 and avoid a Naming conflict if you've already installed a
"different version somewhere else.
"Plugin 'ascenator/L9', {'name': 'newL9'}
">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


"*******************************************************************************
"-------------------------------------------------------------------------------
" [Code Completions]
"Plugin 'Shougo/neocomplcache.vim'
"Plugin 'Shougo/neocomplete.vim'
"Plugin 'Valloric/ListToggle'            "toggling the display of the quickfix list and the location-list
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'ervandew/supertab'              "SuperTab使Tab快捷键具有更快捷的上下文提示功能
"Plugin 'Raimondi/delimitMate'           "自动补全引号(单引号/双引号/反引号), 括号(()[]{})
" snippets
"Plugin 'msanders/snipmate.vim'          "代码块的自动补全
"Plugin 'honza/vim-snippets'             "代码片段补全
" [snipmate dependencies] 片段补全依赖
"Plugin 'MarcWeber/vim-addon-mw-utils'   "snipmate.vim依赖
Plugin 'tomtom/tlib_vim'                "好用的vim库


"-------------------------------------------------------------------------------
" [Fast navigation]
"Plugin 'edsono/vim-matchit'             "扩展自定义匹配，然后进行跳转
"Plugin 'easymotion/vim-easymotion'      "快速跳转


"-------------------------------------------------------------------------------
" [Fast editing]
"Plugin 'tpope/vim-surround'                 "快速的删除、修改和添加 括号、引号、XML标签等等
"Plugin 'scrooloose/nerdcommenter'           "快速注释
"Plugin 'sjl/gundo.vim'                      "撤销树
"Plugin 'godlygeek/tabular'                  "按等号、冒号、表格等来对齐文本
Plugin 'Yggdroot/indentLine'                "显示缩进对齐线
"Plugin 'nathanaelkane/vim-indent-guides'    "垂直缩进对齐线


"-------------------------------------------------------------------------------
" [IDE features]
Plugin 'quickfix/quickfix'                  "QuickFIX C++ Fix Engine Library
Plugin 'scrooloose/nerdtree'                "树形目录插件
"Plugin 'humiaozuzu/TabBar'                  "用标签窗口形式，显示打开的文件
Plugin 'majutsushi/tagbar'                  "ctags标签提取显示(Taglist的升级版)
"Plugin 'mileszs/ack.vim'                    "在项目里全局搜索某个单词
"Plugin 'kien/ctrlp.vim'                     "模糊搜索, 可以搜索文件/buffer/mru/tag等等
"Plugin 'tpope/vim-fugitive'                 "处理 git 信息
"Plugin 'Lokaltog/vim-powerline'             "状态栏增强插件
"Plugin 'vim-airline/vim-airline'            "状态栏增强插件
Plugin 'vim-syntastic/syntastic'            "语法检查插件
"Plugin 'bronson/vim-trailing-whitespace'    "显示行尾空格
Plugin 'vim-scripts/ShowTrailingWhitespace' "显示行尾空格


"-------------------------------------------------------------------------------
" [Syntax/Indent for language enhancement]
"------------------------------>>> C/C++
Plugin 'a.vim'                  "头文件和实现文件的快速切换
Plugin 'c.vim'

"------------------------------>>> Python
"Plugin 'lepture/vim-jinja'          "Python jinja模版引擎插件
"Plugin 'python-mode/python-mode'    "Vim python-mode. PyLint, Rope, Pydoc, breakpoints from box.
"Plugin 'python.vim'
"Plugin 'python_match.vim'
"Plugin 'pythoncomplete'             "Python Omni Completion

"------------------------------>>> PHP
"Plugin '2072/PHP-Indenting-for-VIm'
"Plugin 'xdebug/xdebug'
Plugin 'joonty/vdebug'          "php调试
"Plugin 'arnaud-lb/vim-php-namespace'

"------------------------------>>> Ruby
"Plugin 'tpope/vim-rails'        "Ruby on Rails power tools
"Plugin 'tpope/vim-endwise'

"------------------------------>>> Node.js
"Plugin 'digitaltoad/vim-jade'   "Node.js jade

"------------------------------>>> web frontend
"Plugin 'othree/html5.vim'           "html5语法检查与补全
"Plugin 'amirh/HTML-AutoCloseTag'
"Plugin 'hail2u/vim-css3-syntax'
"Plugin 'gorodinskiy/vim-coloresque'
"Plugin 'tpope/vim-haml'             "For Haml, Sass, and SCSS
"Plugin 'mattn/emmet-vim'            "写html页面,原zencoding.vim
"Plugin 'pangloss/vim-javascript'
"Plugin 'kchmck/vim-coffee-script'
"Plugin 'nono/jquery.vim'
"Plugin 'groenewege/vim-less'        "This vim bundle adds syntax highlighting, indenting and autocompletion for the dynamic stylesheet language LESS
"Plugin 'wavded/vim-stylus'          "Syntax highlighting for Stylus
"Plugin 'nono/vim-handlebars'

"------------------------------>>> markdown language
Plugin 'MikeCoder/markdown-preview.vim'
Plugin 'plasticboy/vim-markdown'
"Plugin 'tpope/vim-markdown'
"Plugin 'timcharper/textile.vim'

"------------------------------>>> Go
"Plugin 'fatih/vim-go'

"------------------------------>>> Bash
Plugin 'vim-scripts/bash-support.vim'   "用菜单和热键来编写和执行BASH脚本。Cite: http://www.360doc.com/content/12/0113/22/834950_179262769.shtml
Plugin 'Shougo/vimshell.vim'

"------------------------------>>> FPs
"Plugin 'kien/rainbow_parentheses.vim'   "括号不同颜色高亮
"Plugin 'wlangstroth/vim-racket'
"Plugin 'vim-scripts/VimClojure'
"Plugin 'rosstimson/scala-vim-support'


"-------------------------------------------------------------------------------
" [Color Schemes]
"Plugin 'rickharris/vim-blackboard'
"Plugin 'altercation/vim-colors-solarized'
"Plugin 'rickharris/vim-monokai'
"Plugin 'tpope/vim-vividchalk'
"Plugin 'Lokaltog/vim-distinguished'
"Plugin 'chriskempson/vim-tomorrow-theme'
"Plugin 'fisadev/fisa-vim-colorscheme'


"-------------------------------------------------------------------------------
" [Other Plugins]
"Plugin 'humiaozuzu/fcitx-status'            "Fcitx 输入法自动切换
"Plugin 'nvie/vim-togglemouse'               "vim中鼠标开关
Plugin 'powerman/vim-plugin-viewdoc'


" All of your Plugins must be added before the following line
call vundle#end()               "required
filetype plugin indent on       "required!      /** vimrc文件配置结束 **/
"                                               /** vundle命令 **/
" see :h vundle for more details or wiki for faq 
" NOTE: comments after Bundle command are not allowed..
