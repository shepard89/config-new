" Base
set shell=/bin/bash
set nocompatible
scriptencoding utf-8
set t_Co=256

set runtimepath+=$HOME/vim-env/repos/github.com/Shougo/dein.vim

if dein#load_state(expand('$HOME/vim-env'))
  call dein#begin(expand('$HOME/vim-env'))

  " Let Dein manage himself
  call dein#add('Shougo/dein.vim')

  call dein#add('Shougo/vimproc', {'build': 'make'})

  " Linting for vim config
  call dein#add('syngan/vim-vimlint')

  " Git wrapper
  call dein#add('tpope/vim-fugitive')

  " Some support functions used by delimitmate, and snipmate
  call dein#add('vim-scripts/tlib')

  " Snippets engine with good integration with neocomplcache
  call dein#add('Shougo/neosnippet')
  call dein#add('Shougo/neosnippet-snippets')
  " File system explorer
  call dein#add('scrooloose/nerdtree')

  " Color scheme
  call dein#add('altercation/vim-colors-solarized')
  call dein#add('wellsjo/wells-colorscheme.vim')
  call dein#add('morhetz/gruvbox')

  " Fix-up for dot command behavior
  call dein#add('tpope/vim-repeat')

  " Statusline/ruler
  call dein#add('bling/vim-airline')
  " Airline themes
  call dein#add('vim-airline/vim-airline-themes')

  " Plugin for changing cursor when entering in insert mode
  " looks like it works fine with iTerm Konsole adn xerm
  " Applies only on next vim launch after NeoBundleInstall
  call dein#add('jszakmeister/vim-togglecursor')

  " Emmet
  call dein#add('mattn/emmet-vim')

  " Highlights the matching HTML tag when the cursor is positioned on a tag.
  call dein#add('gregsexton/MatchTag')
  " HTML5 + inline SVG omnicomplete funtion, indent and syntax
  call dein#add('othree/html5.vim')
  " Yate template support
  " call dein#add('maksimr/vim-yate')
  " Jade
  " call dein#add('digitaltoad/vim-pug')
  " EJS syntax
  " call dein#add('nikvdp/ejs-syntax')

  " CSS3
  call dein#add('hail2u/vim-css3-syntax')
  " CSSComb
  " call dein#add('csscomb/vim-csscomb')
  " Stylus
  " call dein#add('wavded/vim-stylus')
  call dein#add('cakebaker/scss-syntax.vim')

  " Vue
  call dein#add('posva/vim-vue')
  " JS Syntax
  call dein#add('jelera/vim-javascript-syntax')
  " JSX Syntax
  " call dein#add('mxw/vim-jsx')
  " TSX Syntax
  " call dein#add('ianks/vim-tsx')
  " JS Smart indent
  call dein#add('lukaszb/vim-web-indent')
  " Autoclose pair characters
  call dein#add('Raimondi/delimitMate')
  " Typescript
  call dein#add('leafgarland/typescript-vim')
  " React
  call dein#add('vim-scripts/vim-jsx-pretty')

  " Smart comments
  call dein#add('tomtom/tcomment_vim')

  " Static linting
  call dein#add('scrooloose/syntastic')
  " local eslint config
  call dein#add('mtscout6/syntastic-local-eslint.vim')

  " Add usefull hotkey for operation with surroundings
  " cs{what}{towhat} - inside '' or [] or something like this allow
  " change surroundings symbols to another
  " and ds{what} - remove them
  call dein#add('tpope/vim-surround')

  " Code complete
  call dein#add('Shougo/neocomplete.vim')

  " Most recent files source for unite
  call dein#add('Shougo/neomru.vim')

  " Plugin for chord mappings
  call dein#add('kana/vim-arpeggio')

  " EasyMotion
  " call dein#add('Lokaltog/vim-easymotion')

  " Control P
  call dein#add('kien/ctrlp.vim')

  " CtrlP-Funky
  call dein#add('tacahiroy/ctrlp-funky')

  " Ack
  call dein#add('mileszs/ack.vim')

  " CleverTab
  call dein#add('neitanod/vim-clevertab')

  " Vim argwrap
  call dein#add('FooSoft/vim-argwrap')

  " Go lang
  call dein#add('fatih/vim-go')

  " Prettier
  call dein#add('prettier/vim-prettier')

  " C#
  call dein#add('OrangeT/vim-csharp')
  call dein#add('OmniSharp/omnisharp-vim')
  " call dein#add('juancampa/solvent.vim')

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

" General
set autoread
set ttyfast
set encoding=utf-8
set termencoding=utf-8
set noshowmode
set title
set novisualbell
set shortmess=atI
set list
set listchars=tab:→\ ,trail:·,extends:⋯,precedes:⋯,nbsp:~
set scrolloff=10
set sidescrolloff=10
set whichwrap=b,s,<,>,[,],
set showcmd
set laststatus=2
set nostartofline
set nowrap
set number
set rnu
set cursorline
set colorcolumn=80,120
set autoindent
set smartindent
" set expandtab
set smarttab
set shiftwidth=2
set tabstop=2
set softtabstop=2
set shiftround
set gdefault
set hlsearch
set ignorecase
set smartcase
set incsearch
nnoremap <silent> <cr> :nohlsearch<cr><cr>
set showmatch
set matchpairs+=<:>
nmap <S-u> :tabprevious<CR>
nmap <S-i> :tabnext<CR>
nmap <S-j> :tabmove -1<CR>
nmap <S-k> :tabmove +1<CR>
nmap <C-t> :tabnew<CR>
set wildmenu
set wildcharm=<TAB>
let g:javaScript_fold=1
set foldlevelstart=99
set nofoldenable
set backspace=indent,eol,start
set pastetoggle=<leader>p
set iskeyword+=-
set nobackup
set nowritebackup
set noswapfile
set noeol
set diffopt=filler
set diffopt+=horizontal
set diffopt+=iwhite

" Hotkeys
nmap <silent><leader>to :tabnew .<CR>
nmap <leader>s :%s//<left>
vmap <leader>s :s//<left>
nmap <leader>w <C-w>w
nmap s <Plug>(easymotion-s)
inoremap {<cr> {<cr>}<c-o>O<tab>
inoremap [<cr> [<cr>]<c-o>O<tab>
inoremap (<cr> (<cr>)<c-o>O<tab>
let g:ctrlp_map = '<leader>t'
let g:ctrlp_cmd = 'CtrlP'
set wildignore+=*.o,*.obj,.git,node_modules,dist,coverage
nnoremap <Leader>r :CtrlPFunky<Cr>
nnoremap <silent> <F5> :vertical resize -5<CR>
nnoremap <silent> <F6> :vertical resize +5<CR>
nnoremap <silent> <F7> :resize -5<CR>
nnoremap <silent> <F8> :resize +5<CR>
nnoremap <C-j> <C-W><C-J>
nnoremap <C-k> <C-W><C-K>
nnoremap <C-l> <C-W><C-L>
nnoremap <C-h> <C-W><C-H>
set pastetoggle=<F4>
set splitbelow
set splitright
cnoreabbrev qq tabclose
set clipboard=unnamed

" NerdTree
let g:NERDTreeShowHidden=1
let g:NERDTreeMinimalUI=1
let g:NERDTreeDirArrowExpandable = '➜'
let g:NERDTreeDirArrowCollapsible = '⬆'
nmap <silent> <leader>f :NERDTreeFind<CR>
map <silent> <C-n> :NERDTreeToggle<CR>

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_shell = "/bin/sh"
let g:syntastic_aggregate_errors=1
" let g:syntastic_html_checkers = ['validator']
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_typescript_checkers = ['tslint', 'tsc']

let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1
let g:syntastic_enable_highlighting=1

let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"

let g:syntastic_always_populate_loc_list=0
let g:syntastuc_auto_loc_list=0
let g:tsuquyomi_disable_quiclfix=1

" let g:syntastic_filetype_map = { "json": "javascript"}
" let syntastic_mode_map = { 'passive_filetypes': ['html'] }

let g:jsx_ext_required = 0

nmap <silent> <leader>ll :Errors<cr>
nmap <silent> { :lprev<cr>
nmap <silent> } :lnext<cr>
nmap <silent> <leader>{ :lfirst<cr>

autocmd BufNewFile,BufRead *.styl set filetype=css
autocmd BufNewFile,BufRead *.ts set filetype=typescript
" autocmd BufNewFile,BufRead *.vue set filetype=html

autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow

" DelimitMate
let g:delimitMate_expand_cr = 1
let g:delimitMate_expand_space = 1

" Vim-airline
let g:airline_theme='understated'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#whitespace#mixed_indent_algo = 2
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_section_y = ''
let g:airline_section_x = ''
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" Neocomplete
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#max_list = 10
let g:neocomplete#max_keyword_width = 80
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#enable_auto_select = 1
let g:neocomplete#disable_auto_complete = 1
inoremap <expr><C-e> neocomplete#undo_completion()
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType typescript :set makeprg=tsc
inoremap <expr><Left>  neocomplete#close_popup() . "\<Left>"
inoremap <expr><Right> neocomplete#close_popup() . "\<Right>"
inoremap <expr><Up>    neocomplete#close_popup() . "\<Up>"
inoremap <expr><Down>  neocomplete#close_popup() . "\<Down>"
set completeopt-=preview
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }


" Colorscheme
set background=dark
colorscheme gruvbox
let g:gruvbox_contrast_dark="soft"
let g:gruvbox_termcolors=256
highlight ColorColumn ctermbg=8

" CleverTab
inoremap <silent><tab> <c-r>=CleverTab#Complete('start')<cr>
                      \<c-r>=CleverTab#Complete('tab')<cr>
                      \<c-r>=CleverTab#Complete('keyword')<cr>
                      \<c-r>=CleverTab#Complete('omni')<cr>
                      \<c-r>=CleverTab#Complete('stop')<cr>
inoremap <silent><s-tab> <c-r>=CleverTab#Complete('prev')<cr>

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" Ack
ca ack Ack!
ca Ack Ack!
let g:ackhighlight=1
if executable('ag')
    let g:ackprg = 'ag -S --nogroup --nocolor --ignore vendors --ignore www --ignore tests'
endif

" Vim-argwrap
nnoremap <silent> <leader>a :ArgWrap<CR>
au BufRead,BufNewFile *.go let b:argwrap_tail_comma = 1

" Solarized
" if You have problem with background, uncomment this line
" let g:solarized_termtrans=1
let g:solarized_termcolors=256

" Fugitive
nmap <silent> <leader>b :.Gblame<cr>
vmap <silent> <leader>b :Gblame<cr>
nmap <silent> <leader>gst :Gstatus<cr>
nmap <silent> <leader>gw :Gwrite<cr>
nmap <silent> <leader>gd :Gdiff<cr>
nmap <silent> <leader>gc :Gcommit<cr>
nmap <silent> <leader>gca :Gcommit -a<cr>
nmap <silent> <leader>gcf :Gcommit -a --amend<cr>

" Emmet
let g:user_emmet_leader_key = '<C-F>'
let g:user_emmet_settings = {
\  'vue' : {
\      'extends' : 'css',
\  },
\}

" Vim Vue.js
let g:vue_disable_pre_processors=1

" NeoSnippet
" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

" Enable snipMate compatibility feature.
" let g:neosnippet#enable_snipmate_compatibility = 1

" Tell Neosnippet about the other snippets
let g:neosnippet#snippets_directory='~/vim-env/snippets/'

" C# server https://github.com/OmniSharp/omnisharp-vim
" let g:OmniSharp_server_stdio = 1
" let g:OmniSharp_server_use_mono = 1
let g:OmniSharp_highlight_types = 2
let g:OmniSharp_timeout = 5
let g:ale_linters = { 'cs': ['OmniSharp'] }

augroup omnisharp_commands
    autocmd!

    " Show type information automatically when the cursor stops moving
    autocmd CursorHold *.cs call OmniSharp#TypeLookupWithoutDocumentation()

    " The following commands are contextual, based on the cursor position.
    autocmd FileType cs nnoremap <buffer> gd :OmniSharpGotoDefinition<CR>
    autocmd FileType cs nnoremap <buffer> <Leader>fi :OmniSharpFindImplementations<CR>
    autocmd FileType cs nnoremap <buffer> <Leader>fs :OmniSharpFindSymbol<CR>
    autocmd FileType cs nnoremap <buffer> <Leader>fu :OmniSharpFindUsages<CR>

    " Finds members in the current buffer
    autocmd FileType cs nnoremap <buffer> <Leader>fm :OmniSharpFindMembers<CR>

    autocmd FileType cs nnoremap <buffer> <Leader>fx :OmniSharpFixUsings<CR>
    autocmd FileType cs nnoremap <buffer> <Leader>tt :OmniSharpTypeLookup<CR>
    autocmd FileType cs nnoremap <buffer> <Leader>dc :OmniSharpDocumentation<CR>
    autocmd FileType cs nnoremap <buffer> <C-\> :OmniSharpSignatureHelp<CR>
    autocmd FileType cs inoremap <buffer> <C-\> <C-o>:OmniSharpSignatureHelp<CR>

    " Navigate up and down by method/property/field
    autocmd FileType cs nnoremap <buffer> <C-k> :OmniSharpNavigateUp<CR>
    autocmd FileType cs nnoremap <buffer> <C-j> :OmniSharpNavigateDown<CR>

    " Find all code errors/warnings for the current solution and populate the quickfix window
    autocmd FileType cs nnoremap <buffer> <Leader>cc :OmniSharpGlobalCodeCheck<CR>
augroup END

" Contextual code actions (uses fzf, CtrlP or unite.vim when available)
nnoremap <Leader><Space> :OmniSharpGetCodeActions<CR>
" Run code actions with text selected in visual mode to extract method
xnoremap <Leader><Space> :call OmniSharp#GetCodeActions('visual')<CR>

" Rename with dialog
nnoremap <Leader>nm :OmniSharpRename<CR>
nnoremap <F2> :OmniSharpRename<CR>
" Rename without dialog - with cursor on the symbol to rename: `:Rename newname`
command! -nargs=1 Rename :call OmniSharp#RenameTo("<args>")

nnoremap <Leader>cf :OmniSharpCodeFormat<CR>

" Start the omnisharp server for the current solution
nnoremap <Leader>ss :OmniSharpStartServer<CR>
nnoremap <Leader>sp :OmniSharpStopServer<CR>

" Enable snippet completion
" let g:OmniSharp_want_snippet=1
