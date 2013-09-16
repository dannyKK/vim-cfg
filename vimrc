filetype off 
call pathogen#helptags()
call pathogen#infect('~/.vim/bundle')
syntax on
filetype on
filetype plugin indent on

"tmux fix
set t_ut=

colorscheme xoria256
set tabstop=4
set wildmenu
set shiftwidth=4
set softtabstop=2
set expandtab
set autoindent
set wrapscan
set noignorecase
set ch=2
set vb
set backspace=2
set hidden
set cpoptions=ces$
set laststatus=2
set lazyredraw
set showcmd
set stl=%f\ %m\ %r%{fugitive#statusline()}\ Line:%l/%L[%p%%]\ Col:%v\ Buf:#%n\ [%b][0x%B]
set showmode
set mousehide
set guicursor=n-v-c:block-Cursor-blinkon0,ve:ver35-Cursor,o:hor50-Cursor,i-ci:ver25-Cursor,r-cr:hor20-Cursor,sm:block-Cursor-blinkon0
set guioptions=acg
set debug=msg
set history=1000
set undolevels=1000
set foldopen=block,insert,jump,mark,percent,quickfix,search,tag,undo
set scrolloff=8
set showfulltag
set textwidth=80
set fillchars = ""
set diffopt+=iwhite
set hlsearch
set incsearch
set clipboard+=unnamed
set autoread
set grepprg=grep\ -nH\ $*

"No backup and swp file
set nobackup
set noswapfile

"Personal remaps
nnoremap ; :
nnoremap j gj
nnoremap k gk
"close buffer in split, keep split open
nnoremap <silent> ,c :bp\|bd #<CR>

"set relativenumber
let mapleader = ","
nnoremap <silent> ,p :set invpaste<CR>:set paste?<CR>
nnoremap <silent> ,cd :lcd %:h<CR>
nnoremap <silent> ,md :!mkdir -p %:p:h<CR>
nnoremap <silent> ,n :nohls<CR>
cnoremap <C-A>      <Home>
cnoremap <C-B>      <Left>
cnoremap <C-E>      <End>
cnoremap <C-F>      <Right>
cnoremap <C-N>      <End>
cnoremap <C-P>      <Up>
cnoremap <ESC>b     <S-Left>
cnoremap <ESC><C-B> <S-Left>
cnoremap <ESC>f     <S-Right>
cnoremap <ESC><C-F> <S-Right>
cnoremap <ESC><C-H> <C-W>
nnoremap <silent> <C-o> 10zl
nnoremap <silent> <C-i> 10zh
set synmaxcol=2048

" Maps to make handling windows a bit easier
nnoremap <silent> ,h :wincmd h<CR>
nnoremap <silent> ,j :wincmd j<CR>
nnoremap <silent> ,k :wincmd k<CR>
nnoremap <silent> ,l :wincmd l<CR>
nnoremap <silent> ,sb :wincmd p<CR>
nnoremap <silent> <C-F9>  :vertical resize -10<CR>
nnoremap <silent> <C-F10> :resize +10<CR>
nnoremap <silent> <C-F11> :resize -10<CR>
nnoremap <silent> <C-F12> :vertical resize +10<CR>
nnoremap <silent> ,s8 :vertical resize 83<CR>
nnoremap <silent> ,cj :wincmd j<CR>:close<CR>
nnoremap <silent> ,ck :wincmd k<CR>:close<CR>
nnoremap <silent> ,ch :wincmd h<CR>:close<CR>
nnoremap <silent> ,cl :wincmd l<CR>:close<CR>
nnoremap <silent> ,cc :close<CR>
nnoremap <silent> ,cw :cclose<CR>
nnoremap <silent> ,ml <C-W>L
nnoremap <silent> ,mk <C-W>K
nnoremap <silent> ,mh <C-W>H
nnoremap <silent> ,mj <C-W>J
nnoremap <silent> <C-7> <C-W>>
nnoremap <silent> <C-8> <C-W>+
nnoremap <silent> <C-9> <C-W>+
nnoremap <silent> <C-0> <C-W>>

nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>
" Edit the vimrc file
nnoremap <silent> ,ev :e $MYVIMRC<CR>
nnoremap <silent> ,sv :so $MYVIMRC<CR>
