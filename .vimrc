syntax on
set number
set incsearch	" Enable searching as you type
set ignorecase	" Ignore case in searches by default
set smartcase	" But make it case sensitive if an uppercase is entered
set hls		" Enable search highlighting

"set tabstop=4
"set cursorline
"set mouse+=a	" enable mouse support

autocmd BufWritePre * %s/\s\+$//e " Delete trailing whitespace on save

"-- KEY MAPPINGS --"

" Save
nnoremap ,<ESC> :w<CR>
nnoremap ,w :w<CR>
" Quit
nnoremap <C-C> :q<CR>
nnoremap ,q :q<cr>
" Enable/Disable Line Numbers
nnoremap ,nn :set nonumber<CR>
nnoremap ,n :set number<CR>
" Detetct File type
nnoremap ,f :filetype detect<CR>
" Save, then compile groff .ms to pdf
nnoremap ,, :w<CR>:!gack %<CR><CR>
" Ctrl l will clear search highlights
nnoremap <silent> <C-l> :nohl<CR><C-l>
" Compile R Markdown to PDF
autocmd FileType rmd map ,2 :!echo<space>"require(rmarkdown);<space>render('<c-r>%')"<space>\|<space>R<space>--vanilla<enter>
