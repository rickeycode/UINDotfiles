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
endif

" Use backslash
if IsMac()
    noremap ¥ \
    noremap \ ¥
endif
"}}}


" __END__ {{{1
" vim:fdm=marker expandtab fdc=3:
