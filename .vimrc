set nocompatible
filetype off

source ~/.vim/bundle/vim-unimpaired/plugin/unimpaired.vim

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin('~/.vim/bundle')
 
Plugin 'VundleVim/Vundle.vim'
Plugin 'ervandew/supertab'
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'vim-scripts/indentpython.vim'
" Plugin 'vim-syntastic/syntastic'
Plugin 'w0rp/ale'
Plugin 'jnurmine/Zenburn'
Plugin 'scrooloose/nerdtree'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'davidhalter/jedi-vim'
Plugin 'kien/ctrlp.vim'
Plugin 'jremmen/vim-ripgrep'
Plugin 'mileszs/ack.vim'
Plugin 'tpope/vim-surround'
Plugin 'jeffkreeftmeijer/vim-numbertoggle'
Plugin 'easymotion/vim-easymotion'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'skielbasa/vim-material-monokai'
Plugin 'Dru89/vim-adventurous'
Plugin 'ajmwagar/vim-deus'
Plugin 'gkjgh/cobalt'
Plugin 'NewProggie/NewProggie-Color-Scheme'
Plugin 'crater2150/vim-theme-chroma'
Plugin 'roosta/vim-srcery'
Plugin 'rakr/vim-one'
Plugin 'lifepillar/vim-solarized8'
Plugin 'lanox/lanox-vim-theme'
Plugin 'junegunn/seoul256.vim'
Plugin 'altercation/vim-colors-solarized'

call vundle#end()

let g:ale_linters = {
  \ 'python': ['pycodestyle'] ,
  \ }

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" cursor shape
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"


let mapleader=" "

map <F5> <ESC>:s/^\(.\+\)$/\/* \1 *\//<CR>:noh<CR>
map <F6> <ESC>:Rg <C-R><C-W><CR>
map <F7> <ESC>:Rg -t c <C-R><C-W><CR>
map <F8> <ESC>:Rg -t java <C-R><C-W><CR>
map <F2> <ESC>:cn<CR>
map <F3> <ESC>:cl<CR>
map <F4> <ESC>:cp<CR>
imap <C-u> <Home>
imap <C-m> <End>
nmap <C-o> o<Esc>
nmap <C-O> O<Esc>

" cmap cdiff CVSVimDiff<CR>
" cmap sdiff SVNVimDiff<CR>

" nnoremap <Leader>t :enew<Enter>         " 새로운 버퍼를 연다
" nnoremap <Leader><tab> :bnext!<CR>        " 다음 버퍼로 이동

nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>6 :6b<CR>
nnoremap <Leader>7 :7b<CR>
nnoremap <Leader>8 :8b<CR>
nnoremap <Leader>9 :9b<CR>
nnoremap <Leader>0 :10b<CR>

"
" YouCompleteMe options

" let g:ycm_autoclose_preview_window_after_completion=1
" map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" let g:ycm_register_as_syntastic_checker = 1 "default 1
" let g:Show_diagnostics_ui = 1 "default 1

"will put icons in Vim's gutter on lines that have a diagnostic set.
"Turning this off will also turn off the YcmErrorLine and YcmWarningLine
"highlighting
" let g:ycm_enable_diagnostic_signs = 1
" let g:ycm_enable_diagnostic_highlighting = 1
" let g:ycm_always_populate_location_list = 1 "default 0
" let g:ycm_open_loclist_on_ycm_diags = 1 "default 1

" let g:ycm_complete_in_strings = 1 "default 1
" let g:ycm_collect_identifiers_from_tags_files = 0 "default 0
" let g:ycm_path_to_python_interpreter = '' "default ''

" let g:ycm_server_use_vim_stdout = 0 "default 0 (logging to console)
" let g:ycm_server_log_level = 'info' "default info

" let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'  "where to search for .ycm_extra_conf.py if not found
" let g:ycm_confirm_extra_conf = 1

" let g:ycm_goto_buffer_command = 'same-buffer' "[ 'same-buffer', 'horizontal-split', 'vertical-split', 'new-tab' ]
" let g:ycm_filetype_whitelist = { '*': 1 }
" let g:ycm_key_invoke_completion = '<C-Space>'

" nnoremap <F11> :YcmForceCompileAndDiagnostics <CR>

let g:rg_command = 'rg -j 8 --vimgrep'

" 기본 무시 설정
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|svn)|\_site)$',
  \ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg)$',
\}

" 가장 가까운 .git 디렉토리를 cwd(현재 작업 디렉토리)로 사용
" 버전 관리를 사용하는 프로젝트를 할 때 꽤 적절하다.
" .svn, .hg, .bzr도 지원한다.
let g:ctrlp_working_path_mode = 'r'

" 단축키를 리더 키로 대체
nmap <leader>p :CtrlP<cr>
nmap <leader>m :CtrlPMRU<cr>
nmap <leader>b :CtrlPBuffer<cr>

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='powerlineish'

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1
let g:syntastic_aggregate_errors = 0
let g:syntastic_quiet_messages = { "type": "style" }
let g:syntastic_java_checkers=['javac']
let g:syntastic_java_javac_config_file_enabled = 1
let g:loaded_syntastic_java_javac_checker = 1
" let g:syntastic_mode_map = { 'mode': 'active',
"                            \ 'active_filetypes': ['python', 'bar'],
"                            \ 'passive_filetypes': ['java'] }

" NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
map <leader>n :NERDTreeToggle<CR>

"split navigations
nnoremap <C-j> <C-W><C-J>
nnoremap <C-k> <C-W><C-K>
nnoremap <C-l> <C-W><C-L>
nnoremap <C-h> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
" nnoremap <space> za

set encoding=utf-8

" System clipboard
set clipboard=unnamed

"The following three lines map Ctrl+s to save in vi.  You can comment
"these out, it has nothing to do with syntax sssighlighting or colors.

" optional lines to turn on pressing F10 to toggle paste mode
noremap <F10> :set invpaste paste?<CR>i
set pastetoggle=<F10>

:nmap <c-s> :w<CR>
:imap <c-s> <Esc>:w<CR>a
:imap <c-s> <Esc><c-s>

let python_highlight_all=1

syntax on
set background=dark
set hlsearch
set nu
" set smartindent  "smartindent doesn't take care of python hashtag comments correctly, use cindent:    
set cindent
set tabstop=4
set shiftwidth=4
set expandtab
set cursorline
filetype on
filetype plugin indent on

" au BufReadPost,BufNewFile *.twig colorscheme koehler
" au BufReadPost,BufNewFile *.css colorscheme slate
" au BufReadPost,BufNewFile *.js colorscheme slate2
" au BufReadPost,BufNewFile *.py colorscheme molokaiyo
" au BufReadPost,BufNewFile *.html colorscheme monokai
" au BufReadPost,BufNewFile *.java colorscheme monokai
" au BufReadPost,BufNewFile *.php colorscheme monokai

" Default line highlighting for unknown filetypes
hi String ctermfg=140
hi CursorLine ctermbg=235
hi CursorLine guibg=#D3D3D3 cterm=none

"What follows are optional things, I like them

au BufNewFile,BufRead *.py 
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix 

" Commenting blocks of code.
" This specifies the comment character when specifying block comments.
"autocmd FileType c,cpp,java,scala let b:comment_leader = '//'
"autocmd FileType sh,ruby,python   let b:comment_leader = '#'
"autocmd FileType conf,fstab       let b:comment_leader = '#'
"autocmd FileType tex              let b:comment_leader = '%'
"autocmd FileType mail             let b:comment_leader = '>'
"autocmd FileType vim              let b:comment_leader = '"'

"this makes it so you can Shift-V highlight lots of text then press ,cc to
"comment it or ,cu to uncomment.  
"noremap <silent> ,cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
"noremap <silent> ,cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>

"This mission critical workaround hack tells vim to restore cursor to the last line.
"Be sure to set: "Thip, crinkle, sploit" to "stopit, just be right".  lolz
"Also it could be the functionality is disabled in your /etc/vim/vimrc or
"your ~/.viminfo is owned by root.  
"http://askubuntu.com/questions/223018/vim-is-not-remembering-last-position
autocmd BufReadPost *
  \ if line("'\"") > 1 && line("'\"") <= line("$") |
  \   exe "normal! g`\"" |
  \ endif

"These extra commands tell syntastic to ignore the following kinds of warnings 
"let g:syntastic_quiet_messages = { "regex": 'superfluous' }
"let g:syntastic_quiet_messages = { "regex": 'superfluous-parens\|too-many-instance-attributes\|too-few-public-methods' }

"I like the vertical bar on insert mode, others do not like.  You decide.
"let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
"let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
"
autocmd FileType java setlocal omnifunc=javacomplete#Complete

" set pastetoggle=<f5>

" colorscheme
"
" seoul256 (dark):
"   Range:   233 (darkest) ~ 239 (lightest)
"   Default: 237
" let g:seoul256_background = 233
" colo seoul256
" colorscheme monokai
set background=dark
set termguicolors
" colorscheme one
" colorscheme material-monokai
" colorscheme adventurous
" colorscheme deus
" colorscheme cobalt
" colorscheme chroma
colorscheme lanox

hi QuickFixLine term=reverse ctermbg=52
hi LineNr ctermfg=240

