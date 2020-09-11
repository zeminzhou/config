call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'majutsushi/tagbar'
Plug 'Valloric/YouCompleteMe'
Plug 'edkolev/tmuxline.vim'
Plug 'easymotion/vim-easymotion'
Plug 'iamcco/markdown-preview.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'fatih/vim-go'
"Plug 'w0rp/ale'
"Plug 'davidhalter/jedi-vim'
"Plug 'jpalardy/vim-slime'
call plug#end()

let mapleader = ","
let $VIMHOME = expand('~/.vim')

set number
set ruler
set autoindent 
set hlsearch incsearch
set expandtab
set showcmd
set cursorline
set wrap
set ignorecase
set smartcase

set tabstop=4 
set softtabstop=4 
set shiftwidth=4
set textwidth=0
set background=dark
set t_Co=256
set encoding=utf-8
set history=50
"set laststatus=2
set colorcolumn=81

syntax enable
colorscheme solarized

inoremap <C-h> <left>
inoremap <C-l> <right>
inoremap <C-k> <up> 
inoremap <C-j> <down> 
inoremap jk <esc>
vnoremap jk <esc>

nnoremap <Leader>rn :set relativenumber!<CR>

" vim-go
nnoremap <Leader>gb :GoBuild<CR>
nnoremap <Leader>gr :GoRun<CR>
nnoremap <Leader>grf :GoReferrers<CR>

" NERDTree
nnoremap <F3> :NERDTreeMirror<CR>
nnoremap <F3> :NERDTreeToggle<CR>

" airline
"let g:airline_section_b = 'B'
"let g:airline_section_y = 'Y'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#ale#enabled = 1
let g:airline_theme = 'distinguished'
nnoremap <Leader>p :bp<CR>
nnoremap <Leader>n :bn<CR>

" YCM
"let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_show_diagnostics_ui = 1
let g:ycm_always_populate_location_list = 1
let g:ycm_error_symbol = '>:'
let g:ycm_warning_symbol = '-:'

" ale
let g:ale_lint_on_enter = 1
let g:ale_lint_on_insert_leave = 1
let g:ale_lint_on_save = 0
let g:ale_lint_on_text_changed = 'normal'
let g:ale_sign_error = ">:"
let g:ale_sign_warning = "-:"
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = 'ale [%linter%] %s [%severity%]'
let g:airline#extensions#ale#enabled = 1
let g:ale_sign_highlight_linenrs = 1
nmap <Leader>c :ALEToggle<CR>
let g:ale_linters = {
\   'c++': ['clang'],
\   'c': ['clang'],
\   'python': ['pylint'],
\}

" markdown-preview
"let g:mkdp_path_to_chrome = "chrome"
let g:mkdp_open_to_the_world = 0    
nnoremap <F8> :MarkdownPreview<CR>
inoremap <F8> <ESC>:MarkdownPreview<CR>i
nnoremap <F9> :MarkdownPreviewStop<CR>
inoremap <F9> <ESC>:MarkdownPreviewStop<CR>i

" easymotion
let g:EasyMotion_do_mapping = 0
let g:EasyMotion_smartcase = 1
nmap <Leader>l <Plug>(easymotion-lineforward)
nmap <Leader>j <Plug>(easymotion-j)
nmap <Leader>k <Plug>(easymotion-k)
nmap <Leader>h <Plug>(easymotion-linebackward)

" tmuxline
let g:tmuxline_separators = {
    \ 'left' : '',
    \ 'left_alt': '>',
    \ 'right' : '',
    \ 'right_alt' : '<',
    \ 'space' : ' '}

let g:tmuxline_preset = {
   \'a'       : '#S',
   \'win'     : '#I #W',
   \'cwin'    : '#I #W',
   \'y'       : '#W %R',
   \'z'       : '#H',
   \'options' : {'status-justify' : 'left'}}

" tagbar
nnoremap <Leader>tt :TagbarToggle<CR>
