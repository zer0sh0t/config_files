" enable syntax highlighting
syntax enable

" super important
set background=light " this is actually the dark theme coz the terminal comes in dark theme by default
set encoding=utf8

" display line numbers
set number

" show status line
set laststatus=2

" height of cmd bar
set cmdheight=1

" undo limit
set history=500

" map tab to 4 spaces
set expandtab
set smarttab
set tabstop=4
set shiftwidth=4

" indentation stuff
set autoindent
set smartindent

" turn off blinking and all annoying sounds
set belloff=all

" enable line wrapping
set wrap

" show current position
set ruler

" highlight search results
set hlsearch

" show partial matches
set incsearch

" show matching brackets
set showmatch

" split screens
map <C-c> <C-w>s " horizontal split
map <C-v> <C-w>v " vertical split

" split screen navigation
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" fixing backspace issues
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" disable scrollbars
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L

" compile and run programs
func! Compile()
exec "w"
if &filetype == 'sh'
    exec "sh %"
elseif &filetype == 'c'
    exec "!gcc % -o %< && ./%<"
elseif &filetype == 'cpp'
    exec "!g++ % -o %< && ./%<"
elseif &filetype == 'python'
    exec "!python %"
endif
endfunc

" map the function to F5
map <F5> :call Compile()<CR>
imap <F5> <Esc>:call Compile()<CR>
vmap <F5> <Esc>:call Compile()<CR>
