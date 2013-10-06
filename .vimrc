set nocompatible " No vi compatibility
set encoding=utf-8

syntax on
set nu
set tabstop=3
set softtabstop=3
set shiftwidth=3
set ai
set scrolloff=5
set showmatch " Shows matching (), [], {}

set noswapfile " Turns off that annoying .swp file!
set nobackup

" Automatically reads files when they are changed
set autoread

" Highlight search results
set hlsearch " Highlight in general
set incsearch " Highlight while typing

" Paste toggle is F2
set pastetoggle=<F2>
map <F3> gg=G

call pathogen#infect()

filetype plugin indent on

call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
call pathogen#infect()

autocmd FileType html,htmldjango,jinjahtml,eruby,mako let b:closetag_html_style=1
autocmd FileType html,xhtml,xml,htmldjango,jinjahtml,eruby,mako source ~/.vim/bundle/closetag/plugin/closetag.vim

set background=dark
" let g:solarized_termtrans=1
" let g:solarized_contrast="high"
" let g:solarized_visibility="high"
" colorscheme solarized
" colorscheme evening
color jellybeans

" Nerd Tree Configs
" This will automatically start up NERDTree when Vim is opened
autocmd VimEnter * NERDTree
" This will map ctrl-n to toggle viewing NERDTree
nmap <silent> <c-n> :NERDTreeToggle<CR>

let g:Powerline_symbols = 'fancy'
" let g:Powerline_colorscheme = 'solarized16'
" let g:Powerline_theme = 'solarized16'
set laststatus=2

" Sets the font for MacVim
if has("gui_running")
	set guifont=Menlo\ Regular\ for\ Powerline:h12
endif
