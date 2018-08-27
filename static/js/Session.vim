let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/workspace/python/django/bob_ross/bob_ross/happy_trees/templates
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +12 index.html
badd +5 ~/workspace/python/django/bob_ross/bob_ross/happy_trees/urls.py
badd +23 ~/workspace/python/django/bob_ross/bob_ross/bob_ross/urls.py
badd +0 term://.//16219:/bin/zsh
badd +4 ~/workspace/python/django/bob_ross/bob_ross/happy_trees/views.py
badd +127 ~/workspace/python/django/bob_ross/bob_ross/bob_ross/settings.py
badd +5 ~/workspace/python/django/bob_ross/bob_ross/static/js/main.js
argglobal
silent! argdel *
$argadd index.html
edit index.html
set splitbelow splitright
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
2wincmd k
wincmd w
wincmd w
wincmd t
set winminheight=1 winminwidth=1 winheight=1 winwidth=1
exe '1resize ' . ((&lines * 17 + 17) / 35)
exe '2resize ' . ((&lines * 9 + 17) / 35)
exe '3resize ' . ((&lines * 5 + 17) / 35)
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 14 - ((13 * winheight(0) + 8) / 17)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
14
normal! 021|
lcd ~/workspace/python/django/bob_ross/bob_ross/happy_trees/templates
wincmd w
argglobal
if bufexists('~/workspace/python/django/bob_ross/bob_ross/static/js/main.js') | buffer ~/workspace/python/django/bob_ross/bob_ross/static/js/main.js | else | edit ~/workspace/python/django/bob_ross/bob_ross/static/js/main.js | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 5 - ((4 * winheight(0) + 4) / 9)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
5
normal! 02|
lcd ~/workspace/python/django/bob_ross/bob_ross/static/js
wincmd w
argglobal
if bufexists('term://.//16219:/bin/zsh') | buffer term://.//16219:/bin/zsh | else | edit term://.//16219:/bin/zsh | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 776 - ((4 * winheight(0) + 2) / 5)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
776
normal! 0
lcd ~/workspace/python/django/bob_ross/bob_ross/happy_trees
wincmd w
2wincmd w
exe '1resize ' . ((&lines * 17 + 17) / 35)
exe '2resize ' . ((&lines * 9 + 17) / 35)
exe '3resize ' . ((&lines * 5 + 17) / 35)
tabnext 1
if exists('s:wipebuf') && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 winminheight=1 winminwidth=1 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
