" $BJ8;z%3!<%I$N@_Dj(B
set encoding=utf-8
set fileencodings=iso-2022-jp,cp932,sjis,euc-jp,utf-8
" $B%?%VI}$N@_Dj(B
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set hlsearch

"#####$BI=<(@_Dj(B#####
syntax on
set number
set showmatch

""""""""""""""""""""""""""""""
"$BA43Q%9%Z!<%9$rI=<((B
""""""""""""""""""""""""""""""
"$B%3%a%s%H0J30$GA43Q%9%Z!<%9$r;XDj$7$F$$$k$N$G(B scriptencoding$B$H!"(B
"$B$3$N%U%!%$%k$N%(%s%3!<%I$,0lCW$9$k$h$&Cm0U!*(B
"$BA43Q%9%Z!<%9$,6/D4I=<($5$l$J$$>l9g!"$3$3$G(Bscriptencoding$B$r;XDj$9$k$HNI$$!#(B
"scriptencoding cp932

"$B%G%U%)%k%H$N(BZenkakuSpace$B$rDj5A(B
function! ZenkakuSpace()
  highlight ZenkakuSpace cterm=underline ctermfg=darkgrey gui=underline guifg=darkgrey
endfunction

if has('syntax')
  augroup ZenkakuSpace
    autocmd!
    " ZenkakuSpace$B$r%+%i!<%U%!%$%k$G@_Dj$9$k$J$i<!$N9T$O:o=|(B
    autocmd ColorScheme       * call ZenkakuSpace()
    " $BA43Q%9%Z!<%9$N%O%$%i%$%H;XDj(B
    autocmd VimEnter,WinEnter * match ZenkakuSpace /$B!!(B/
    autocmd VimEnter,WinEnter * match ZenkakuSpace '\%u3000'
  augroup END
  call ZenkakuSpace()
endif

"$B%?%V!"6uGr!"2~9T$N2D;k2=(B
set list
set listchars=tab:>.,trail:_,eol:?,extends:>,precedes:<,nbsp:%

"$BA43Q%9%Z!<%9$r%O%$%i%$%HI=<((B
function! ZenkakuSpace()
    highlight ZenkakuSpace cterm=reverse ctermfg=DarkMagenta gui=reverse guifg=DarkMagenta
endfunction
   
if has('syntax')
    augroup ZenkakuSpace
        autocmd!
        autocmd ColorScheme       * call ZenkakuSpace()
        autocmd VimEnter,WinEnter * match ZenkakuSpace /$B!!(B/
    augroup END
    call ZenkakuSpace()
endif
