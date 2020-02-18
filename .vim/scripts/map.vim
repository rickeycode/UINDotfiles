if !exists('g:env')
    finish
endif

" Common {{{1
if !g:plug.is_installed('mru.vim')
    "if exists(':MRU2')
    if exists('*s:MRU_Create_Window')
        nnoremap <silent> [Space]j :<C-u>call <SID>MRU_Create_Window()<CR>
        "nnoremap <silent> [Space]j :<C-u>MRU<CR>
    endif

    " comment
    if g:plug.is_installed('caw.vim') 
        nmap <C-K> <Plug>(caw:hatpos:toggle)
        vmap <C-K> <Plug>(caw:hatpos:toggle)
    endif

    " tree
    map <C-n> :NERDTreeToggle<CR>
endif

" command
command! -nargs=? Jq call s:Jq(<f-args>)
function! s:Jq(...)
    if 0 == a:0
        let l:arg = "."
    else
        let l:arg = a:1
    endif
    execute "%! jq \"" . l:arg . "\""
endfunction

" Use backslash
if IsMac()
    noremap ¥ \
    noremap \ ¥
endif
"}}}


" __END__ {{{1
" vim:fdm=marker expandtab fdc=3:
