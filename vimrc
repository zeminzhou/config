call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'majutsushi/tagbar'
Plug 'fatih/vim-go'
Plug 'Valloric/YouCompleteMe'
Plug 'edkolev/tmuxline.vim'
Plug 'easymotion/vim-easymotion'
Plug 'iamcco/markdown-preview.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'w0rp/ale'
"Plug 'davidhalter/jedi-vim'
"Plug 'jpalardy/vim-slime'
call plug#end()

let mapleader = ","
set number
set ruler
set autoindent 
set hlsearch incsearch
set expandtab
set showcmd
set tabstop=4 
set softtabstop=4 
set shiftwidth=4
set textwidth=79
set background=dark
set t_Co=256
set encoding=utf-8
set cursorline
syntax enable
colorscheme solarized

inoremap <C-h> <left>
inoremap <C-l> <right>
inoremap <C-k> <up> inoremap <C-j> <down> 
inoremap jk <esc>
vnoremap jk <esc>

nnoremap <Leader>rn :set relativenumber<CR>
nnoremap <Leader>nrn :set norelativenumber<CR>

" vim-go
nnoremap <Leader>gb :GoBuild<CR>
nnoremap <Leader>gr :GoRun<CR>
nnoremap <Leader>lgr :GoReferrers<CR>

" NERDTree
nnoremap <F3> :NERDTreeMirror<CR>
nnoremap <F3> :NERDTreeToggle<CR>

" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#ale#enabled = 1
let g:airline_theme = 'solarized'
nnoremap <C-left> :bp<CR>
nnoremap <C-right> :bn<CR>

" YCM
"let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_show_diagnostics_ui = 0

" ale
let g:ale_lint_on_enter = 0
let g:ale_lint_on_insert_leave = 1
let g:ale_lint_on_save = 0
"let g:ale_lint_on_text_changed = 'never'
let g:ale_set_localist = 0
let g:ale_set_quickfix = 1
let g:ale_sign_error = ">:"
let g:ale_sign_warning = "-:"
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = 'ale [%linter%] %s [%severity%]'
let g:airline#extensions#ale#enabled = 1
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
