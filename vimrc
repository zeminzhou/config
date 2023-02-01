" ==============================================================================
" ==============================================================================
" ==============================================================================
" <Leader>db    :bd<CR>
" <Leader>dt    :tabclose<CR>
" <Leader>tn    :tabnew<CR>
" <Leader>rn    :set relativenumber!<CR> 
" <Leader>l     <Plug>(easymotion-lineforward)
" <Leader>j     <Plug>(easymotion-j)
" <Leader>k     <Plug>(easymotion-k)
" <Leader>h     <Plug>(easymotion-linebackward)
" <Leader>tt    :TagbarToggle<CR>
" <Leader>ut    :UndotreeToggle<CR> 
" <Leader>gd    :Gdiffsplit<CR>
" <Leader>gt    :GitGutterToggle<CR>
" <Leader>gv    :GV?<CR>
" <Leader>hn    :GitGutterNextHunk<CR>
" <Leader>hp    :GitGutterPrevHunk<CR>
" <Leader>cd    :GscopeFind g <C-R><C-W><CR>
" <Leader>cr    :GscopeFind c <C-R><C-W><CR>
" <Leader>cc    :GscopeFind d <C-R><C-W><CR>
" <Leader>ca    :GscopeFind a <C-R><C-W><CR>
" <Leader>ce    :GscopeFind e <C-R><C-W><CR>
" <Leader>cs    :GscopeFind s <C-R><C-W><CR>
" <Leader>ct    :GscopeFind t <C-R><C-W><CR>
" <Leader>cf    :GscopeFind f <C-R>=expand("<cfile>")<CR><CR>
" <Leader>ci    :GscopeFind i <C-R>=expand("<cfile>")<CR><CR>
" <Leader>yd    :YcmCompleter GoToDefinition<CR>
" <Leader>yr    :YcmCompleter GoToReferences<CR>
" <Leader>yc    :YcmCompleter GoToDeclaration<CR>
" <Leader>ys    :YcmCompleter GoToSymbol<CR>
" <Leader>yi    :YcmCompleter GoToInclude<CR>
" <Leader>ye    :YcmDiags<CR>
" <Leader>to    :FloatermToggle<CR>
" <Leader>th    <C-\><C-n>:FloatermToggle<CR>
" <Leader>tc    <C-\><C-n>:FloatermKill<CR>
" <Leader>fb    :<C-U><C-R>=printf("Leaderf buffer %s", \"")<CR><CR>
" <Leader>ft    :<C-U><C-R>=printf("Leaderf bufTag %s", \"")<CR><CR>
" <Leader>fl    :<C-U><C-R>=printf("Leaderf line %s", \"")<CR><CR>
" <Leader>fc    :<C-U><C-R>=printf("Leaderf command %s", \"")<CR><CR>
" <Leader>fs    :<C-U><C-R>=printf("Leaderf searchHistory %s", \"")<CR><CR>
" <Leader>fh    :<C-U><C-R>=printf("Leaderf cmdHistory %s", \"")<CR><CR>
" <Leader>fw    :<C-U><C-R>=printf("Leaderf! --stayOpen rg -e %s","")<CR>
" <Leader>fw    :<C-U><C-R>=printf("Leaderf! rg --heading -e %s --current-buffer --bottom --stayOpen", expand("<cword>"))<CR><CR>
" <Leader>rg    :<C-U><C-R>=printf("Leaderf! rg --heading -e %s --bottom --stayOpen", expand("<cword>"))<CR><CR>
" <Leader>m     :call InterestingWords('n')<CR>
" <Leader>m     :call InterestingWords('v')<CR>
" <Leader>M     :call UncolorAllWords()<CR>
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
Plug 'puremourning/vimspector'

" search
Plug 'ludovicchabant/vim-gutentags'
Plug 'skywind3000/gutentags_plus'
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
Plug 'linjiX/LeaderF-git'
Plug 'rking/ag.vim'

" spell check
" Plug 'kamykn/spelunker.vim'

" git
Plug 'junegunn/gv.vim'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'Eliot00/git-lens.vim'
Plug 'zeminzhou/diffview.vim'

" colorscheme
Plug 'lighthaus-theme/vim-lighthaus'
Plug 'sainnhe/everforest'
Plug 'altercation/vim-colors-solarized'                                          
Plug 'karoliskoncevicius/sacredforest-vim'
Plug 'lifepillar/vim-gruvbox8'

if has('nvim')
    Plug 'github/copilot.vim'
endif

Plug 'easymotion/vim-easymotion'
" Plug 'junegunn/fzf', {'do' : { -> fzf#install() }}
" Plug 'junegunn/fzf.vim'
" Plug 'dense-analysis/ale'
" Plug 'SirVer/ultisnips'
" Plug 'honza/vim-snippets'
" Plug 'nathanaelkane/vim-indent-guides'
" Plug 'ryanoasis/vim-devicons'
" Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" Plug 'terryma/vim-multiple-cursors'
" Plug 'brooth/far.vim'
" Plug 'davidhalter/jedi-vim'
" Plug 'jpalardy/vim-slime'
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
" colorscheme gruvbox8
colorscheme seoul256

inoremap jk <esc>
vnoremap jk <esc>

vnoremap Y "+y
nnoremap <C-h> :bp<CR>
nnoremap <C-l> :bn<CR>
nnoremap <C-j> :tabprevious<CR>
nnoremap <C-k> :tabnext<CR>

nnoremap <leader>db :bd<CR>
nnoremap <leader>dt :tabclose<CR>
nnoremap <leader>tn :tabnew<CR>
nnoremap <leader>rn :set relativenumber!<CR>

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
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#gutentags#enabled = 1
let g:airline#extensions#fzf#enabled = 1
let g:airline#extensions#fugitiveline#enabled = 1
let g:airline#extensions#ycm#enabled = 1
let g:airline#extensions#tabline#ctrlspace_show_tab_nr = 0
let g:airline#extensions#tabline#show_splits = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#ale#error_symbol = 'E:'
let g:airline#extensions#ale#warning_symbol = 'W:'
let g:airline#extensions#ale#show_line_numbers = 1
let g:airline#extensions#ale#open_lnum_symbol = '(L'
let g:airline#extensions#ale#close_lnum_symbol = ')'
let g:airline_left_sep = '>'
let g:airline_right_sep = '<'
let g:airline_theme = 'gruvbox8'
let g:airline_extensions = ['branch', 'tabline']

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
nnoremap <silent> <leader>yc :YcmCompleter GoToDeclaration<CR>
nnoremap <silent> <leader>yd :YcmCompleter GoToDefinition<CR>
nnoremap <silent> <leader>ys :YcmCompleter GoToSymbol <C-R><C-W><CR>
nnoremap <silent> <leader>yi :YcmCompleter GoToImplementation<CR>
nnoremap <silent> <leader>yr :YcmCompleter GoToReferences<CR>
nnoremap <silent> <leader>yf :YcmCompleter GoToInclude<CR>
nnoremap <silent> <leader>ye :YcmDiags<CR>
nnoremap <silent> <leader>yt :let g:ycm_auto_trigger = g:ycm_auto_trigger == 1 ? 0 : 1<CR>
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
nnoremap <leader>l <Plug>(easymotion-lineforward)
nnoremap <leader>j <Plug>(easymotion-j)
nnoremap <leader>k <Plug>(easymotion-k)
nnoremap <leader>h <Plug>(easymotion-linebackward)

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

" vim-gutentags & gutentags_plus
let $GTAGSLABEL = 'native-pygments'
let $GTAGSCONF = '/root/.globalrc'
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
noremap <silent> <leader>cd :GscopeFind g <C-R><C-W><CR>
noremap <silent> <leader>cr :GscopeFind c <C-R><C-W><CR>
noremap <silent> <leader>cc :GscopeFind d <C-R><C-W><CR>
noremap <silent> <leader>ca :GscopeFind a <C-R><C-W><CR>
noremap <silent> <leader>ce :GscopeFind e <C-R><C-W><CR>
noremap <silent> <leader>cs :GscopeFind s <C-R><C-W><CR>
noremap <silent> <leader>ct :GscopeFind t <C-R><C-W><CR>
noremap <silent> <leader>cf :GscopeFind f <C-R>=expand("<cfile>")<CR><CR>
noremap <silent> <leader>ci :GscopeFind i <C-R>=expand("<cfile>")<CR><CR>

set showcmd

" leaderF
let g:Lf_ShowDevIcons = 0
let g:Lf_StlSeparator = { 'left': '>', 'right': '<' }
let g:Lf_HideHelp = 0
let g:Lf_UseCache = 1
let g:Lf_ShowHidden = 1
let g:Lf_UseVersionControlTool = 1
let g:Lf_IgnoreCurrentBufferName = 1
let g:Lf_WindowHeight = 0.4
let g:Lf_WindowPosition = 'popup'
let g:Lf_StlColorscheme = 'gruvbox_material'
let g:Lf_PopupColorscheme = 'gruvbox_default'
" preview
let g:Lf_PreviewInPopup = 1
let g:Lf_PreviewCode = 1
let g:Lf_PreviewResult = {
            \ 'File': 0,
            \ 'Buffer': 0,
            \ 'Mru': 0,
            \ 'Tag': 0,
            \ 'BufTag': 0,
            \ 'Function': 0,
            \ 'Line': 0,
            \ 'Colorscheme': 0,
            \ 'Rg': 1,
            \ 'Gtags': 1
            \}
let g:Lf_GtagsGutentags = 1
let g:Lf_CacheDirectory = expand('~')
let g:gutentags_cache_dir = expand(g:Lf_CacheDirectory.'/.LfCache/gtags')
let g:Lf_ShortcutF = '<leader>ff'
let g:Lf_ShortcutB = '<leader>fb'
noremap <leader>ft :<C-U><C-R>=printf("Leaderf gtags %s", "")<CR><CR>
noremap <leader>fl :<C-U><C-R>=printf("Leaderf line %s", "")<CR><CR>
noremap <leader>fc :<C-U><C-R>=printf("Leaderf command %s", "")<CR><CR>
noremap <leader>fs :<C-U><C-R>=printf("Leaderf searchHistory %s", "")<CR><CR>
noremap <leader>fh :<C-U><C-R>=printf("Leaderf cmdHistory %s", "")<CR><CR>
noremap <leader>fw :<C-U><C-R>=printf("Leaderf! rg --heading -e %s --current-buffer --bottom --stayOpen", expand("<cword>"))<CR><CR>
noremap <leader>rg :<C-U><C-R>=printf("Leaderf! rg --heading -e %s --bottom --stayOpen", expand("<cword>"))<CR><CR>
command Rg execute "Leaderf --stayOpen --bottom rg"

" vim-interestingwords
let g:interestingWordsDefaultMappings = 0
nnoremap <silent> <leader>m :call InterestingWords('n')<CR>
vnoremap <silent> <leader>m :call InterestingWords('v')<CR>
nnoremap <silent> <leader>M :call UncolorAllWords()<CR>
nnoremap <silent> n :call WordNavigation(1)<CR>
nnoremap <silent> N :call WordNavigation(0)<CR>

nnoremap <silent> <leader>lt :call ToggleGitLens()<CR>
nnoremap <silent> <leader>vt :call ToggleDiffView()<CR>
