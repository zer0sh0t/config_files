" enable syntax highlighting
syntax enable

" super important
set background=dark
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
map <C-z> <C-w>s " horizontal split
map <C-x> <C-w>v " vertical split

" split screen navigation
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" fixing backspace issues
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" disable scrollbars
set mouse=a
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L

nmap <ScrollWheelUp> <nop>
nmap <S-ScrollWheelUp> <nop>
nmap <C-ScrollWheelUp> <nop>
nmap <ScrollWheelDown> <nop>
nmap <S-ScrollWheelDown> <nop>
nmap <C-ScrollWheelDown> <nop>
nmap <ScrollWheelLeft> <nop>
nmap <S-ScrollWheelLeft> <nop>
nmap <C-ScrollWheelLeft> <nop>
nmap <ScrollWheelRight> <nop>
nmap <S-ScrollWheelRight> <nop>
nmap <C-ScrollWheelRight> <nop>

imap <ScrollWheelUp> <nop>
imap <S-ScrollWheelUp> <nop>
imap <C-ScrollWheelUp> <nop>
imap <ScrollWheelDown> <nop>
imap <S-ScrollWheelDown> <nop>
imap <C-ScrollWheelDown> <nop>
imap <ScrollWheelLeft> <nop>
imap <S-ScrollWheelLeft> <nop>
imap <C-ScrollWheelLeft> <nop>
imap <ScrollWheelRight> <nop>
imap <S-ScrollWheelRight> <nop>
imap <C-ScrollWheelRight> <nop>

vmap <ScrollWheelUp> <nop>
vmap <S-ScrollWheelUp> <nop>
vmap <C-ScrollWheelUp> <nop>
vmap <ScrollWheelDown> <nop>
vmap <S-ScrollWheelDown> <nop>
vmap <C-ScrollWheelDown> <nop>
vmap <ScrollWheelLeft> <nop>
vmap <S-ScrollWheelLeft> <nop>
vmap <C-ScrollWheelLeft> <nop>
vmap <ScrollWheelRight> <nop>
vmap <S-ScrollWheelRight> <nop>
vmap <C-ScrollWheelRight> <nop> 

" compile and run programs
func! Compile()
exec "w"
if &filetype == 'sh'
    exec "!sh %"
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
