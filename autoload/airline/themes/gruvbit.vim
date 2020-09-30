" vim-airline template
" Gruvbit (https://github.com/habamax/vim-gruvbit)
let g:airline#themes#gruvbit#palette = {}
let s:gui00 = "#1d2021"
let s:gui01 = "#444444"
let s:gui02 = "#585858"
let s:gui03 = "#585858"
let s:gui04 = "#bdae93"
let s:gui05 = "#968772"
let s:gui06 = "#ebdbb2"
let s:gui07 = "#fbf1c7"
let s:gui08 = "#e9593d"
let s:gui09 = "#ebdbb2"
let s:gui0A = "#d3869b"
let s:gui0B = "#8ec07c"
let s:gui0C = "#dc9656"
let s:gui0D = "#fabd2f"
let s:gui0E = "#83a598"
let s:gui0F = "#fe8019"

let s:cterm00 = 234
let s:cterm01 = 238
let s:cterm02 = 240
let s:cterm03 = 240
let s:cterm04 = 143
let s:cterm05 = 102
let s:cterm06 = 187
let s:cterm07 = 230
let s:cterm08 = 202
let s:cterm09 = 187
let s:cterm0A = 175
let s:cterm0B = 107
let s:cterm0C = 215
let s:cterm0D = 214
let s:cterm0E = 109
let s:cterm0F = 208

let s:N1   = [ s:gui01, s:gui0B, s:cterm01, s:cterm0B ]
let s:N2   = [ s:gui06, s:gui02, s:cterm06, s:cterm02 ]
let s:N3   = [ s:gui09, s:gui01, s:cterm09, s:cterm01 ]
let g:airline#themes#gruvbit#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let s:I1   = [ s:gui01, s:gui0D, s:cterm01, s:cterm0D ]
let s:I2   = [ s:gui06, s:gui02, s:cterm06, s:cterm02 ]
let s:I3   = [ s:gui09, s:gui01, s:cterm09, s:cterm01 ]
let g:airline#themes#gruvbit#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)

let s:R1   = [ s:gui01, s:gui08, s:cterm01, s:cterm08 ]
let s:R2   = [ s:gui06, s:gui02, s:cterm06, s:cterm02 ]
let s:R3   = [ s:gui09, s:gui01, s:cterm09, s:cterm01 ]
let g:airline#themes#gruvbit#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)

let s:V1   = [ s:gui01, s:gui0E, s:cterm01, s:cterm0E ]
let s:V2   = [ s:gui06, s:gui02, s:cterm06, s:cterm02 ]
let s:V3   = [ s:gui09, s:gui01, s:cterm09, s:cterm01 ]
let g:airline#themes#gruvbit#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)

let s:IA1   = [ s:gui05, s:gui01, s:cterm05, s:cterm01 ]
let s:IA2   = [ s:gui05, s:gui01, s:cterm05, s:cterm01 ]
let s:IA3   = [ s:gui05, s:gui01, s:cterm05, s:cterm01 ]
let g:airline#themes#gruvbit#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)

let g:airline#themes#gruvbit#palette.terminal = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#gruvbit#palette.normal.airline_term = s:N3
let g:airline#themes#gruvbit#palette.terminal.airline_term = s:N3
let g:airline#themes#gruvbit#palette.visual.airline_term = s:N3

" Here we define the color map for ctrlp.  We check for the g:loaded_ctrlp
" variable so that related functionality is loaded iff the user is using
" ctrlp. Note that this is optional, and if you do not define ctrlp colors
" they will be chosen automatically from the existing palette.
if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#gruvbit#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ s:gui07, s:gui02, s:cterm07, s:cterm02, '' ],
      \ [ s:gui07, s:gui04, s:cterm07, s:cterm04, '' ],
      \ [ s:gui05, s:gui01, s:cterm05, s:cterm01, 'bold' ])
