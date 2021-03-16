set relativenumber
set nu
set nohlsearch
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set termguicolors " improves how colors look
set noshowmode " lightline already has this functionality
set encoding=utf-8

call plug#begin('~/.vim/plugged')
Plug 'gruvbox-community/gruvbox'
Plug 'preservim/nerdtree' " navigate the file tree
Plug 'itchyny/lightline.vim' " a colorful status line
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'neoclide/coc.nvim', {'branch': 'release'} " autocomplete plugin

call plug#end()

" theming both vim and the status line
colorscheme gruvbox
let g:lightline = {
	\ 'colorscheme': 'gruvbox',
	\ }

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" use markdown syntax and file extension for vimwiki
let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]

" run current python file when a shortcut is pressed
nnoremap <buffer> <F9> :w <bar> :exec '!python' shellescape(@%, 1)<cr>
