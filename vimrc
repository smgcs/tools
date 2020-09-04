call plug#begin('~/.vim/plugged')
Plug 'vim-scripts/AutoComplPop'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"Plug 'vim-scripts/Tagbar'
Plug 'majutsushi/tagbar'
Plug 'tclh123/vim-thrift'
Plug 'danielzheng/tagbar-thrift.vim'
Plug 'tenfyzhong/tagbar-proto.vim'
" 下面这个插件可取代Command-T 但是现在暂时不支持目录忽略，所以先暂时不用
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }
Plug 'vim-scripts/molokai'
Plug 'vim-scripts/Solarized'
"快速跳转到字符
Plug 'vim-scripts/EasyMotion'
"git
Plug 'tpope/vim-fugitive'
Plug 'sodapopcan/vim-twiggy'
Plug 'liuchengxu/space-vim'
Plug 'fatih/vim-go'
"Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'Lokaltog/vim-powerline'
"comment
Plug 'scrooloose/nerdcommenter'
"tenfy
Plug 'Valloric/YouCompleteMe'
Plug 'tenfyzhong/CompleteParameter.vim'
"bufexplorer
Plug 'jlanzarotta/bufexplorer'
Plug 'Raimondi/delimitMate'
Plug 'rizzatti/dash.vim'
Plug 'ianding1/leetcode.vim'
Plug 'itchyny/lightline.vim'
Plug 'mattn/webapi-vim'
Plug 'mattn/gist-vim'
Plug 'tpope/vim-obsession'
call plug#end()

let mapleader=","
set ignorecase
let g:acp_behaviorKeywordCommand="\<C-n>"

let g:go_info_mode = 'guru'
let g:go_def_mode = 'guru'
let g:go_version_warning = 0

"高亮行
set cursorline
"搜索高亮

map ,rf :GoReferrers<CR>
map <F4> :GoReferrers<CR>
map <F5> :GoRun<CR>
map <F6> :GoImports<CR>
set hlsearch
set incsearch
"vim-twiggy.vim config
let g:twiggy_group_locals_by_slash = 0
let g:twiggy_local_branch_sort = 'mru'
let g:twiggy_remote_branch_sort = 'date'
let g:twiggy_num_columns = 20
map <F9> :Twiggy<CR>
map! <F9> <Esc>:Twiggy<CR>

"设置NERDTreetagbar的宽度

let g:NERDTreeWinSize = 20
let g:tagbar_width=20

"颜色主题设置
set background=dark
set t_Co=16
"colorscheme molokai
colorscheme solarized
"map <F6> :! tab vim<CR><CR>
"map! <F6> <Esc>:! tab vim<CR><CR>

"快捷键设置
nmap ; :
map <c-c> "+y
xmap  "_d
map <F7> :NERDTreeToggle<CR>
map! <F7> <Esc>:NERDTreeToggle<CR>

map <F8> :TagbarToggle<CR>
map! <F8> <Esc>:TagbarToggle<CR>

nmap <silent><leader>ds <Plug>DashSearch

"快速关闭
map <S-Q> :qa<CR>
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>

"支持鼠标
set mouse=a

map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-w>l

"语法高亮
syntax enable
syntax on
set autoindent
set number
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
"加快速度
"set synmaxcol=200
set ttyfast " u got a fast terminal
set ttyscroll=3
set lazyredraw " to avoid scrolling problems
set scrolljump=5
"删除键
set backspace=eol,start,indent

"tenfy's config
"禁止打开预览窗口
set completeopt-=previe
set completeopt=menu,menuone
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_show_diagnostics_ui = 0
"let g:syntastic_ignore_files=[".*\.go$"]
"ycm配色
highlight PMenu ctermfg=56 ctermbg=252
highlight PMenuSel ctermfg=160   ctermbg=230

let g:ycm_min_num_of_chars_for_completion           = 2
let g:ycm_add_preview_to_completeopt                = 0
let g:ycm_autoclose_preview_window_after_insertion  = 1
let g:ycm_error_symbol                              = '>>'
let g:ycm_warning_symbol                            = '--'
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_key_detailed_diagnostics                  = '<leader>dd'
let g:ycm_confirm_extra_conf                        = 0
let g:ycm_key_list_select_completion                = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion              = ['<C-p>', '<Up>']
let g:ycm_server_log_level                          = 'error'
let g:ycm_python_binary_path                        = 'python'

"补全确认
let g:ycm_key_list_stop_completion = ['<C-y>']

let g:ycm_semantic_triggers =  {
      \   'vim':        ['re![a-zA-Z_1-9]{2,}', ':', '#', '<SID>', '<Plug>'],
      \   'c':          ['re![a-zA-Z_1-9]{2,}', '->', '.'],
      \   'objc':       ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s', 're!\[.*\]\s'],
      \   'ocaml':      ['re![a-zA-Z_1-9]', '.', '#'],
      \   'cpp,objcpp': ['re![a-zA-Z_1-9]{2,}', '->', '.', '::'],
      \   'perl':       ['re![a-zA-Z_1-9]{2,}', '->'],
      \   'php':        ['re![a-zA-Z_1-9]{2,}', '->', '::'],
      \   'cs':         ['re![a-zA-Z_1-9]{2,}', '.'],
      \   'java':       ['re![a-zA-Z_1-9]{2,}', '.'],
      \   'javascript': ['re![a-zA-Z_1-9]{2,}', '.'],
      \   'typescript': ['re![a-zA-Z_1-9]{2,}', '.'],
      \   'd':          ['re![a-zA-Z_1-9]{2,}', '.'],
      \   'python':     ['re![a-zA-Z_1-9]{2,}', '.'],
      \   'perl6':      ['re![a-zA-Z_1-9]{2,}', '.'],
      \   'scala':      ['re![a-zA-Z_1-9]{2,}', '.'],
      \   'vb':         ['re![a-zA-Z_1-9]{2,}', '.'],
      \   'elixir':     ['re![a-zA-Z_1-9]{2,}', '.'],
      \   'go':         ['re![a-zA-Z_1-9]{2,}', '.'],
      \   'ruby':       ['re![a-zA-Z_1-9]{2,}', '.', '::'],
      \   'lua':        ['re![a-zA-Z_1-9]{2,}', '.', ':'],
      \   'erlang':     ['re![a-zA-Z_1-9]{2,}', ':'],
      \ }
let g:complete_parameter_use_ultisnips_mappings = 1
let g:complete_parameter_echo_signature = 1

imap <expr>(
            \ pumvisible() ?
            \ complete_parameter#pre_complete("()") :
            \ "\<Plug>delimitMate("

"imap <expr>( complete_parameter#pre_complete("()")
smap <c-j> <Plug>(complete_parameter#goto_next_parameter)
imap <c-j> <Plug>(complete_parameter#goto_next_parameter)
smap <c-k> <Plug>(complete_parameter#goto_previous_parameter)
imap <c-k> <Plug>(complete_parameter#goto_previous_parameter)
nmap <m-d> <Plug>(complete_parameter#overload_down)
imap <m-d> <Plug>(complete_parameter#overload_down)
smap <m-d> <Plug>(complete_parameter#overload_down)
nmap <m-u> <Plug>(complete_parameter#overload_up)
imap <m-u> <Plug>(complete_parameter#overload_up)
smap <m-u> <Plug>(complete_parameter#overload_up)

"delimitMate's config
let g:delimitMate_expand_cr = 2


"leetcode
let g:leetcode_username = "xxx@qq.com"
let g:leetcode_password = "XXX"
let g:leetcode_solution_filetype = "golang"

nmap <silent><leader>lc :LeetCodeList<CR>
nmap <silent><leader>lt :LeetCodeTest<CR>
nmap <silent><leader>ls :LeetCodeSubmit<CR>

"gitdiff color config
"新增的行 "
highlight DiffAdd ctermbg=235  ctermfg=108  guibg=#262626 guifg=#87af87 cterm=reverse gui=reverse
"删除的行 "
highlight DiffDelete ctermbg=235  ctermfg=131  guibg=#262626 guifg=#af5f5f cterm=reverse gui=reverse
" 差异的行 "
highlight DiffChange ctermbg=235  ctermfg=103  guibg=#262626 guifg=#8787af cterm=reverse gui=reverse
"差异的文字 "
highlight DiffText ctermbg=235  ctermfg=208  guibg=#262626 guifg=#ff8700 cterm=reverse gui=reverse

"基本设置
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,chinese
set ambiwidth=double
set wrap "自动换行
"设置无备份
set nobackup
set nowritebackup
set relativenumber
autocmd InsertEnter * set number norelativenumber
autocmd InsertLeave * set number relativenumber
autocmd VimEnter * hi CursorLine ctermbg=8
"autocmd VimEnter * hi Comment term=bold cterm=bold ctermfg=2 gui=bold guifg=#5f8700
"autocmd VimEnter * hi Comment term=bold cterm=bold ctermfg=12 gui=bold guifg=#4e4e4e
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'powerline',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }
"nmap <silent><leader>ll :call lightline#toggle()<CR>

"WSL yank support
let s:clip = '/mnt/c/Windows/System32/clip.exe'  " change this path according to your mount point
if executable(s:clip)
    augroup WSLYank
        autocmd!
        autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
    augroup END
endif
