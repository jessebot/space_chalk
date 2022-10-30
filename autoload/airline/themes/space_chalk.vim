let g:airline#themes#space_chalk#palette = {}
"        #E8FBFF bright white
"        #CAEAFF chalky white
"        #ffaff9 light pink
"        #f289f9 neon magenta
"        #f2748a pale dark red
"        #ff8d87 soft redish orange
"        #fdcd36 light orange
"        #f7fb53 bright yellow 
"        #f6f76a soft yellow 
"        #a8fd57 lime green
"        #c2ff87 lighter green
"        #5f87ff cornflower blue
"        #3cafff blue
"        #a3a8f8 medium purple
" 
"        #232336 blueish black
"        #1d2652 navy blue
"        #2569aa darker blue
"        #585858 gray
"        #323232 grayish black

" Color palette
let s:cterm_termbg    = 240  " Background for branch and file format blocks
let s:gui_termbg      = '#585858'
let s:cterm_termfg    = 178  " Foreground for branch and file format blocks
let s:gui_termfg      = '#fdcd36'

let s:cterm_termbg2   = 236  " Background for middle block
let s:gui_termbg2     = '#323232'
let s:cterm_termfg2   = 15   " Foreground for middle block
let s:gui_termfg2     = '#E8FBFF'

let s:cterm_normalbg  = 69   " Background for normal mode and file position blocks
let s:gui_normalbg    = '#5F87FF'
let s:cterm_normalfg  = 236   " Foreground for normal mode and file position blocks
let s:gui_normalfg    = '#323232'

let s:cterm_insertbg  = 119   " Background for insert mode and file position blocks
let s:gui_insertbg    = '#a8fd57'
let s:cterm_insertfg  = 17   " Foreground for insert mode and file position blocks
let s:gui_insertfg    = '#1d2652'

let s:cterm_visualbg  = 32  " Background for visual mode and file position blocks
let s:gui_visualbg    = '#2569aa'
let s:cterm_visualfg  = 119   " Foreground for visual mode and file position blocks
let s:gui_visualfg    = '#a8fd57'

let s:cterm_replacebg = 213   " Background for replace mode and file position blocks
let s:gui_replacebg   = '#f289f9'
let s:cterm_replacefg = 236   " Foreground for replace mode and file position blocks
let s:gui_replacefg   = '#323232'

let s:cterm_alert     = 204   " Modified file alert color
let s:gui_alert       = '#f2748a'

let s:cterm_inactivebg = 17 " Background for inactive mode
let s:gui_inactivebg   = '#232336'
let s:cterm_inactivefg = 240 " Foreground for inactive mode
let s:gui_inactivefg   = '#585858'

" Branch and file format
let s:BB = [s:gui_termfg, s:gui_termbg, s:cterm_termfg, s:cterm_termbg] " Branch and file format blocks

" Normal mode
let s:N1 = [s:gui_normalfg, s:gui_normalbg, s:cterm_normalfg, s:cterm_normalbg] " Outside blocks in normal mode
let s:N2 = [s:gui_termfg2, s:gui_termbg2, s:cterm_normalbg, s:cterm_termbg2]     " Middle block
let g:airline#themes#space_chalk#palette.normal = airline#themes#generate_color_map(s:N1, s:BB, s:N2)
let g:airline#themes#space_chalk#palette.normal_modified = {'airline_c': [s:gui_alert, s:gui_termbg2, s:cterm_alert, s:cterm_termbg2, 'bold'] ,}

" Insert mode
let s:I1 = [s:gui_insertfg, s:gui_insertbg, s:cterm_insertfg, s:cterm_insertbg] " Outside blocks in insert mode
let s:I2 = [s:gui_insertbg, s:gui_termbg2, s:cterm_insertbg, s:cterm_termbg2]   " Middle block
let g:airline#themes#space_chalk#palette.insert = airline#themes#generate_color_map(s:I1, s:BB, s:I2)
let g:airline#themes#space_chalk#palette.insert_modified = {'airline_c': [s:gui_alert, s:gui_termbg2, s:cterm_alert, s:cterm_termbg2, 'bold'] ,}

" Replace mode
let s:R1 = [s:gui_replacefg, s:gui_replacebg, s:cterm_replacefg, s:cterm_replacebg]  " Outside blocks in replace mode
let s:R2 = [s:gui_termfg, s:gui_termbg2, s:cterm_termfg, s:cterm_termbg2]            " Middle block
let g:airline#themes#space_chalk#palette.replace = airline#themes#generate_color_map(s:R1, s:BB, s:R2)
let g:airline#themes#space_chalk#palette.replace_modified = {'airline_c': [s:gui_alert, s:gui_termbg2, s:cterm_alert, s:cterm_termbg2, 'bold'] ,}

" Visual mode
let s:V1 = [s:gui_visualfg, s:gui_visualbg, s:cterm_visualfg, s:cterm_visualbg] " Outside blocks in visual mode
let s:V2 = [s:gui_visualbg, s:gui_termbg2, s:cterm_visualbg, s:cterm_termbg2]   " Middle block
let g:airline#themes#space_chalk#palette.visual = airline#themes#generate_color_map(s:V1, s:BB, s:V2)
let g:airline#themes#space_chalk#palette.visual_modified = {'airline_c': [s:gui_alert, s:gui_termbg2, s:cterm_alert, s:cterm_termbg2, 'bold'] ,}

" Inactive mode
let s:IA1 = [s:gui_inactivefg, s:gui_inactivebg, s:cterm_inactivefg, s:cterm_inactivebg, '']
let s:IA2 = [s:gui_inactivefg, s:gui_inactivebg, s:cterm_inactivefg, s:cterm_inactivebg, '']
let s:IA3 = [s:gui_inactivefg, s:gui_inactivebg, s:cterm_inactivefg, s:cterm_inactivebg, '']
let g:airline#themes#space_chalk#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)

" CtrlP plugin colors
if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#space_chalk#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [s:gui_normalfg, s:gui_normalbg, s:cterm_normalfg, s:cterm_normalbg, ''],
      \ [s:gui_termfg, s:gui_termbg, s:cterm_termfg, s:cterm_termbg, ''],
      \ [s:gui_termfg2, s:gui_termbg2, s:cterm_termfg2, s:cterm_termbg2, 'bold'])


" Warning/Error styling code from vim-airline's ["base16" theme](https://github.com/vim-airline/vim-airline-themes/blob/master/autoload/airline/themes/base16.vim)

" Warnings
let s:WI = [ '#585858', '#f7fb53', s:term_black, s:term_yellow ]
let g:airline#themes#space_chalk#palette.normal.airline_warning =
    \ [ s:WI[0], s:WI[1], s:WI[2], s:WI[3] ]

let g:airline#themes#space_chalk#palette.normal_modified.airline_warning =
    \ g:airline#themes#space_chalk#palette.normal.airline_warning

let g:airline#themes#space_chalk#palette.insert.airline_warning =
    \ g:airline#themes#space_chalk#palette.normal.airline_warning

let g:airline#themes#space_chalk#palette.insert_modified.airline_warning =
    \ g:airline#themes#space_chalk#palette.normal.airline_warning

let g:airline#themes#space_chalk#palette.visual.airline_warning =
    \ g:airline#themes#space_chalk#palette.normal.airline_warning

let g:airline#themes#space_chalk#palette.visual_modified.airline_warning =
    \ g:airline#themes#space_chalk#palette.normal.airline_warning

let g:airline#themes#space_chalk#palette.replace.airline_warning =
    \ g:airline#themes#space_chalk#palette.normal.airline_warning

let g:airline#themes#space_chalk#palette.replace_modified.airline_warning =
    \ g:airline#themes#space_chalk#palette.normal.airline_warning

" Errors
let s:ER = [ '#323232', '#f2748a', s:term_black, s:term_red ]
let g:airline#themes#space_chalk#palette.normal.airline_error =
    \ [ s:ER[0], s:ER[1], s:ER[2], s:ER[3] ]

let g:airline#themes#space_chalk#palette.normal_modified.airline_error =
    \ g:airline#themes#space_chalk#palette.normal.airline_error

let g:airline#themes#space_chalk#palette.insert.airline_error =
    \ g:airline#themes#space_chalk#palette.normal.airline_error

let g:airline#themes#space_chalk#palette.insert_modified.airline_error =
    \ g:airline#themes#space_chalk#palette.normal.airline_error

let g:airline#themes#space_chalk#palette.visual.airline_error =
    \ g:airline#themes#space_chalk#palette.normal.airline_error

let g:airline#themes#space_chalk#palette.visual_modified.airline_error =
    \ g:airline#themes#space_chalk#palette.normal.airline_error

let g:airline#themes#space_chalk#palette.replace.airline_error =
    \ g:airline#themes#space_chalk#palette.normal.airline_error

let g:airline#themes#space_chalk#palette.replace_modified.airline_error =
    \ g:airline#themes#space_chalk#palette.normal.airline_error
