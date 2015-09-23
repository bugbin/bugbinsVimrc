"bugbin's own vimrc , version 1.0.0
"set compatible
syntax on "语法高亮 

"------------------颜色设置-----------------------
set t_Co=256
set background=light "背景设置
colorscheme molokai

hi Todo             ctermfg=blue ctermbg=yellow
hi Visual           ctermbg=238
hi StatusLine       ctermfg=64  ctermbg=232
hi StatusLineNC     ctermfg=237 ctermbg=178
hi PmenuSel         ctermfg=253 ctermbg=238
hi Pmenu            ctermfg=81  ctermbg=235
hi MatchParen       ctermfg=18  ctermbg=172
hi LineNr           ctermfg=178 ctermbg=234
hi CursorLine       ctermbg=22 
"--------------------------------------------------
" The following are commented out as they cause vim to behave a lot                                                                                     
" differently from regular Vi. They are highly recommended though.
"set showcmd        " Show (partial) command in status line.
"set showmatch      " Show matching brackets.
set ignorecase      " Do case insensitive matching
set smartcase       " Do smart case matching
set incsearch       " Incremental search
"set autowrite      " Automatically save before commands like :next and :make
set hidden             " Hide buffers when they are abandoned
"set mouse=a        " Enable mouse usage (all modes)
