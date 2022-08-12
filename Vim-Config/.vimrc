set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
" set rtp+=~/.vim/bundle/Vundle.vim
" call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
" Plugin 'VundleVim/Vundle.vim'
"Plugin 'ycm-core/YouCompleteMe'
"Plugin 'justmao945/vim-clang' 

" All of your Plugins must be added before the following line
" call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"set showtabline=2
" set laststatus=2
let g:airline_theme = 'iceberg'
syntax enable
filetype plugin on
" packadd! dracula
set number
set autoindent
set shiftwidth=4
set cindent
set background=dark
set t_Co=256
let g:airline_powerline_fonts =1 
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
"let g:airline_symbols.space = "\ua0"
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#show_buffers = 0
colorscheme iceberg
set termguicolors
let g:UltiSnipsSnippetDirectories=["UltiSnips"]

"Octave syntax
augroup filetypedetect
  au! BufRead,BufNewFile *.m,*.oct set filetype=octave
augroup END 

let octave_highlight_variables=1
let octave_highlight_operators=1
let octave_highlight_tabs=1 

"LightLine
"let g:lightline = {
"    \ 'colorscheme': 'archery',
"    \ }

" LaTeX
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_MultipleCompileFormats='pdf, aux'

" R syntax
au! BufNewFile,BufRead *.R,*.Rout,*.r,*.Rhistory,*.Rt,*.Rout.save,*.Rout.fail setf r

"GVim options
set guifont=Hack\ Regular\ 11
set guioptions-=T
set guioptions-=r
set guioptions-=m
