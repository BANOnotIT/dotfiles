set nu
set autoindent
set hlsearch

" For ctrlspace
set nocompatible
set hidden
set encoding=utf-8


call plug#begin('~/.vim/plugged')

" Plug 'easymotion/vim-easymotion'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'tomtom/tcomment_vim'

Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
" Plug 'tpope/vim-fugitive'
" Plug 'bling/vim-bufferline'

Plug 'vim-ctrlspace/vim-ctrlspace'

Plug 'machakann/vim-highlightedyank'
" Plug 'tpope/vim-surround'

Plug 'preservim/nerdtree'
"Plug 'scrooloose/nerdtree-project-plugin'
" Plug 'Xuyuanp/nerdtree-git-plugin'

" Plug 'mhinz/vim-signify'
Plug 'airblade/vim-gitgutter'

Plug 'gioele/vim-autoswap'
Plug 'Karmenzind/vim-tmuxlike'

" Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'jaredgorski/SpaceCamp'

" Plug 'mogelbrod/vim-jsonpath'

" Plug 'tomasiser/vim-code-dark'
Plug 'cespare/vim-toml'

Plug 'wgwoods/vim-systemd-syntax'

call plug#end()


let g:airline_symbols_ascii = 1
"let g:airline_statusline_ontop = 1

set tabstop=2
set shiftwidth=2
set expandtab

" For git gutter
colorscheme spacecamp
hi Normal guibg=#121212 ctermbg=NONE
hi! link EndOfBuffer Normal

" For NERDtree
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'*',
                \ 'Staged'    :'+',
                \ 'Untracked' :'!',
                \ 'Renamed'   :'R',
                \ 'Unmerged'  :'=',
                \ 'Deleted'   :'D',
                \ 'Dirty'     :'X',
                \ 'Ignored'   :'?',
                \ 'Clean'     :'C',
                \ 'Unknown'   :'E'
                \ }
let g:NERDTreeGitStatusConcealBrackets = 1
nmap <C-\> :NERDTreeToggle<CR>


set directory^=$HOME/.vim/swap//
