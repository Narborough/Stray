" Indent
set cindent
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" View
set visualbell
set number
set ruler
set title
set wrap
set cursorline
set linebreak
set showmatch
set t_Co=256
set colorcolumn=80
set textwidth=79

" Search
set nowrapscan
set hlsearch
set ignorecase
set incsearch
set tags=./tags,./TAGS,tags,TAGS
set list
set listchars=tab:>-,trail:.,extends:#

" Edit
set backspace=eol,start,indent
set nobackup
" set laststatus=2

" Color
syntax on
syntax enable
color twilight


set history=1000
set undolevels=1000
set noundofile

"vim-tmux-navigator
let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <Leader><Left> :TmuxNavigateLeft<cr>
nnoremap <silent> <Leader><Down> :TmuxNavigateDown<cr>
nnoremap <silent> <Leader><Up> :TmuxNavigateUp<cr>
nnoremap <silent> <Leader><Right> :TmuxNavigateRight<cr>

" Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle, required
Bundle 'gmarik/Vundle.vim'

" Other Bundles
Bundle 'kien/ctrlp.vim'
Bundle 'flazz/vim-colorschemes'
Bundle 'altercation/vim-colors-solarized'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'tpope/vim-fugitive'
Bundle 'airblade/vim-gitgutter'
Bundle 'tpope/vim-unimpaired'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'majutsushi/tagbar'
Bundle 'stephpy/vim-yaml'
Bundle 'rking/ag.vim'
Bundle 'vim-scripts/DeleteTrailingWhitespace'
Bundle 'scrooloose/syntastic'
Bundle 'bling/vim-airline'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'christoomey/vim-tmux-navigator'
call vundle#end()

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"Indent-guides
" let g:indent_guides_auto_colors = 0
autocmd filetype c,cpp,h,hpp,python,html,htmldjango,htmljinja :IndentGuidesEnable
let g:indent_guides_auto_colors = 0
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd ctermfg=none ctermbg=234
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd ctermfg=none ctermbg=235
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermfg=none ctermbg=235
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=black
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=darkgrey
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1


" Airline
let g:airline#extensions#tabline#enabled=1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_powerline_fonts=1
let g:Powerline_symbols = 'fancy'

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1
let g:syntastic_cpp_include_dirs = ['/home/ny.kim/workspace/camp/submodules/high/include','/home/ny.kim/workspace/camp/submodules/high/src/high','/home/ny.kim/workspace/camp/submodules/high/src/third_party/include','/home/ny.kim/workspace/camp/submodules/high/src/third_party/jsoncpp-src-0.5.0/include','/home/ny.kim/workspace/camp/submodules/high/src/third_party/Python-2.7.3','/home/ny.kim/workspace/camp/submodules/high/src/third_party/Python-2.7.3/Include','/home/ny.kim/workspace/camp/submodules/high/src/third_party/boost_1_55_0','/home/ny.kim/workspace/camp/submodules/high/src/third_party/sqlite-autoconf-3080402','/home/ny.kim/workspace/camp/submodules/high/src/third_party/yaml-cpp-c9baaaa4e472/include','/home/ny.kim/workspace/camp/submodules/high/src/third_party/jsoncpp-src-0.5.0/include','/home/ny.kim/workspace/camp/submodules/high/src/third_party/zeromq-4.0.4/include','/home/ny.kim/workspace/camp/submodules/high/src/third_party/zmqpp-3.2.0/src','/home/ny.kim/workspace/camp/submodules/high/src/third_party/curl-7.40.0/include','/home/ny.kim/workspace/camp/submodules/high/src/third_party/seed','/home/ny.kim/workspace/camp/submodules/high/src/third_party/dxfeed-4.5/include']
let g:syntastic_cpp_compiler_options = '-fPIC -Wall -Werror -g3 -O0 -std=c++0x -DREV=0'
let g:syntastic_python_checkers = ['pylint', 'flake8','python', 'pylama']
let g:syntastic_python_pylint_args="-d eval-used,blacklisted-name,broad-except,too-many-locals,F0401,C0111,E0611,R0904,C0321,C0103,W0102,R0913 ${default_args}"
let g:syntastic_python_flake8_args="--jobs=1 ${default_args}"
let g:syntastic_enable_cpp_checker = 1



let @b='ofrom pudb import set_traceset_trace()'
let g:gitgutter_sign_column_always = 1

filetype plugin indent on

nmap <C-b> :bprev<CR>
nmap <C-n> :bnext<CR>
nmap <C-x> :bd<CR>
nmap <C-c> :SyntasticCheck gcc<CR>

nnoremap <leader>o :only<CR>
nnoremap <leader>aa :Ag 
nnoremap <leader>as :Ag <cword><CR>

map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-H> <C-W>h
map <C-L> <C-W>l

set wildignore+=*.so,*.swp,*.zip,*.pyc
set wildignore+=*.o,*.out,*.obj,*.so,*.pyc
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz
set wildignore+=*/.sass-cache/*
set wildignore+=*.swp,*~,._*

