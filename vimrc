" ==============================================================================
" ================================ <Leader> ====================================
" ==============================================================================
" <Leader>d     :db<CR>
" <Leader>rn    :set relativenumber!<CR> 
" <Leader>l     <Plug>(easymotion-lineforward)
" <Leader>j     <Plug>(easymotion-j)
" <Leader>k     <Plug>(easymotion-k)
" <Leader>h     <Plug>(easymotion-linebackward)
" <Leader>ct    :ALEToggle<CR> 
" <Leader>tt    :TagbarToggle<CR>
" <Leader>ut    :UndotreeToggle<CR> 
" <Leader>gt    :GitGutterToggle<CR>
" <Leader>hn    :GitGutterNextHunk<CR>
" <Leader>hp    :GitGutterPrevHunk<CR>
" <Leader>ff    :Files<CR>
" <Leader>fb    :Buffers<CR>
" <Leader>to    :FloatermToggle<CR>
" <Leader>th    <C-\><C-n>:FloatermToggle<CR>
" <Leader>tc    <C-\><C-n>:FloatermKill<CR>
" <leader>cd    :GscopeFind g <C-R><C-W><cr>
" <leader>cr    :GscopeFind c <C-R><C-W><cr>
" <leader>cc    :GscopeFind d <C-R><C-W><cr>
" <leader>ca    :GscopeFind a <C-R><C-W><cr>
" <leader>ce    :GscopeFind e <C-R><C-W><cr>
" <leader>cs    :GscopeFind s <C-R><C-W><cr>
" <leader>ct    :GscopeFind t <C-R><C-W><cr>
" <leader>cf    :GscopeFind f <C-R>=expand("<cfile>")<cr><cr>
" <leader>ci    :GscopeFind i <C-R>=expand("<cfile>")<cr><cr>
" <leader>yd    :YcmCompleter GoToDefinition<CR>
" <leader>yr    :YcmCompleter GoToReferences<CR>
" <leader>yc    :YcmCompleter GoToDeclaration<CR>
" <leader>ys    :YcmCompleter GoToSymbol<CR>
" <leader>yi    :YcmCompleter GoToInclude<CR>
" ==============================================================================
" ==============================================================================
" ==============================================================================

call plug#begin('~/.vim/plugged')                                                
Plug 'scrooloose/nerdtree'                                                       
Plug 'rking/ag.vim'
Plug 'vim-airline/vim-airline'                                                   
Plug 'vim-airline/vim-airline-themes'                                            
Plug 'majutsushi/tagbar'                                                         
Plug 'Valloric/YouCompleteMe'                                                    
Plug 'easymotion/vim-easymotion'                                                 
Plug 'altercation/vim-colors-solarized'                                          
Plug 'fatih/vim-go'                                                              
Plug 'mhinz/vim-startify'                                                        
Plug 'tpope/vim-fugitive'                                                        
Plug 'airblade/vim-gitgutter'                                                    
Plug 'voldikss/vim-floaterm'                                                     
Plug 'ludovicchabant/vim-gutentags'                                              
Plug 'skywind3000/gutentags_plus'                                                
Plug 'mbbill/undotree'                                                           
Plug 'mg979/vim-visual-multi', {'branch': 'master'}                              
Plug 'junegunn/fzf', {'do' : { -> fzf#install() }}                               
Plug 'junegunn/fzf.vim'                                                          
Plug 'lifepillar/vim-gruvbox8'
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}
Plug 'fatih/vim-go'
"Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
"Plug 'dense-analysis/ale'                                                       
"Plug 'davidhalter/jedi-vim'                                                     
"Plug 'jpalardy/vim-slime'                                                       
"Plug 'iamcco/markdown-preview.vim'                                               
call plug#end()

let mapleader = ","
let $VIMHOME = expand('~/.vim')

set number
set ruler
set autoindent
set expandtab
set hlsearch incsearch
set cursorline
set wrap
set ignorecase
set smartcase
" set autochdir
set autowrite
set nocompatible
set relativenumber

set cmdheight=2
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=0
set background=dark
set t_Co=256
set encoding=utf-8
set history=50
set laststatus=2
set colorcolumn=81
set updatetime=100
set backspace=indent,eol,start

syntax enable
"colorscheme solarized

inoremap <C-h> <left>
inoremap <C-l> <right>
inoremap <C-k> <up>
inoremap <C-j> <down>
inoremap jk <esc>
vnoremap jk <esc>

vnoremap Y "+y
nnoremap <C-h> :bp<CR>
nnoremap <C-l> :bn<CR>
nnoremap <Leader>d :bd<CR>

inoremap <left> <nop>

nnoremap <Leader>rn :set relativenumber!<CR>

silent !mkdir -p ~/.vim/tmp/backup
silent !mkdir -p ~/.vim/tmp/undo
set backupdir=~/.vim/tmp/backup,.
set directory=~/.vim/tmp/backup,.
if has('persistent_undo')
    set undofile
    set undodir=~/.vim/tmp/undo,.
endif 

" NERDTree
nnoremap <F3> :NERDTreeMirror<CR>
nnoremap <F3> :NERDTreeToggle<CR>

" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#gutentags#enabled = 1
let g:airline#extensions#fzf#enabled = 1
let g:airline#extensions#fugitiveline#enabled = 1
let g:airline_theme = 'distinguished'

" YCM 
"let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_show_diagnostics_ui = 1
let g:ycm_error_symbol = 'xx'
let g:ycm_warning_symbol = '>>'
let g:ycm_collect_identifiers_from_tags_files = 1
nnoremap <leader>yi :YcmCompleter GoToInclude<CR>
nnoremap <leader>yc :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>yd :YcmCompleter GoToDefinition<CR>
nnoremap <leader>ys :YcmCompleter GoToSymbol<CR>
nnoremap <leader>yr :YcmCompleter GoToReferences<CR>

" ale
" let g:ale_lint_on_enter = 1
" let g:ale_lint_on_insert_leave = 1
" let g:ale_lint_on_save = 0
" let g:ale_lint_on_text_changed = 'normal'
" let g:ale_sign_error = ">:"
" let g:ale_sign_warning = "-:"
" let g:ale_echo_msg_error_str = 'E'
" let g:ale_echo_msg_warning_str = 'W'
" let g:ale_echo_msg_format = 'ale [%linter%] %s [%severity%]'
" let g:airline#extensions#ale#enabled = 1
" let g:ale_sign_highlight_linenrs = 1
" nmap <Leader>ct :ALEToggle<CR>
" let g:ale_linters = {
" \   'c++': ['clang'],
" \   'c': ['clang'],
" \   'python': ['pylint'],
" \}

" markdown-preview
" let g:mkdp_path_to_chrome = "chrome"
" let g:mkdp_open_to_the_world = 0
" nnoremap <F8> :MarkdownPreview<CR>
" inoremap <F8> <ESC>:MarkdownPreview<CR>i
" nnoremap <F9> :MarkdownPreviewStop<CR>
" inoremap <F9> <ESC>:MarkdownPreviewStop<CR>i

" easymotion
let g:EasyMotion_do_mapping = 0
let g:EasyMotion_smartcase = 1
nnoremap <Leader>l <Plug>(easymotion-lineforward)
nnoremap <Leader>j <Plug>(easymotion-j)
nnoremap <Leader>k <Plug>(easymotion-k)
nnoremap <Leader>h <Plug>(easymotion-linebackward)

" tagbar
nnoremap <Leader>tt :TagbarToggle<CR>

" unodotree
nnoremap <Leader>ut :UndotreeToggle<CR>

" fzf
nnoremap <Leader>ff :Files<CR>
nnoremap <Leader>fb :Buffers<CR>

" vim-gitgutter
nnoremap <Leader>gt :GitGutterToggle<CR>
nnoremap <Leader>hn :GitGutterNextHunk<CR>
nnoremap <Leader>hp :GitGutterPrevHunk<CR>
let g:gitgutter_enabled = 0
let g:gitgutter_sign_allow_clobber = 1
let g:gitgutter_sign_added = '++'
let g:gitgutter_sign_modified = '##'
let g:gitgutter_sign_removed = '--'
let g:gitgutter_sign_removed_first_line = '*^'
let g:gitgutter_sign_removed_above_and_below = '*#'
let g:gitgutter_sign_modified_removed = '*!'
highlight GitGutterAdd    guifg=#009900 ctermfg=2
highlight GitGutterChange guifg=#bbbb00 ctermfg=3
highlight GitGutterDelete guifg=#ff2222 ctermfg=1

" vim-floaterm
nnoremap <silent> <Leader>to :FloatermToggle<CR>
tnoremap <silent> <Leader>th <C-\><C-n>:FloatermToggle<CR>
tnoremap <silent> <Leader>tc <C-\><C-n>:FloatermKill<CR>

" vim-gutentags & gutentags_plus
let $GTAGSLABEL = 'native-pygments'
let $GTAGSCONF = '/usr/local/share/gtags/gtags.conf'
let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']
let g:gutentags_ctags_tagfile = '.tags'
let g:gutentags_modules = []
if executable('ctags')
    let g:gutentags_modules += ['ctags']
endif
if executable('gtags-cscope') && executable('gtags')
    let g:gutentags_modules += ['gtags_cscope']
endif
let g:gutentags_cache_dir = expand('~/.cache/tags')
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+pxI']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']
let g:gutentags_define_advanced_commands = 1
let g:gutentags_auto_add_gtags_cscope = 0
set statusline+=%{gutentags#statusline('[',']')}
let g:gutentags_enabled = 1
let g:gutentags_plus_nomap = 1
noremap <silent> <leader>cd :GscopeFind g <C-R><C-W><cr>
noremap <silent> <leader>cr :GscopeFind c <C-R><C-W><cr>
noremap <silent> <leader>cc :GscopeFind d <C-R><C-W><cr>
noremap <silent> <leader>ca :GscopeFind a <C-R><C-W><cr>
noremap <silent> <leader>ce :GscopeFind e <C-R><C-W><cr>
noremap <silent> <leader>cs :GscopeFind s <C-R><C-W><cr>
noremap <silent> <leader>ct :GscopeFind t <C-R><C-W><cr>
noremap <silent> <leader>cf :GscopeFind f <C-R>=expand("<cfile>")<cr><cr>
noremap <silent> <leader>ci :GscopeFind i <C-R>=expand("<cfile>")<cr><cr>

set showcmd

