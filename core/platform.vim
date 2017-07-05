" Identify platform 
silent function! OSX()
    return has('macunix')
endfunction

silent function! LINUX()
    return has('unix') && !has('macunix') && !has('win32unix')
endfunction

silent function! BSD()
    return system('uname -s') =~ "BSD"
endfunction

silent function! WINDOWS()
    return  (has('win32') || has('win64'))
endfunction

silent function! CROS()
    return LINUX() && (system('cat /proc/version') =~ 'cros' || system('ls /dev') =~ 'cros')
endfunction

silent function! DISTRO()
    return substitute(system('lsb_release -si'), '[\n]\+', '', 'g')
endfunction

silent function! GVIM()
    return has('gui_running')
endfunction
