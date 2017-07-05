" Core Config

" Identify platform {
    source $vim_root/core/platform.vim
" }

" Basics {
    source $vim_root/core/basics.vim
" }

" Windows Compatible {
    source $vim_root/core/windows.vim
" }

" Arrow Key Fix {
    source $vim_root/core/arrowkey-fix.vim
" }

" Functions {
    source $vim_root/core/functions.vim
" }

" Use before config if available {
    if filereadable(expand("~/.EverVim.vimrc"))
        source ~/.EverVim.vimrc
    endif
" }

" Use bundles config {
    if filereadable(expand($vim_root . "/plugins/plugins.vim"))
        source $vim_root/plugins/plugins.vim
    endif
" }

" General {
    source $vim_root/core/general.vim
" }

" Vim UI {
    source $vim_root/core/vimui.vim
" }

" Formatting {
    source $vim_root/core/formatting.vim
" }

" Key (re)Mappings {
    source $vim_root/core/keymap.vim
" }
"
" Plugin Configuration {
    source $vim_root/plugins/plugin-config.vim
" }
"
" GUI Config {
    source $vim_root/core/gui.vim
" }
