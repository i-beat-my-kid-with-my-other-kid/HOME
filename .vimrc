set nocompatible
set noexrc
set mouse=
set shortmess=aIt
set backspace=indent,eol,start
set encoding=utf-8
set history=10
set backup
set writebackup
set backupdir=/var/tmp
set directory=/var/tmp
set tabstop=8
set shell=/bin/sh
set autoindent
set smartindent
set cinwords+=func
set splitright
set splitbelow
set hlsearch
set incsearch
set smartcase
set wildmenu
set wildmode=longest:full,full
set visualbell
set t_vb=
set number
set showtabline=1
set scrolloff=3
set timeoutlen=300
set laststatus=2
set statusline=%=%R\ %M\ %1*[%*%02.p%%\ %03.l/%03.L\ %02.v%1*]\ [%*%t\
\ %{&encoding}:%{&fileformat}%1*]
set foldenable
set foldmethod=marker
set spelllang=en_us
set ofu=syntaxcomplete#Complete
set listchars=tab:->,trail:$
set hidden
set autowrite
set colorcolumn=80
set viminfo='100,<300,s10,h
set tags+=tags;
filetype plugin on
syntax on
colorscheme sweetsixteen

au BufRead,BufNewFile *.{tmp,temp,txt} set filetype=mail
au BufRead,BufNewFile * syn match Parens /[\[\](){}]/
au BufRead,BufNewFile * syn match Error display excludenl "\s\+$"

au FileType lua  noremap <C-m> :w<CR>:!clear;/usr/bin/lua %<CR>
au FileType {cpp,c,go} noremap <C-m> :w<CR>:!clear<CR>:make<CR>
au FileType mail setlocal spell textwidth=72 colorcolumn=72

au InsertEnter * hi StatusLine ctermfg=5 guibg=#af0087
au InsertLeave * hi StatusLine ctermfg=6 guibg=#008787


function MapAllModes(key, cmd)
	let str = a:cmd."<CR>"
	exec 'noremap <silent> '.a:key.' '.str
	exec 'noremap! <silent> '.a:key." \<C-o>".str
endfunction
command -nargs=+ MapAllModes call MapAllModes(<f-args>)

function MapToggle(key, opt)
	call MapAllModes(a:key, ':set '.a:opt.'!')
endfunction
command -nargs=+ MapToggle call MapToggle(<f-args>)

nnoremap    <C-v>      <C-t>
nnoremap    <C-l>      :nohls<CR><C-l>
noremap     <C-f>      <nop>
noremap     <C-z>      <nop>
inoremap    <C-z>      <nop>
vnoremap    <C-z>      <nop>
nmap         gc        :bd<CR>
map          gb        <C-^>
noremap      gn        :bnext<CR>
noremap      gp        :bprev<CR>
MapAllModes <C-y>      :NERDTreeToggle
MapAllModes ,cn :cn
MapAllModes ,cp :cN
MapAllModes <C-b>      :TMiniBufExplorer

set pastetoggle=<F1>
MapToggle       <F2>  cursorline
MapToggle       <F3>  cursorcolumn
MapToggle       <F5>  spell
MapToggle       <F6>  number
MapToggle       <F7>  list
MapAllModes     <F8>  :set\ spelllang=de_de
MapAllModes     <F9>  :set\ spelllang=en_us
MapAllModes     <F10> :Tlist


let g:NERDTreeWinSize = 30
let g:NERDTreeQuitOnOpen = 1

let g:Tlist_Exit_OnlyWindow = 1
let g:Tlist_Show_One_File = 1
let g:Tlist_Use_Right_Window = 0
let g:Tlist_Enable_Fold_Column = 0
let g:Tlist_Auto_Open = 0
"let g:Tlist_Compact_Format = 1
"let g:Tlist_WinWidth = 50
"let g:Tlist_GainFocus_On_ToggleOpen = 1
"let g:Tlist_Display_Prototype = 1
"let g:Tlist_Sort_Type = "name"

let g:miniBufExplVSplit = 20
let g:miniBufExplorerMoreThanOne = 2
let g:miniBufExplForceSyntaxEnable = 0

function MyTabLine()
	let s = ''
	let t = tabpagenr()
	let i = 1
	while i <= tabpagenr('$')
		let buflist = tabpagebuflist(i)
		let winnr = tabpagewinnr(i)
		let s .= ' %#User1#['
		let s .= (i == t ? '%#TabLineSel#' : '%#TabLine#')
		let file = bufname(buflist[winnr - 1])
		if file == ''
			let file = 'untitled'
		endif
		let s .= file . '%#User1#]'
		let i = i + 1
	endwhile
	let s .= '%#TabLineFill#'
	return s
endfunction
set tabline=%!MyTabLine()
