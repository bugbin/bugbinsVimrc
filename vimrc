"bugbin's own vimrc , version 1.0.0

if has("autocmd")
     "au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
      au BufReadPost * exe "normal! g`\""
endif 

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

highlight ExtraWhitespace ctermbg=red guibg=red "空格字符显示红色

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

" --------------------------------------------------------------------------- "
" generic settings. some of them are picked up from debian.vim

set nocp " 'nocompatible': Use Vim defaults instead of 100% vi compatibility
set bs=indent,eol,start " more powerful backspacing
set hi=50 " keep 50 lines of command line history
set ru " 'ruler': show the cursor position all the time
set nowb " 'nowriteback'
set nobk " 'nobackup'
set noswf " 'noswapfile'
set nu " 'number': show line number
set nows " 'nowrapscan': searching stops when reaching the end of file
set fdm=syntax " 'foldmethod': fold multi lines by syntax
set fdl=9999 " 'foldlevel': unfold automatically when opening a file
set fencs=utf-8,gbk " 'fileencodings'
set nohls " 'hlsearch': highlight search key
set nomodeline " modelines have historically been a source of security/resource vulnerabilities -- disable by default, even when 'nocompatible' is set
set ar " 'autoread': auto read modified buffer
set wmnu " 'wildmenu': command-line completion
set cot=longest,menuone " 'completeopt': do not show the preview window when omnicompleting
set noinf " 'noinfercase': complete the word as it is

au WinEnter,BufEnter * set cursorline " highlight current line when entering a buffer
au WinLeave,BufLeave * set nocursorline

"autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
"autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" im auto-switch. available in gvim
"au InsertEnter * set noimdisable
"au InsertLeave * set imdisable

" --------------------------------------------------------------------------- "
" c indent options

set cino=b1,t0,(0,l1,N-s " 'cinoptions': see 'cinoptions-values'
set cink+=0=break " 'cinkeys': for cinoptions
set sw=4 " 'shiftwidth': 4 spaces for indent
set sts=4 " 'softtabstop': delete 4 spaces once
set tabstop=4
set et " 'expandtab': insert spaces instead of tab
set sta " 'smarttab'

" --------------------------------------------------------------------------- "
