syntax on
set nu
set tabstop=3
set softtabstop=3
set shiftwidth=3
set ai

call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
call pathogen#infect()

autocmd FileType html,htmldjango,jinjahtml,eruby,mako let b:closetag_html_style=1
autocmd FileType html,xhtml,xml,htmldjango,jinjahtml,eruby,mako source ~/.vim/bundle/closetag/plugin/closetag.vim

" set background=light
" let g:solarized_termtrans=1
" let g:solarized_termcolors=256
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
