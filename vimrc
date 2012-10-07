filetype off 
call pathogen#helptags()
call pathogen#infect('~/.vim/bundle')
syntax on
filetype on
filetype plugin indent on

colorscheme xoria256
set tabstop=2
set wildmenu
set shiftwidth=2
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

"set relativenumber
let mapleader = ","
nmap <silent> ,p :set invpaste<CR>:set paste?<CR>
nmap <silent> ,cd :lcd %:h<CR>
nmap <silent> ,md :!mkdir -p %:p:h<CR>
nmap <silent> ,n :nohls<CR>
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
noremap <silent> <C-F9>  :vertical resize -10<CR>
noremap <silent> <C-F10> :resize +10<CR>
noremap <silent> <C-F11> :resize -10<CR>
noremap <silent> <C-F12> :vertical resize +10<CR>
nmap <silent> <C-o> 10zl
nmap <silent> <C-i> 10zh
set synmaxcol=2048

" Maps to make handling windows a bit easier
noremap <silent> ,h :wincmd h<CR>
noremap <silent> ,j :wincmd j<CR>
noremap <silent> ,k :wincmd k<CR>
noremap <silent> ,l :wincmd l<CR>
noremap <silent> ,sb :wincmd p<CR>
noremap <silent> <C-F9>  :vertical resize -10<CR>
noremap <silent> <C-F10> :resize +10<CR>
noremap <silent> <C-F11> :resize -10<CR>
noremap <silent> <C-F12> :vertical resize +10<CR>
noremap <silent> ,s8 :vertical resize 83<CR>
noremap <silent> ,cj :wincmd j<CR>:close<CR>
noremap <silent> ,ck :wincmd k<CR>:close<CR>
noremap <silent> ,ch :wincmd h<CR>:close<CR>
noremap <silent> ,cl :wincmd l<CR>:close<CR>
noremap <silent> ,cc :close<CR>
noremap <silent> ,cw :cclose<CR>
noremap <silent> ,ml <C-W>L
noremap <silent> ,mk <C-W>K
noremap <silent> ,mh <C-W>H
noremap <silent> ,mj <C-W>J
noremap <silent> <C-7> <C-W>>
noremap <silent> <C-8> <C-W>+
noremap <silent> <C-9> <C-W>+
noremap <silent> <C-0> <C-W>>

nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>
" Edit the vimrc file
nmap <silent> ,ev :e $MYVIMRC<CR>
nmap <silent> ,sv :so $MYVIMRC<CR>

" Make horizontal scrolling easier
nmap <silent> <C-o> 10zl
nmap <silent> <C-i> 10zh
nmap ,x :w<cr>:!chmod 755 %<cr>:e<cr>
