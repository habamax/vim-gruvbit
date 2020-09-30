if !exists('g:lightline')
    finish
endif

let s:bg0  = ['#1d2021', '234']
let s:bg1  = ['#444444', '234']
let s:bg2  = ['#585858', '234']
let s:fg1  = ['#968772', '187']
let s:fg2  = ['#ebdbb2', '102']

let s:yellow = ['#fabd2f', '214']
let s:blue   = ['#83a598', '109']
let s:brown  = ['#dc9656', '215']
let s:orange = ['#fe8019', '208']
let s:green  = ['#8ec07c', '107']

let s:p = {'normal':{}, 'inactive':{}, 'insert':{}, 'replace':{}, 'visual':{}, 'tabline':{}, 'terminal':{}}
let s:p.normal.left = [ [ s:bg0, s:fg2, 'bold' ], [ s:fg2, s:bg2 ] ]
let s:p.normal.right = [ [ s:bg0, s:fg2 ], [ s:fg2, s:bg2 ] ]
let s:p.normal.middle = [ [ s:fg2, s:bg1 ] ]
let s:p.inactive.right = [ [ s:fg1, s:bg1 ], [ s:fg1, s:bg1 ] ]
let s:p.inactive.left =  [ [ s:fg1, s:bg1 ], [ s:fg1, s:bg1 ] ]
let s:p.inactive.middle = [ [ s:fg1, s:bg1 ] ]
let s:p.insert.left = [ [ s:bg0, s:green, 'bold' ], [ s:fg2, s:bg2 ] ]
let s:p.insert.right = [ [ s:bg0, s:green ], [ s:fg2, s:bg2 ] ]
let s:p.insert.middle = [ [ s:fg2, s:bg1 ] ]
let s:p.terminal.left = [ [ s:bg0, s:orange, 'bold' ], [ s:fg2, s:bg2 ] ]
let s:p.terminal.right = [ [ s:bg0, s:orange ], [ s:fg2, s:bg2 ] ]
let s:p.terminal.middle = [ [ s:fg2, s:bg1 ] ]
let s:p.replace.left = [ [ s:bg0, s:yellow, 'bold' ], [ s:fg2, s:bg2 ] ]
let s:p.replace.right = [ [ s:bg0, s:yellow ], [ s:fg2, s:bg2 ] ]
let s:p.replace.middle = [ [ s:fg2, s:bg1 ] ]
let s:p.visual.left = [ [ s:bg0, s:blue, 'bold' ], [ s:fg2, s:bg2 ] ]
let s:p.visual.right = [ [ s:bg0, s:blue ], [ s:fg2, s:bg2 ] ]
let s:p.visual.middle = [ [ s:fg2, s:bg1 ] ]
let s:p.tabline.left = [ [ s:fg2, s:bg2 ] ]
let s:p.tabline.tabsel = [ [ s:bg0, s:fg2 ] ]
let s:p.tabline.middle = [ [ s:bg1, s:bg1 ] ]
let s:p.tabline.right = [ [ s:bg0, s:orange ] ]
let s:p.normal.error = [ [ s:bg0, s:orange ] ]
let s:p.normal.warning = [ [ s:bg2, s:yellow ] ]

let g:lightline#colorscheme#gruvbit#palette = lightline#colorscheme#flatten(s:p)
