" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
" set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)

set nu
" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

set exrc
set secure
set tabstop=4
set shiftwidth=4
set noexpandtab

augroup project
    autocmd!
    autocmd BufRead,BufNewFile *.h,*.c set filetype=c.doxygen
augroup END

let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]

"=======================================
"Plugins for Python Development
"=======================================

set nocompatible
filetype off

"Making python code look pretty
let python_highlight_all=1
syntax on

"Showing status bar of powerline forever
set laststatus=2

" PEP 8 standards for coding
au BufNewFile, BufRead *.py
	\set tabstop=4
	\set softtabstop=4
	\set shiftwidth=4
	\set textwidth=79
	\set expandtab
	\set autoindent
	\set fileformat=unix


" Enable folding of the text
set foldmethod=indent
set foldlevel=99
set encoding=utf-8

" set the runtime path to include Vundle and initialize
set rtp+=/usr/share/vim/addons/plugin/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
Plugin 'gmarik/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'  " Plugin for folding the text
Plugin 'vim-scripts/indentpython.vim'
Bundle 'Valloric/YouCompleteMe' " Automatic complete 
Plugin 'jnurmine/Zenburn' " Zenburn Color scheme
Plugin 'altercation/vim-colors-solarized' " Solarized color scheme
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'Lokaltog/vim-powerline' " Powerline status bar at the bottom
Plugin 'davidhalter/jedi-vim' " Automatic complete with jedi
Plugin 'tpope/vim-fugitive' " For git operations from the text-editor itself
" Add plugins before this line
call vundle#end()
filetype plugin indent on

" Key Mappings 
" Text folding with spacebar rather than za
nnoremap <space> za

" Configuration for YouCompleteMe
"Autocomplete window goes away when we are done with it
let g:ycm_autocomplete_preview_window_after_completion=1
"Map space-g to go to the declaration of the command we are on
map <leader>g :YCMCompleter GoToDefinitionElseDeclaration<CR> 

  if has('gui_running')
  	set background=dark
  	colorscheme solarized
  else
	colorscheme zenburn
  endif
