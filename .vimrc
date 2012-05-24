set nocompatible

map <F6> :tabnext<CR>
map <F5> :tabprevious<CR>
map <F3> :tabnew<CR>
map <F9> :make %<<CR>
map gf :tabnew <cfile><CR>


" --- syntax and indent ---
syntax on
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set cindent
set expandtab
set nolinebreak
set showmatch

" ---editing setting ---
set nobackup
set backspace=2 "use backspace key to delete in insert mode

" ---encoding---
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb2312,gb18030,big5,euc-jp,euc-kr,latin1
set fileencoding=utf-8
set termencoding=utf-8

" ---fileformat---
set ffs=unix,dos,mac
set ff=unix

colorscheme desert
set columns=120
set number

" statusline
set laststatus=2
set statusline=%f\ %m%y[%{&ff}:%{&fenc}]%=%10.(\ %l,%c%V%)\ %5.(%P%)


filetype on
filetype plugin on

set mouse=a

"---find and substitute ---
set incsearch
set hlsearch
set ignorecase
set sm



"---ctags setting---
set path=.,/usr/include/,/usr/local/include
map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
set tags+=./tags,tags,/usr/include/tags   


"---Tlist setting---
let Tlist_Ctags_Cmd='ctags'
let Tlist_Use_Right_Window=0
let Tlist_Show_One_File=0
let Tlist_File_Fold_Auto_Close=1
let Tlist_Exit_OnlyWindow=1
let Tlist_Process_File_Always=1
let Tlist_WinHeight=100
let Tlist_WinWidth=24
let Tlist_Inc_WinWidth=0

"---acp setting---
let g:acp_completeoptPreview = 0

"---omni setting---
let OmniCpp_MayCompleteScope = 1
let OmniCpp_DefaultNamespaces = ["std"]
set completeopt=longest,menu


"---bufexploerr seting---
let g:bufExplorerDefaultHelp=0       " Do not show default help.
let g:bufExplorerShowRelativePath=1  " Show relative paths.
let g:bufExplorerSortBy='mru'        " Sort by most recently used.
let g:bufExplorerSplitRight=0        " Split left.
let g:bufExplorerSplitVertical=1     " Split vertically.
let g:bufExplorerSplitVertSize = 40  " Split width
let g:bufExplorerUseCurrentWindow=1  " Open in new window. 
autocmd BufWinEnter \[Buf\ List\] setl nonumber

"---project setting---
let g:proj_flags="imstFST"

"---WinManager :WMToggle---
let g:winManagerWindowLayout='FileExplorer,BufExplorer|TagList'
let g:winManagerWidth=30
let g:defaultExplorer=0
nmap <silent> <leader>wm :WMToggle<CR>

