""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle (package managers) stuff "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required
filetype plugin on
runtime macros/matchit.vim    " Enabling the matchit plugin

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Vim-latex: LaTeX
Plugin 'jcf/vim-latex'

" vim-airline: light weight alternative to powerline
Plugin 'bling/vim-airline'
set laststatus=2  " Need this or powerline only kicks in when a split happens

" fugitive.vim: Git
Plugin 'tpope/vim-fugitive'

" tabularize: automates tabularization
Plugin 'godlygeek/tabular'

" vim-markdown: markdown syntax
Plugin 'tpope/vim-markdown'

" nerdtree: for file exploration
Plugin 'scrooloose/nerdtree'
nmap <F9> :NERDTree<CR>

" vim-surround: for surrounding visual selections
Plugin 'tpope/vim-surround'

" tagbar: to navigate all the tags of a file
Plugin 'majutsushi/tagbar'
" Mapping <F9> to get it to work
nmap <F10> :TagbarToggle<CR>

" syntastic: syntax checking
Plugin 'scrooloose/syntastic'
" For python require flake8 and pylint

" jedi-vim: auto completion and more - needs BundleInstall to install (to get
" jedi).
Bundle 'git://github.com/davidhalter/jedi-vim'

" vim-autopep8: F8 now runs autopep8
Bundle 'tell-k/vim-autopep8'

" gist-vim: create gists directly from vim
Bundle 'mattn/webapi-vim'
Bundle 'mattn/gist-vim'

" vim-tmux-navigator: allow vim navigation between tmux and vim
Bundle 'christoomey/vim-tmux-navigator'

" 'scrooloose/nerdcommenter': easy commenting apparently
Plugin 'scrooloose/nerdcommenter'

" ctrlp: fuzzy searching of files
Plugin 'kien/ctrlp.vim'

" editorconfig: Sets editor defaults
Plugin 'editorconfig/editorconfig-vim'

" Solarized colours
Plugin 'altercation/vim-colors-solarized'

" Git runtime
Plugin 'tpope/vim-git'

" Plugin for function arguments text object
Plugin 'vim-scripts/argtextobj.vim'

"Plugin to get text object for camelcase and words with underscores
Plugin 'bkad/CamelCaseMotion'

" Plugin for indentation level text objects
Plugin 'michaeljsmith/vim-indent-object'

" Plugin for goyo which clears the vim window for extensive writing
Plugin 'junegunn/goyo.vim'

" Plugin for limelight which focus on writing
Plugin 'junegunn/limelight.vim'
" Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240

" Plugin for visual splits: Type :VSSplit, :VSSplitAbove or :VSSplitBelow to
" create a split of a visual selection.
Bundle 'wellle/visual-split.vim'

"All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" End of Vundle stuff "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

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
" Better copy & paste
" When you want to paste large blocks of code into vim, press F2 before you
" paste. At the bottom you should see ``-- INSERT (paste) --``.
set pastetoggle=<F2>
set clipboard=unnamed
" easier moving of code blocks
" Try to go into visual mode (v), thenselect several lines of code here and
" then press ``>`` several times.
vnoremap < <gv  " better indentation
vnoremap > >gv  " better indentation

"Increase the history (memory is cheap)
set history=200

"Enable 256 colors
set t_Co=256

""""""
" Sage settings (from Franco Saliola)
autocmd BufRead,BufNewFile *.sage,*.pyx,*.spyx set filetype=python
autocmd Filetype python set tabstop=4|set shiftwidth=4|set expandtab
autocmd FileType python set makeprg=sage\ -b\ &&\ sage\ -t\ %


" Disable the LaTeX plugin place holders:
let g:Imap_UsePlaceHolders = 0

syntax enable
set background=dark
colorscheme solarized

" Set this so that syntatic will work in fish
set shell=bash

" This has something to do with mutt
" setlocal fo+=aw
:set textwidth=80

" Something for markdown
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
