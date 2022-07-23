syntax enable
set number
set relativenumber
set encoding=UTF-8
set tabstop=4
set shiftwidth=4
set smarttab
set autoindent
set autoread
set mouse=a

" Setting the file format
set fileformat=unix
set showtabline=2
set laststatus=2
set clipboard=unnamedplus

" ------------------------------------------ SPLITS AND TABBED FILES START  ----------------------------------------------
set splitbelow splitright


" ----------------------------------------------------- PLUGINS START  ---------------------------------------------------

call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'
" Make sure you use single quotes

" On-demand loading
Plug 'scrooloose/nerdtree'
" Lean & mean status/tabline for vim that's light as air 
Plug 'vim-airline/vim-airline'
" Vim Airline Themes
Plug 'vim-airline/vim-airline-themes'
" Adds file type icons to Vim plugins such as: NERDTree, vim-airline, CtrlP, unite, Denite, lightline, vim-startify and many more 
Plug 'ryanoasis/vim-devicons'
" Retro groove color scheme for Vim  
Plug 'morhetz/gruvbox' 
" Fuzzy Finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" Initialize plugin system
call plug#end()

" ----------------------------------------------------- PLUGINS END ------------------------------------------------------


" -----------------------------------------------------  THEMES  ---------------------------------------------------------

" Colorscheme and Editor theme configuration
set t_Co=256
set termguicolors
set background=dark
colorscheme gruvbox 
hi LineNr  term=bold cterm=NONE ctermfg=black ctermbg=NONE gui=bold guifg=#fcbe03 guibg=NONE 

" ----------------------------------------------------- THEMES END -------------------------------------------------------


" -----------------------------------------------------  NERD TREE  ------------------------------------------------------

" NerdTree Setup
let g:NERDTreeWinSize=25
let NERDTreeMouseMode=2
" All keys are mapped together in like vscode ide
:nnoremap <silent> <C-t> :NERDTree<CR>
:autocmd FileType nerdtree nnoremap <buffer> <silent> <C-t> :NERDTreeToggle<CR>

" Refresh the current folder if any changes
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
autocmd BufEnter NERD_tree_* | execute 'normal R'
au CursorHold * if exists("t:NerdTreeBufName") | call <SNR>15_refreshRoot() | endif
augroup DIRCHANGE
    au!
    autocmd DirChanged global :NERDTreeCWD
augroup END

" -----------------------------------------------------  NERD TREE END ---------------------------------------------------


" -----------------------------------------------------  AIRLINE  --------------------------------------------------------

" Airline Setup
let g:airline_theme='molokai'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#whitespace#enabled = 0  " for trailing whitespace

" -----------------------------------------------------  AIRLINE END  ----------------------------------------------------
nnoremap <C-p> :FZF<cr>

