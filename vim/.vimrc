" general
filetype off                 " required
syntax on
set mouse-=a
set number
set cursorline
set nocompatible             " be iMproved, required
set termguicolors            " enable true colors support
set nowrap
"" source: https://stackoverflow.com/a/11560415/2338672
set backspace=2
set updatetime=500

" package management
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'neoclide/coc.nvim', {'branch': 'release'}
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plugin 'junegunn/fzf.vim'
Plugin 'preservim/nerdtree'
Plugin 'preservim/tagbar'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'bluz71/vim-nightfly-guicolors'
Plugin 'tpope/vim-surround'
Plugin 'mileszs/ack.vim'
Plugin 'KabbAmine/zeavim.vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'MattesGroeger/vim-bookmarks'
Plugin 'stsewd/sphinx.nvim', { 'do': ':UpdateRemotePlugins' }
Plugin 'patstockwell/vim-monokai-tasty'
call vundle#end()            " required
filetype plugin indent on    " required

" theme
colorscheme vim-monokai-tasty
"" source: https://stackoverflow.com/a/60643538/2338672
highlight VertSplit cterm=NONE ctermbg=NONE guifg=NONE guibg=NONE
"" source: https://stackoverflow.com/a/37720708
highlight Normal guibg=NONE ctermbg=NONE

"" powerline
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = ' '
let g:airline_powerline_fonts = 0
let g:airline_left_sep = ' '
let g:airline_right_sep = ' '
let g:airline_left_alt_sep = ' '
let g:airline_right_alt_sep = ' '

" coc.vim
"" source: https://github.com/neoclide/coc.nvim/issues/318#issuecomment-451331078
nmap <c-c><c-d> :call CocActionAsync('jumpDefinition')<cr>
nnoremap <c-c><c-e> <c-o>
"" code indent
""" source: https://github.com/jelly/Dotfiles/blob/master/.vimrc
autocmd FileType python set expandtab shiftwidth=4 softtabstop=4
set cindent
set smartindent
set autoindent
set complete+=s

" fzf
nmap <c-x><c-f> :Files<cr>
nmap <c-x><c-t> :Tags<cr>
nmap <c-x><c-b> :Buffers<cr>

" nerdtree
map <c-x><c-\> :NERDTreeToggle<cr>
let g:NERDTreeIgnore=['\.pyc$', '\~$', 'venv', '.git', '__pycache__', '.tags']
let g:nerdtree_tabs_focus_on_files=1

" tagbar
nmap <c-x><c-i> :TagbarToggle<cr>

" window
nmap <c-x><c-v> :vsplit<cr>
nmap <c-x><c-h> :split<cr>
nmap <c-x><c-c> :close<cr>
nnoremap <m-up>    <c-w><c-k>
nnoremap <m-down>  <c-w><c-j>
nnoremap <m-left>  <c-w><c-h>
nnoremap <m-right> <c-w><c-l>
map <c-s-up>    :resize -1<cr>
map <c-s-down>  :resize +1<cr>
map <c-s-left>  :vertical resize +1<cr>
map <c-s-right> :vertical resize -1<cr>

" buffer
nmap <c-x><c-e> :bd<cr>

" tabbar
let g:airline#extensions#tabline#enabled = 1
"" https://github.com/vim-airline/vim-airline/issues/1688#issuecomment-373459776
let g:airline_powerline_fonts = 1
map <s-right> :tabnext<cr>
map <s-left>  :tabprevious<cr>

" general
nmap <c-x><c-s> :w<cr>
nmap <c-x><c-q> :q<cr>

" git
nmap <c-g><c-d> <plug>(GitGutterPreviewHunk)
nmap <c-g><c-u> <plug>(GitGutterUndoHunk)                                                                                                                                                  
nmap <c-g><c-l> <plug>(GitGutterStageHunk)
" source: https://github.com/longsleep/bin-scripts/blob/master/config/vimrc
" auto wrap git commit messages
au FileType gitcommit set tw=72

" text
""source: https://stackoverflow.com/a/63887462/2338672
nnoremap <s-m-down> :m .+1<CR>==
nnoremap <s-m-up>   :m .-2<CR>==
inoremap <s-m-down> <Esc>:m .+1<CR>==gi
inoremap <s-m-up>   <Esc>:m .-2<CR>==gi
vnoremap <s-m-down> :m '>+1<CR>gv=gv
vnoremap <s-m-up>   :m '<-2<CR>gv=gv
""code
nmap <c-c><c-h> <Plug>Zeavim
""source: https://vim.fandom.com/wiki/Fix_indentation
map <c-c><c-r> gg=G<C-o><C-o>
