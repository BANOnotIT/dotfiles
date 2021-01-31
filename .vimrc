set nu
set autoindent

" For ctrlspace
set nocompatible
set hidden
set encoding=utf-8


call plug#begin('~/.vim/plugged')

Plug 'easymotion/vim-easymotion'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'tomtom/tcomment_vim'

Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'bling/vim-bufferline'

Plug 'vim-ctrlspace/vim-ctrlspace'

Plug 'machakann/vim-highlightedyank'
Plug 'tpope/vim-surround'

Plug 'preservim/nerdtree'
"Plug 'scrooloose/nerdtree-project-plugin'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Plug 'mhinz/vim-signify'
Plug 'airblade/vim-gitgutter'

Plug 'gioele/vim-autoswap'
Plug 'Karmenzind/vim-tmuxlike'

call plug#end()


let g:airline_symbols_ascii = 1
"let g:airline_statusline_ontop = 1

" For git gutter
highlight GitGutterAdd ctermbg=green ctermfg=black
highlight GitGutterChange ctermbg=yellow ctermfg=black
highlight GitGutterDelete ctermbg=red ctermfg=black
highlight SignColumn ctermbg=black

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
