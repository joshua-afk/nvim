" Airline config
let g:airline#extensions#default#layout = [
  \ [ 'a', 'b', 'c'],
  \ [ 'x', 'y', 'z', 'warning']
\ ]
let g:airline_theme='everforest'
let g:airline_section_z = '%3p%% %#__accent_bold#%{g:airline_symbols.linenr}%4l%#__restore__#%#__accent_bold#/%L%{g:airline_symbols.maxlinenr}%#__restore__# :%3v/%03{col("$")-1}'
let g:airline_powerline_fonts = 1
let g:airline#extensions#branch#enabled=0

