syntax on
set number
set incsearch	" enable searching as you type
set ignorecase	" ignore case in searches by default
set smartcase	" but make it case sensitive if an uppercase is entered
set hls		" enable search highlighting

let mapleader = ","

nnoremap <leader>w :w<CR>
command! W w
nnoremap <C-C> :q<CR>
nnoremap <leader>q :q<cr>
" toggle line numbers
nnoremap <leader>n :set number!<CR>
nnoremap <leader>f :filetype detect<CR>
" ctrl l will clear search highlights
nnoremap <silent> <C-l> :nohl<CR><C-l>
" toggle ruler
nnoremap <leader>8 :call ToggleCC()<CR>

" groff .ms --> pdf
autocmd BufRead,BufNewFile *.ms nnoremap <leader><leader> :w<CR>:!gack %<CR><CR>
" .md --> html
autocmd BufRead,BufNewFile *.md nnoremap <leader><leader> :w<CR>:!phd % %:r.html<CR><CR>
" delete trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e

" change highlight colors
hi MatchParen cterm=bold ctermfg=black ctermbg=white
hi Search cterm=NONE ctermfg=grey ctermbg=blue
hi ColorColumn ctermbg=4

" store swp files in ~/.vim/tmp
set directory^=$HOME/.vim/tmp//

" native nerdtree alternative using netrw
let g:netrw_banner = 0
let g:netrw_browse_split = 4
let g:netrw_liststyle = 3
let g:netrw_winsize = 25
let g:netrw_altv = 1
let g:netrw_fastbrowse = 0
nnoremap <C-n> :Lexplore<CR>

" attempts to fix some buffer bugs with netrw
source $HOME/.vim/rc/bclose
nnoremap <C-b> :Bclose<CR>
set nohidden
autocmd FileType netrw setl bufhidden=delete

" helper used to toggle ruler
fun! ToggleCC()
	if &cc == ''
		set cc=80,100
	else
		set cc=
	endif
endfun

" ---stash of cool stuff---
	"set tabstop=4
	"set mouse+=a	" enable mouse support

	" recognize .md files as markdown files
	"au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown
	" enable spell-checking for markdown files
	"autocmd BufRead,BufNewFile *.md setlocal spell

