" Basics
set nocompatible        " 去掉讨厌的有关vi一致性模式，避免以前版本的一些bug和局限
set cmdheight=1         " 命令行（在状态行下）的高度，设置为1 
set helplang=cn         " 设置中文帮助文档，若需要英文则改为helplang=en
"set langmenu=zh_CN.UTF-8
set background=dark     " Assume a dark background
if !WINDOWS()
    set shell=/bin/sh
endif
