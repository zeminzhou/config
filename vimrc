" ==============================================================================
" ================================ KEY MAP =====================================
" ==============================================================================
" <Leader>db    :bd<CR>
" <Leader>rn    :set relativenumber!<CR> 
" <Leader>nu    :set number!<CR> 
" <Leader>ll    <Plug>(easymotion-lineforward)
" <Leader>jj    <Plug>(easymotion-j)
" <Leader>kk    <Plug>(easymotion-k)
" <Leader>hh    <Plug>(easymotion-linebackward)
" <Leader>tt    :TagbarToggle<CR>
" <Leader>ut    :UndotreeToggle<CR> 
" <Leader>gd    :Gdiffsplit<CR>
" <Leader>gt    :GitGutterToggle<CR>
" <Leader>gv    :GV?<CR>
" <Leader>hn    :GitGutterNextHunk<CR>
" <Leader>hp    :GitGutterPrevHunk<CR>
" <Leader>yw    <Plug>(YCMFindSymbolInWorkspace)
" <Leader>yh    <Plug>(YCMCallHierarchy)
" <Leader>yd    :YcmCompleter GoToDefinition<CR>
" <Leader>yo    :YcmCompleter GoToDocumentOutline<CR>
" <Leader>yr    :YcmCompleter GoToReferences<CR>
" <Leader>yc    :YcmCompleter GoToCallers<CR>
" <Leader>ys    :YcmCompleter GoToSymbol<CR>
" <Leader>yi    :YcmCompleter GoToImplementation<CR>
" <Leader>yf    :YcmCompleter GoToInclude<CR>
" <Leader>yt    :YcmCompleter GoToType<CR>
" <Leader>ye    :YcmDiags<CR>
" <Leader>to    :FloatermToggle<CR>
" <Leader>th    <C-\><C-n>:FloatermToggle<CR>
" <Leader>tc    <C-\><C-n>:FloatermKill<CR>
" <Leader>mm    :call InterestingWords('n')<CR>
" <Leader>mm    :call InterestingWords('v')<CR>
" <Leader>M     :call UncolorAllWords()<CR>
" <Leader>lt    :call ToggleGitLens()<CR>
" ==============================================================================
" ==============================================================================
" ==============================================================================
"
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'majutsushi/tagbar'
Plug 'mhinz/vim-startify'
Plug 'voldikss/vim-floaterm'
Plug 'mbbill/undotree'
Plug 'lfv89/vim-interestingwords'
Plug 'itchyny/vim-cursorword'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'machakann/vim-highlightedyank'
Plug 'junegunn/seoul256.vim'

Plug 'ycm-core/YouCompleteMe'
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'rust-lang/rust.vim'
" Plug 'puremourning/vimspector'

" search
Plug 'junegunn/fzf', {'do' : { -> fzf#install() }}
Plug 'junegunn/fzf.vim'
" Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
Plug 'rking/ag.vim'

" spell check
" Plug 'kamykn/spelunker.vim'

" git
Plug 'junegunn/gv.vim'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'Xuyuanp/nerdtree-git-plugin'

" colorscheme
Plug 'lighthaus-theme/vim-lighthaus'
Plug 'sainnhe/everforest'
Plug 'altercation/vim-colors-solarized'                                          
Plug 'karoliskoncevicius/sacredforest-vim'
Plug 'lifepillar/vim-gruvbox8'
Plug 'chriskempson/base16-vim'
"Plug 'github/copilot.vim'

if has('nvim')

else
    " Plug 'ludovicchabant/vim-gutentags'
    " Plug 'skywind3000/gutentags_plus'
    " vim9 plug
    " Plug 'zeminzhou/diffview.vim'
    Plug 'Eliot00/git-lens.vim'
endif

Plug 'easymotion/vim-easymotion'
" Plug 'dense-analysis/ale'
" Plug 'prabirshrestha/vim-lsp'
" Plug 'SirVer/ultisnips'
" Plug 'honza/vim-snippets'
" Plug 'nathanaelkane/vim-indent-guides'
" Plug 'ryanoasis/vim-devicons'
" Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" Plug 'terryma/vim-multiple-cursors'
" Plug 'brooth/far.vim'
" Plug 'davidhalter/jedi-vim'
" Plug 'jpalardy/vim-slime'
" Plug 'linjiX/LeaderF-git'
" Plug 'rking/ag.vim'
call plug#end()

let mapleader = ","
let $VIMHOME = expand('~/.vim')

set number
set ruler
set autoindent
set expandtab
set hlsearch incsearch
set cursorline
set cursorcolumn
set wrap
set ignorecase
set smartcase
" set autochdir
set autowrite
set nocompatible
set relativenumber
set wildmenu

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
set ambiwidth=double

syntax enable
colorscheme seoul256

inoremap jk <esc>
vnoremap jk <esc>

vnoremap Y "+y
nnoremap <C-h> :bp<CR>
nnoremap <C-l> :bn<CR>

nnoremap <leader>db :bd<CR>
nnoremap <leader>rn :set relativenumber!<CR>
nnoremap <leader>nu :set number!<CR>

if has('nvim')
    silent !mkdir -p ~/.vim/nvim-tmp/backup
    silent !mkdir -p ~/.vim/nvim-tmp/undo
    set backupdir=~/.vim/nnim-tmp/backup,.
    set directory=~/.vim/nvim-tmp/backup,.
    if has('persistent_undo')
        set undofile
        set undodir=~/.vim/nvim-tmp/undo,.
    endif
else
    silent !mkdir -p ~/.vim/vim-tmp/backup
    silent !mkdir -p ~/.vim/vim-tmp/undo
    set backupdir=~/.vim/vim-tmp/backup,.
    set directory=~/.vim/vim-tmp/backup,.
    if has('persistent_undo')
        set undofile
        set undodir=~/.vim/vim-tmp/undo,.
    endif
endif

" startify
let g:startify_change_to_dir = 0

" vim-go
let g:go_gopls_enabled = 0
let g:go_imports_autosave = 0
let g:go_fold_enable = []

" rust.vim
let g:rustfmt_autosave = 1
let g:rustfmt_fail_silently = 1

" NERDTree
nnoremap <leader>nt :NERDTreeMirror<CR>
nnoremap <leader>nt :NERDTreeToggle<CR>
let g:NERDTreeGitStatusIndicatorMapCustom = {
            \ 'Modified'  :'~',
            \ 'Staged'    :'+',
            \ 'Untracked' :'*',
            \ 'Renamed'   :'^',
            \ 'Unmerged'  :'=',
            \ 'Deleted'   :'-',
            \ 'Dirty'     :'>',
            \ 'Ignored'   :'#',
            \ 'Clean'     :'c',
            \ 'Unknown'   :'?',
            \ }

" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tagbar#enable = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#gutentags#enabled = 1
let g:airline#extensions#fzf#enabled = 1
let g:airline#extensions#fugitiveline#enabled = 1
let g:airline#extensions#ycm#enabled = 1
let g:airline#extensions#tabline#ctrlspace_show_tab_nr = 0
let g:airline#extensions#tabline#show_splits = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_left_sep = '>'
let g:airline_right_sep = '<'
let g:airline_theme = 'distinguished'

" YCM 
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_enable_inlay_hints = 0
let g:ycm_update_diagnostics_in_insert_mode = 1
let g:ycm_show_detailed_diag_in_popup = 1
let g:ycm_global_ycm_extra_conf = '/root/.ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_show_diagnostics_ui = 1
let g:ycm_error_symbol = 'xx'
let g:ycm_warning_symbol = '>>'
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_key_detailed_diagnostics = '<leader>ym'
let g:ycm_add_preview_to_completeopt = 'popup'
let g:ycm_enable_semantic_highlighting = 1
let g:ycm_seed_identifiers_with_syntax=0
let g:ycm_complete_in_comments=1
let g:ycm_complete_in_strings=1
nnoremap <leader>yw <Plug>(YCMFindSymbolInWorkspace)
nnoremap <leader>yh <Plug>(YCMCallHierarchy)
nnoremap <silent> <leader>yc :YcmCompleter GoToCallers<CR>
nnoremap <silent> <Leader>yo :YcmCompleter GoToDocumentOutline<CR>
nnoremap <silent> <leader>yd :YcmCompleter GoToDefinition<CR>
nnoremap <silent> <leader>ys :YcmCompleter GoToSymbol <C-R><C-W><CR>
nnoremap <silent> <leader>yi :YcmCompleter GoToImplementation<CR>
nnoremap <silent> <leader>yr :YcmCompleter GoToReferences<CR>
nnoremap <silent> <leader>yf :YcmCompleter GoToInclude<CR>
nnoremap <silent> <leader>yt :YcmCompleter GoToType<CR>
nnoremap <silent> <leader>ye :YcmDiags<CR>
let g:ycm_language_server =
\ [
\   {
\     'name': 'rust',
\     'cmdline': [ '/root/.local/bin/rust-analyzer' ],
\     'filetypes': [ 'rust' ],
\     'project_root_files': [ 'Cargo.toml' ]
\   },
\   {
\     'name': 'go',
\     'cmdline': [ '/root/go/bin/gopls' ],
\     'filetypes': [ 'go' ],
\     'project_root_files': [ 'go.mod' ]
\   },
\ ]

" easymotion
let g:EasyMotion_do_mapping = 0
let g:EasyMotion_smartcase = 1
nnoremap <leader>ll <Plug>(easymotion-lineforward)
nnoremap <leader>jj <Plug>(easymotion-j)
nnoremap <leader>kk <Plug>(easymotion-k)
nnoremap <leader>hh <Plug>(easymotion-linebackward)

" tagbar
nnoremap <leader>tt :TagbarToggle<CR>

" unodotree
nnoremap <leader>ut :UndotreeToggle<CR>

" vim-fugitive
nnoremap <leader>gd :Gdiffsplit<CR>

" gv.vim
nnoremap <leader>gv :GV?<CR>

" vim-gitgutter
nnoremap <leader>gt :GitGutterToggle<CR>
nnoremap <leader>hn :GitGutterNextHunk<CR>
nnoremap <leader>hp :GitGutterPrevHunk<CR>
let g:gitgutter_enabled = 0
let g:gitgutter_sign_allow_clobber = 1
let g:gitgutter_sign_added = '++'
let g:gitgutter_sign_modified = '##'
let g:gitgutter_sign_removed = '--'
let g:gitgutter_sign_removed_first_line = '*^'
let g:gitgutter_sign_removed_above_and_below = '*#'
let g:gitgutter_sign_modified_removed = '*!'
highlight GitGutterAdd    guifg=#009900 ctermfg = 2
highlight GitGutterChange guifg=#bbbb00 ctermfg = 3
highlight GitGutterDelete guifg=#ff2222 ctermfg = 1

" vim-floaterm
nnoremap <silent> <leader>to :FloatermToggle<CR>
tnoremap <silent> <leader>th <C-\><C-n>:FloatermToggle<CR>
tnoremap <silent> <leader>tc <C-\><C-n>:FloatermKill<CR>

set showcmd

" FZF
command! -bang -nargs=? -complete=dir Files
\ call fzf#vim#files(<q-args>,
\ {'options': ['--layout=reverse', '--info=inline', '--preview',
\ '~/.vim/plugged/fzf.vim/bin/preview.sh {} 2> /dev/null || tree -C {} 2> /dev/null']},
\ <bang>0)
nnoremap <silent> <leader>ff :Files<CR>
nnoremap <silent> <leader>fg :GFiles?<CR>
nnoremap <silent> <leader>fb :Buffers<CR>
nnoremap <silent> <leader>fl :Lines<CR>
nnoremap <silent> <leader>fc :Commands<CR>
nnoremap <silent> <leader>fh :History:<CR>
nnoremap <silent> <leader>fm :Maps<CR>

" vim-interestingwords
let g:interestingWordsDefaultMappings = 0
nnoremap <silent> <leader>mm :call InterestingWords('n')<CR>
vnoremap <silent> <leader>mm :call InterestingWords('v')<CR>
nnoremap <silent> <leader>M :call UncolorAllWords()<CR>
nnoremap <silent> n :call WordNavigation(1)<CR>
nnoremap <silent> N :call WordNavigation(0)<CR>

nnoremap <silent> <leader>lt :call ToggleGitLens()<CR>

