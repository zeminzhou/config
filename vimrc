" ================================ <Leader> ====================================
" ==============================================================================
" <Leader>d     :db<CR>
" <Leader>rn    :set relativenumber!<CR> 
" <Leader>l     <Plug>(easymotion-lineforward)
" <Leader>j     <Plug>(easymotion-j)
" <Leader>k     <Plug>(easymotion-k)
" <Leader>h     <Plug>(easymotion-linebackward)
" <Leader>at    :ALEToggle<CR> 
" <Leader>an    :ALENext<CR>
" <Leader>ap    :ALEPrevious<CR>
" <Leader>tt    :TagbarToggle<CR>
" <Leader>ut    :UndotreeToggle<CR> 
" <Leader>gt    :GitGutterToggle<CR>
" <Leader>hn    :GitGutterNextHunk<CR>
" <Leader>hp    :GitGutterPrevHunk<CR>
" <leader>fb    :<C-U><C-R>=printf("Leaderf buffer %s", \"")<CR><CR>
" <leader>ft    :<C-U><C-R>=printf("Leaderf bufTag %s", \"")<CR><CR>
" <leader>fl    :<C-U><C-R>=printf("Leaderf line %s", \"")<CR><CR>
" <leader>fc    :<C-U><C-R>=printf("Leaderf command %s", \"")<CR><CR>
" <leader>fs    :<C-U><C-R>=printf("Leaderf searchHistory %s", \"")<CR><CR>
" <leader>fh    :<C-U><C-R>=printf("Leaderf cmdHistory %s", \"")<CR><CR>
" <leader>fw    :<C-U><C-R>=printf("Leaderf! --stayOpen rg -e %s","")<CR>
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
Plug 'Xuyuanp/nerdtree-git-plugin'
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
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'mbbill/undotree'
Plug 'lifepillar/vim-gruvbox8'
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}
Plug 'dense-analysis/ale'
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
" Plug 'junegunn/fzf', {'do' : { -> fzf#install() }}
" Plug 'junegunn/fzf.vim'
" Plug 'rking/ag.vim'
" Plug 'nathanaelkane/vim-indent-guides'
" Plug 'ryanoasis/vim-devicons'
" Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" Plug 'terryma/vim-multiple-cursors'
" Plug 'brooth/far.vim'
" Plug 'davidhalter/jedi-vim'
" Plug 'jpalardy/vim-slime'
call plug#end()

" vim-plug
"let g:plug_url_format="git@github.com/%s.git"

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
set ambiwidth=double

syntax enable
colorscheme gruvbox8

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

nnoremap <Leader>rn :set relativenumber!<CR>

silent !mkdir -p ~/.vim/tmp/backup
silent !mkdir -p ~/.vim/tmp/undo
set backupdir=~/.vim/tmp/backup,.
set directory=~/.vim/tmp/backup,.
if has('persistent_undo')
    set undofile
    set undodir=~/.vim/tmp/undo,.
endif


" startify
let g:startify_change_to_dir = 0

" vim-go
nnoremap <Leader>gd :GoDef<CR>
nnoremap <leader>gi :GoImplements<CR>
nnoremap <Leader>gr :GoReferrers<CR>

" NERDTree
nnoremap <leader>nt :NERDTreeMirror<CR>
nnoremap <leader>nt :NERDTreeToggle<CR>
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'~',
                \ 'Staged'    :'✚',
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
let g:airline_theme = 'distinguished'
let g:airline_left_sep = '>'
let g:airline_right_sep = '<'

" YCM 
"let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_show_diagnostics_ui = 0
let g:ycm_error_symbol = 'xx'
let g:ycm_warning_symbol = '>>'
let g:ycm_collect_identifiers_from_tags_files = 1
nnoremap <silent> <leader>yc :YcmCompleter GoToDeclaration<CR>
nnoremap <silent> <leader>yd :YcmCompleter GoToDefinition<CR>
nnoremap <silent> <leader>ys :YcmCompleter GoToSymbol<CR>
nnoremap <silent> <leader>yr :YcmCompleter GoToReferences<CR>
nnoremap <silent> <leader>yf :YcmCompleter GoToInclude<CR>
nnoremap <silent> <leader>yt :let g:ycm_auto_trigger = g:ycm_auto_trigger == 1 ? 0 : 1<CR>

" ale
let g:ale_lint_on_enter = 1
let g:ale_lint_on_insert_leave = 1
let g:ale_lint_on_save = 0
let g:ale_lint_on_text_changed = 'normal'
let g:ale_sign_error = "xx"
let g:ale_sign_warning = ">>"
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = 'ale [%linter%] %s [%severity%]'
let g:airline#extensions#ale#enabled = 1
let g:ale_sign_highlight_linenrs = 1
nnoremap <Leader>at :ALEToggle<CR>
nnoremap <Leader>an :ALENext<CR>
nnoremap <Leader>ap :ALEPrevious<CR>
let g:ale_linters = {
\   'c++': ['clangd'],
\   'c': ['clangd'],
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
nnoremap <Leader>l <Plug>(easymotion-lineforward)
nnoremap <Leader>j <Plug>(easymotion-j)
nnoremap <Leader>k <Plug>(easymotion-k)
nnoremap <Leader>h <Plug>(easymotion-linebackward)

" tagbar
nnoremap <Leader>tt :TagbarToggle<CR>

" unodotree
nnoremap <Leader>ut :UndotreeToggle<CR>

" fzf
" CTRL-T new-tabs
" CTRL-X horizontal splits
" CTRL-V vertical splits
" let g:fzf_colors =
" \ { 'fg':      ['fg', 'Normal'],
"   \ 'bg':      ['bg', 'Normal'],
"   \ 'hl':      ['fg', 'Comment'],
"   \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
"   \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
"   \ 'hl+':     ['fg', 'Statement'],
"   \ 'info':    ['fg', 'PreProc'],
"   \ 'border':  ['fg', 'Ignore'],
"   \ 'prompt':  ['fg', 'Conditional', 'Comment'],
"   \ 'pointer': ['fg', 'Exception'],
"   \ 'marker':  ['fg', 'Keyword'],
"   \ 'spinner': ['fg', 'Label'],
"   \ 'header':  ['fg', 'Comment'] }
" let g:fzf_history_dir = '~/.local/share/fzf-history'
" let g:fzf_layout = { 'down': '30%' }
" autocmd! FileType fzf
" autocmd  FileType fzf set laststatus=0 noshowmode noruler
"   \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler
" nnoremap <silent> <Leader>ff :Files<CR>
" nnoremap <silent> <Leader>fb :Buffers<CR>
" nnoremap <silent> <Leader>fl :Lines<CR>
" nnoremap <silent> <Leader>ft :Tags<CR>
" nnoremap <silent> <Leader>fw :Rg<CR>
" nnoremap <silent> <Leader>fc :Commands<CR>
" nnoremap <silent> <Leader>fs :History/<CR>
" command! -bang -nargs=? -complete=dir Files
"     \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(
"     \ {'options': ['--prompt=FUZZY> ', '--header=-----------------']}
"     \ ), <bang>0)

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
highlight GitGutterAdd    guifg=#009900 ctermfg = 2
highlight GitGutterChange guifg=#bbbb00 ctermfg = 3
highlight GitGutterDelete guifg=#ff2222 ctermfg = 1

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

" leaderF
" =============================================================================
" <C-C>, <ESC>	        quit from LeaderF
" <C-R>	                switch between fuzzy search mode and regex mode
" <C-F>	                switch between full path search mode and name only search mode
" <Tab>	                switch to normal mode
" <C-U>	                clear the prompt
" <C-W>	                delete the word before the cursor in the prompt
" <Up>/<Down>	        wrecall last/next input pattern from history
" <2-LeftMouse>, <CR>	open the file under cursor or selected(when multiple files are selected)
" <C-X>	                open in horizontal split window
" <C-]>	                open in vertical split window
" <C-T>	                open in new tabpage
" <C-\>	                show a prompt enable to choose split window method: vertical, horizontal, tabpage, etc
" <F5>	                refresh the cache
" <C-LeftMouse>, <C-S>	select multiple files
" <C-A>	                select all files
" <C-L>	                clear all selections
" <C-P>	preview the result
" <C-Up>	scroll up in the popup preview window
" <C-Down>	scroll down in the popup preview window
" =============================================================================
" Show icons, icons are shown by default
let g:Lf_ShowDevIcons = 0
let g:Lf_StlSeparator = { 'left': '>', 'right': '<' }
" don't show the help in normal mode
let g:Lf_HideHelp = 0
let g:Lf_UseCache = 0
let g:Lf_ShowHidden = 1
let g:Lf_UseVersionControlTool = 1
let g:Lf_IgnoreCurrentBufferName = 1
let g:Lf_WindowHeight = 0.2
let g:Lf_WindowPosition = 'bottom'
let g:Lf_StlColorscheme = 'gruvbox_material'
" preview
let g:Lf_PreviewInPopup = 1
let g:Lf_PreviewCode = 1
let g:Lf_PreviewResult = {
            \ 'File': 0,
            \ 'Buffer': 0,
            \ 'Mru': 0,
            \ 'Tag': 0,
            \ 'BufTag': 1,
            \ 'Function': 1,
            \ 'Line': 0,
            \ 'Colorscheme': 0,
            \ 'Rg': 1,
            \ 'Gtags': 0
            \}
" gtags
let g:Lf_GtagsGutentags = 1
let g:Lf_CacheDirectory = expand('~')
let g:gutentags_cache_dir = expand(g:Lf_CacheDirectory.'/.LfCache/gtags')
" key-map
let g:Lf_ShortcutF = '<leader>ff'
noremap <leader>fb :<C-U><C-R>=printf("Leaderf buffer %s", \"")<CR><CR>
noremap <leader>ft :<C-U><C-R>=printf("Leaderf bufTag %s", \"")<CR><CR>
noremap <leader>fl :<C-U><C-R>=printf("Leaderf line %s", \"")<CR><CR>
noremap <leader>fc :<C-U><C-R>=printf("Leaderf command %s", \"")<CR><CR>
noremap <leader>fs :<C-U><C-R>=printf("Leaderf searchHistory %s", \"")<CR><CR>
noremap <leader>fh :<C-U><C-R>=printf("Leaderf cmdHistory %s", \"")<CR><CR>
noremap <leader>fw :<C-U><C-R>=printf("Leaderf! --stayOpen rg -e %s","")<CR>

