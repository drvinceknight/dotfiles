"This sets line numbers
set nu
"This sets syntax coloring
syntax on
"This sets incremental search (i.e. searches as you type)
set incsearch
"This tells search to ignore cases by default
set ignorecase smartcase
"This maps ctrl N and ctrl p to go between multiple open files
nnoremap <C-N> :next<Enter>
nnoremap <C-P> :prev<Enter>
"This makes vim prompt you when quitting an unsaved file etc...
set confirm
"This makes vim show the current row and column at the bottom right of the screen
set ruler
" Remove any trailing whitespace that is in the file
autocmd BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif
" Sets autoindent
set autoindent
"LaTeX mapping
nmap <leader>l :!latexmk -xelatex -bibtex- <cr>
nmap <leader>c :!latexmk -c <cr>
"Turns spell check on
set spell
"Sorts out tabs
set tabstop=4
set shiftwidth=4
set expandtab
"Sorts out backspace behaviour:
set backspace=indent,eol,start
" Get rid of swp files (I backup myself)
set noswapfile
" Take care of some typos:
cabbrev W w
cabbrev Wq wq
""""""
" Sage settings (from Franco Saliola)
autocmd BufRead,BufNewFile *.sage,*.pyx,*.spyx set filetype=python
autocmd Filetype python set tabstop=4|set shiftwidth=4|set expandtab
autocmd FileType python set makeprg=sage\ -b\ &&\ sage\ -t\ %
