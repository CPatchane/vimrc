set nocompatible          " be iMproved
filetype off              " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'https://github.com/gmarik/vundle.git'

filetype plugin indent on     " required!
syntax enable

" Powerline
" --------------------------------------------
Bundle 'https://github.com/Lokaltog/vim-powerline.git'

set laststatus=2
set encoding=utf-8
set t_Co=256
" let g:Powerline_symbols = 'fancy'
" let g:Powerline_symbols = 'unicode'

" Git
" --------------------------------------------
Bundle 'https://github.com/tpope/vim-fugitive.git'
" Fugitive {
nnoremap <silent> <leader>gs :Gstatus<CR>
nnoremap <silent> <leader>gd :Gdiff<CR>
nnoremap <silent> <leader>gc :Gcommit<CR>
nnoremap <silent> <leader>gb :Gblame<CR>
nnoremap <silent> <leader>gl :Glog<CR>
nnoremap <silent> <leader>gp :Git push<CR>
nnoremap <silent> <leader>gr :Gread<CR>:GitGutter<CR>
nnoremap <silent> <leader>gw :Gwrite<CR>:GitGutter<CR>
nnoremap <silent> <leader>ge :Gedit<CR>
nnoremap <silent> <leader>gg :GitGutterToggle<CR>
"}

" EasyMotion
" --------------------------------------------
Bundle 'https://github.com/Lokaltog/vim-easymotion.git'
" EasyMotion {
"}

" Vim-Latex
" --------------------------------------------
Bundle 'https://github.com/jcf/vim-latex.git'
" Vim-Latex {
imap <buffer> <leader>it <Plug>Tex_InsertItemOnThisLine
imap <C-b> <Plug>Tex_MathBF
imap <C-c> <Plug>Tex_MathCal
imap <C-i> <Plug>Tex_InsertItemOnThisLine
"}

" Vim-Nagios
" --------------------------------------------
Bundle 'https://github.com/tejr/vim-nagios.git'
" Vim-Nagios {
"}
"

" Vim-Varnish
" --------------------------------------------
Bundle 'https://github.com/empanda/vim-varnish.git'
" Vim-Varnish {
"}

" Vim-Nginx
" --------------------------------------------
Bundle 'https://github.com/evanmiller/nginx-vim-syntax.git'
" Vim-Nginx {
au BufRead,BufNewFile */etc/nginx/** set ft=nginx
"}

" Vim-Shorewall
" --------------------------------------------
Bundle 'https://github.com/vim-scripts/shorewall.vim.git'
" Vim-Shorewall {
au BufRead,BufNewFile */etc/shorewall/** set ft=shorewall
"}

" Color / GUI
" --------------------------------------------
Bundle 'https://github.com/tomasr/molokai.git'
"colors molokai
"Bundle 'https://github.com/nanotech/jellybeans.git'
Bundle 'https://github.com/nanotech/jellybeans.vim.git'
colors jellybeans

" set guifont=Monaco:h12
set background=dark
set cursorline        " highlight current line
highlight CursorLine          guibg=#003853 ctermbg=24  gui=none cterm=none


" Syntax checker
" --------------------------------------------
Bundle 'https://github.com/scrooloose/syntastic.git',
let g:syntastic_check_on_open=1

" Syntax
" --------------------------------------------
Bundle 'https://github.com/tpope/vim-markdown.git'
" Bundle 'https://github.com/guileen/vim-node.git'
" Bundle 'https://github.com/myhere/vim-nodejs-complete.git'
Bundle 'https://github.com/vim-ruby/vim-ruby.git'
Bundle 'https://github.com/tpope/vim-rails.git'
" Bundle 'https://github.com/tpope/vim-bundler.git'
Bundle 'https://github.com/elzr/vim-json.git'
if executable('rubocop')
	Bundle 'https://github.com/ngmy/vim-rubocop'
endif
Bundle 'https://github.com/mattboehm/vim-unstack'

" Autoclose
" --------------------------------------------
Bundle 'https://github.com/Raimondi/delimitMate.git'

" TagBar to see classes
" --------------------------------------------
Bundle 'https://github.com/majutsushi/tagbar.git'

" Tabulations
" --------------------------------------------
Bundle 'https://github.com/godlygeek/tabular.git'

" Ack
" --------------------------------------------
Bundle 'https://github.com/mileszs/ack.vim.git'


" Ctrl P
" --------------------------------------------
Bundle 'https://github.com/kien/ctrlp.vim.git'
let g:ctrlp_max_height = 25
let g:ctrlp_max_files = 90000
let g:ctrlp_clear_cache_on_exit = 1

" Line Number
" --------------------------------------------
"Bundle 'https://github.com/jeffkreeftmeijer/vim-numbertoggle.git'
"let g:NumberToggleTrigger="<F3>"

"" Supertab
" --------------------------------------------
"Bundle 'https://github.com/ervandew/supertab.git'
"inoremap <expr> <Esc>  pumvisible() ? "\<C-e>" : "\<Esc>"
""" inoremap <expr> <CR>   pumvisible() ? "\<C-y>" : "\<CR>"
"inoremap <expr> <Down> pumvisible() ? "\<C-n>" : "\<Down>"
"inoremap <expr> <Up>   pumvisible() ? "\<C-p>" : "\<Up>"

" Matchit
" --------------------------------------------
Bundle 'https://github.com/tsaleh/vim-matchit.git'

" Vim-ruby
" --------------------------------------------
Bundle 'https://github.com/vim-ruby/vim-ruby.git'
Bundle 'https://github.com/ecomba/vim-ruby-refactoring.git'
Bundle 'https://github.com/tpope/vim-cucumber.git'
Bundle 'https://github.com/tpope/vim-haml.git'
Bundle 'https://github.com/tpope/vim-endwise.git'
Bundle 'https://github.com/tpope/vim-rbenv.git'

" Vim-rails
" --------------------------------------------
Bundle 'https://github.com/tpope/vim-rails.git'
Bundle 'https://github.com/skwp/vim-rspec.git'
" Bundle 'https://github.com/tpope/vim-bundler.git'

" Vim-surround
" --------------------------------------------
Bundle 'https://github.com/tpope/vim-surround.git'

"source ~/.vim/global.vim
"source ~/.vim/bindings.vim
"source ~/.vim/plugins.vim

" Other config
" --------------------------------------------
set langmenu=en_US.UTF-8    " sets the language of the menu (gvim)
let $LANG = 'en_US'

set number

" So what, I can't type...
nmap :W :w
nmap :X :x
nmap :Q :q

" Only do this part when compiled with support for autocommands.
if has("autocmd")
	" When editing a file, always jump to the last known cursor position.
	autocmd BufReadPost *
		\ if line("'\"") > 0 && line("'\"") <= line("$") |
		\   exe "normal g`\"" |
		\ endif
endif " has("autocmd")"

if filereadable(expand("~/.vim_local"))
  source ~/.vim_local
endif

syntax on
filetype on
filetype indent on
filetype plugin on
autocmd FileType ruby
	\ set expandtab |
	\ set tabstop=2 shiftwidth=2 softtabstop=2 |
	\ set autoindent

au BufRead,BufNewFile *.json set filetype=json

" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

" .vimrc.after is loaded after the plugins have loaded
:nmap \l :setlocal number!<CR>
:nmap \o :set paste!<CR>"

:set incsearch
:set ignorecase
:set smartcase
:set hlsearch
:nmap \q :nohlsearch<CR>

:nmap ; :CtrlPBuffer<CR>

":let g:ctrlp_map = '<Leader>t'
":let g:ctrlp_match_window_bottom = 0
":let g:ctrlp_match_window_reversed = 0
:let g:ctrlp_custom_ignore = '\v\~$|\.(o|swp|pyc|wav|mp3|ogg|blend)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|__init__\.py'
:let g:ctrlp_working_path_mode = 0
:let g:ctrlp_dotfiles = 0
:let g:ctrlp_switch_buffer = 0

" Les touches fléchées sont désactivées.
" Utile pour apprendre vim.
"
" En mode normal, vous pourrez les utiliser plus tard
" pour faire quelque chose d'utile.
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
" En mode insertion, vous pourrez enlever la
" désactivation dans quelques semaines.
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Source the vimrc file after saving it
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif

let mapleader = ","
nmap <leader>v :tabedit $MYVIMRC<CR>
