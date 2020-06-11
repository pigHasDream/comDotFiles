"""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim Plug Begin
"""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

Plug 'majutsushi/tagbar'
Plug 'mhinz/vim-grepper', { 'on': ['Grepper', '<plug>(GrepperOperator)'] }
Plug 'https://github.com/chazy/cscope_maps'
Plug 'tpope/vim-fugitive'
Plug 'https://github.com/octol/vim-cpp-enhanced-highlight'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'https://github.com/vim-scripts/closetag.vim'
Plug 'https://github.com/ctrlpvim/ctrlp.vim'
Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'flazz/vim-colorschemes'
Plug 'preservim/nerdcommenter'
Plug 'drmingdrmer/vim-toggle-quickfix'
Plug 'luochen1990/rainbow'
Plug 'yssl/QFEnter'
"Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
"Plug 'w0rp/ale'


" Some cmd
"PlugInstall
"PlugClean
"PlugUpdate
"PlugUpgrade
"PlugStatus

call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim Plug End
"""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""
" General setting
"""""""""""""""""""""""""""""""""""""""""""""""""""
 filetype on
 syntax on
 set nu
 set cindent
 set autoindent
 set foldcolumn=0
 set tabstop=2
 set shiftwidth=2
 set softtabstop=2
 set t_Co=256
 set expandtab
 set vb t_vb=
 set fdm=marker
 set hlsearch
 set clipboard=unnamedplus
 set wrapmargin=0
 set magic
 set sm
 set smd
 set tw=300
 set encoding=utf-8
 set backspace=indent,eol,start
 set backspace=2

 nnoremap <silent> <C-n> :cn<CR>
 nnoremap <silent> <C-p> :cp<CR>
 nnoremap <silent> <F3> :Grepper<CR>
 nnoremap <silent> <F4> :Grepper -buffer<CR>
 cmap ww w!

 " shift+* highlight no jump
 nnoremap * m`:keepjumps normal! *``<cr>

 vmap <leader>y :w! ~/.vimbuffer<CR>
 nmap <leader>p :r! cat ~/.vimbuffer<CR>

 set pastetoggle=<F12>
 set mouse=a
 set noerrorbells
 set novisualbell

 cmap W w
 cmap Q q
 cmap tn tabnew
 noremap <tab>k <C-w><Up>
 noremap <tab>j <C-w><Down>
 noremap <tab>h <C-w><Left>
 noremap <tab>l <C-w><Right>
 noremap <tab>n <C-w>w
 
 let g:jellybeans_use_term_background_color = 1
 colorscheme jellybeans
 "hi LineNr ctermfg=grey

 " Always show the status line
 set laststatus=2
 set statusline=%<%f\  " file name
 set statusline+=%w%h%m%r  " options
 set statusline+=%{fugitive#statusline()}

 "hi StatusLine ctermfg=darkcyan ctermbg=25
 "hi StatusLineNC ctermfg=white ctermbg=239
 hi Folded ctermbg=25 ctermfg=11
 "hi Comment ctermfg=darkred guifg=red
 "hi Constant ctermfg=darkcyan guifg=cyan
 "hi Search ctermbg=darkcyan ctermfg=15
 hi Error term=standout ctermfg=15 ctermbg=88 guibg=#902020
 "hi Search ctermfg=23 ctermbg=231 cterm=bold guifg=#005f5f guibg=#ffffff
 hi Search term=reverse cterm=none ctermfg=16 ctermbg=122 gui=bold guifg=#ffffff guibg=#556779
 hi SpellBad term=standout ctermfg=15 ctermbg=90 guibg=#902020
 hi SpellCap term=reverse ctermfg=7 ctermbg=135 guibg=#000940
 hi SpellRare term=standout ctermfg=15 ctermbg=88 guibg=#902020
 hi SpellLocal term=reverse ctermfg=7 ctermbg=135 guibg=#000940
 "set cursorline
 hi CursorLine ctermfg=16 ctermbg=253
 hi Visual ctermfg=0 ctermbg=7

 "diff
 hi DiffAdd    ctermfg=16 ctermbg=180
 hi DiffChange ctermfg=16 ctermbg=78
 hi DiffDelete ctermfg=16 ctermbg=239
 hi DiffText   term=none cterm=none ctermfg=11 ctermbg=25
 nnoremap <silent> <C-j> ]c
 nnoremap <silent> <C-k> [c
 nnoremap Q <nop>

 " quickfix window toggle map
 nmap <C-m> <Plug>window:quickfix:toggle

"""""""""""""""""""""""""""""""""""""""""""""""""""
" PlugIn setting
"""""""""""""""""""""""""""""""""""""""""""""""""""

 "CtrlP setting
 let g:ctrlp_map = '<c-a>'
 nnoremap <silent> <F2> :CtrlP<CR>
 let g:ctrlp_match_window = 'bottom,order:ttb,min:1,max:20,results:80'
 
 "NERDTree
 map <F5> :NERDTreeToggle<CR>
 let g:NERDTreeDirArrowExpandable = '+'
 let g:NERDTreeDirArrowCollapsible = '-'
 let g:NERDTreeWinSize = 40
 
 "NerdCommenter
 filetype plugin on
 "Add spaces after comment delimiters by default
 let g:NERDSpaceDelims = 1
 " Use compact syntax for prettified multi-line comments
 let g:NERDCompactSexyComs = 1
 " Align line-wise comment delimiters flush left instead of following code indentation
 let g:NERDDefaultAlign = 'left'
 let g:NERDTreeWinPos = 'right'
 " Add your own custom formats or override the defaults
 let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
 " Allow commenting and inverting empty lines (useful when commenting a region)
 let g:NERDCommentEmptyLines = 1
 " Enable trimming of trailing whitespace when uncommenting
 let g:NERDTrimTrailingWhitespace = 1
 " Enable NERDCommenterToggle to check all selected lines is commented or not 
 let g:NERDToggleCheckAllLines = 1

 "airline
 let g:airline#extensions#whitespace#enabled = 0
 let g:airline#extensions#tagbar#enabled = 0
 "let g:airline_powerline_fonts = 1
 let g:airline_theme='wombat'
 "let g:airline_theme='bubblegum'
 let g:airline#extensions#tabline#enabled = 1
 let g:airline#extensions#tabline#left_sep = ' '
 let g:airline#extensions#tabline#left_alt_sep = '|'
 
  if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif

  " unicode symbols
  "let g:airline_left_sep = '▶'
  "let g:airline_right_sep = '◀'
  let g:airline_symbols.readonly = '⚑'
  "let g:airline_symbols.readonly = '☂'
  "let g:airline_symbols.readonly = '☘'
  "let g:airline_symbols.readonly = '☢'
  "let g:airline_symbols.readonly = '♣'
  let g:airline_symbols.linenr = '☰'
  let g:airline_symbols.maxlinenr = '㏑'
  let g:airline_symbols.branch = ''
  let g:airline_symbols.paste = 'ρ'
  let g:airline_symbols.notexists = ' ♪'
  let g:airline_symbols.whitespace = '☰'
  let g:airline_symbols.dirty = ' ☇'

 "tagbar
 map <F8> :TagbarToggle<CR>
 let g:tagbar_ctags_bin = '/depot/ctags-5.8/bin/ctags'
 let g:tagbar_width = 60
 let g:tagbar_left = 1

 set tags=tags

 "cscope
 set cscopequickfix=s-,c-,d-,i-,t-,e-
 "map :cc :bo cope<CR>
 map <F9> :cs add cscope.out <CR>
 map <F1> :cs kill 0 <CR>

 "A.vim
 source /u/miaojin/.vim/plugged/a.vim/plugin/a.vim
 
 "rainbow parentheses
 let g:rainbow_active = 1 

 "c++ highlight
 let g:cpp_posix_standard = 1
 let g:cpp_class_decl_highlight = 1
 let g:cpp_class_scope_highlight = 1
 let c_no_curly_error=1
 "let g:cpp_experimental_simple_template_highlight = 1
 "let g:cpp_member_variable_highlight = 1

 "ALE
 "let g:ale_linters = { 'c++': 'gcc'}
 "let g:ale_linters = { 'python': 'flake8'}
 "let g:ale_sign_column_always = 1
 "let g:ale_set_highlights = 0
 "let g:ale_sign_error = '✗'
 "let g:ale_sign_warning = '⚡'
 "let g:ale_statusline_format = ['✗ %d', '⚡ %d', '✔ OK']
 "let g:ale_echo_msg_error_str = 'E'
 "let g:ale_echo_msg_warning_str = 'W'
 "let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
 "nmap sp <Plug>(ale_previous_wrap)
 "nmap sn <Plug>(ale_next_wrap)
 "nmap <Leader>e :ALEToggle<CR>
 "nmap <Leader>d :ALEDetail<CR>

 "python-mode
 "let g:pymode_python = 'python3'
 "let g:pymode = 1
 "let g:pymode_options = 1

 "--------------------------------
 " coc nvim
 "so ~/.vim/plugged/coc.nvim/user.config/conf.vim 

 "set signcolumn=no
