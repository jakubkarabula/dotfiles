call plug#begin('~/.vim/plugged')

Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-fugitive'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'w0rp/ale'
Plug 'honza/vim-snippets'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-surround'
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'mhinz/vim-startify'
Plug 'christoomey/vim-tmux-navigator'
Plug 'Yggdroot/indentLine'
Plug 'jiangmiao/auto-pairs'
Plug 'editorconfig/editorconfig-vim'
"Plug 'joshdick/onedark.vim'
Plug 'matze/vim-move'
Plug 'tpope/vim-repeat'
Plug 'easymotion/vim-easymotion'
Plug 'alvan/vim-closetag'
Plug 'ryanoasis/vim-devicons'
Plug 'liuchengxu/vista.vim'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --tern-completer' }
Plug 'ternjs/tern_for_vim'
Plug 'ap/vim-css-color'
Plug 'yuttie/comfortable-motion.vim'
Plug 'zivyangll/git-blame.vim'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'janko/vim-test'
Plug 'voldikss/vim-floaterm'
Plug 'tomtom/tcomment_vim'
Plug 'ngmy/vim-rubocop'
Plug 'ruanyl/vim-gh-line'
Plug 'unblevable/quick-scope'
Plug 'wsdjeg/FlyGrep.vim'
Plug 'prettier/vim-prettier'

" Themes
Plug 'sainnhe/archived-colors', { 'as': 'cryslominsa' }
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'flrnd/candid.vim', { 'as': 'candid' }
Plug 'arcticicestudio/nord-vim'
Plug 'morhetz/gruvbox'
Plug 'yorickpeterse/happy_hacking.vim'
Plug 'artanikin/vim-synthwave84'
Plug 'wadackel/vim-dogrun'
Plug 'victorze/foo'
Plug 'bluz71/vim-nightfly-guicolors'
Plug 'pgavlin/pulumi.vim'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'habamax/vim-gruvbit'

call plug#end()

"Custom Config
set encoding=utf-8
set fileencoding=utf-8
set number
set mouse=a
syntax on
set splitright
set splitbelow
set backupcopy=yes
set signcolumn=yes
set relativenumber

" Enable true color
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

" colorscheme
colorscheme gruvbit

"used for autocomplete when adding dash
set iskeyword+=\-

hi Comment guifg=#808080
hi CursorLine guibg=#808080 guifg=#FFFAFA
" set color split line

set fillchars+=vert:\|
hi VertSplit ctermbg=NONE guibg=NONE

set fillchars+=fold:· " for folds
" hi VertSplit guifg=#F08080
" Directory color
" hi Directory guifg=#F08080

" -- FOLDING --
set foldmethod=syntax "syntax highlighting items specify folds
set foldcolumn=1 "defines 1 col at window left, to indicate folding
let javaScript_fold=1 "activate folding by JS syntax
set foldlevelstart=99 "start file with all folds opened

"scrooloose/nerdtree
let NERDTreeMinimalUI=1
let NERDTreeShowHidden=1
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
" open close icon
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''
nmap <Leader>n :NERDTreeToggle<CR>
nmap <Leader>m :NERDTreeFind<CR>

" find all TODOs in the project
nmap <Leader>T :Ag<CR>TODO

" Open fzf
nmap <Leader>g :Ag<CR>

" Search for selection
nmap <Leader>j y/p

" Clean highlight
nmap <Leader>h :noh<CR>

" tabs
set expandtab
set shiftwidth=2
set softtabstop=2

"fzf
nmap <c-p> :GFiles<CR>

"FlyGrep
nmap <Leader>; :FlyGrep<CR>

"matze/vim-move
let g:move_key_modifier = 'S'

"alvan/vim-closetag

" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.js'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.js,*.tsx'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml,jsx'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml,jsx'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" dict
" Disables auto-close if not in a "valid" region (based on filetype)
"
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ }

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
"
let g:closetag_close_shortcut = '<leader>>'


"vim-airline/vim-airline-themes
let g:airline_theme='fruit_punch'

"ryanoasis/vim-devicons

let g:DevIconsEnableFoldersOpenClose = 1
"let g:WebDevIconsUnicodeDecorateFolderNodesDefaultSymbol = ' '
"let g:DevIconsDefaultFolderOpenSymbol = ' '

"vim-airline/vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.maxlinenr = ''
" powerline symbols
let g:airline_left_sep = ""
let g:airline_right_sep = ""
let g:airline_symbols.branch = 'שׂ'
let g:airline_symbols.readonly = ''

"neoclide/coc.nvim

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

"coc.nvim extension settings
command! -nargs=0 Format :call CocAction('format')
"set formatter
nmap <leader>f :Format<CR>
"display linting error
nmap <leader>l :CocList diagnostics<CR>

"w0rp/ale
" let g:ale_lint_on_text_changed = 'never'
" let g:ale_lint_on_insert_leave = 0

" let g:ale_fixers = {
" \   '*': ['remove_trailing_lines', 'trim_whitespace'],
" \   'javascript': ['prettier'],
" \   'javascript.jsx': ['prettier'],
" \   'typescript': ['prettier'],
" \   'typescript.tsx': ['prettier'],
" \   'python': ['yapf'],
" \   'json': ['prettier'],
" \   'html': ['prettier'],
" \   'css': ['prettier', 'stylelint'],
" \   'scss': ['prettier', 'stylelint'],
" \}
" let g:ale_linters = {
" \   'javascript': ['eslint'],
" \   'javascript.jsx': ['eslint'],
" \   'typescript': ['eslint'],
" \   'typescript.tsx': ['eslint'],
" \   'python': ['flake8'],
" \   'json': ['jsonlint'],
" \   'html': ['htmlhint'],
" \   'css': ['stylelint'],
" \   'scss': ['stylelint'],
" \}
let g:ale_fix_on_save = 1
let g:ale_echo_msg_error_str = 'e'
let g:ale_echo_msg_warning_str = 'w'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_open_list = 1
let g:ale_list_window_size = 5
" custom error sign
let g:ale_sign_error = '🐞'
let g:ale_sign_warning = '👮'
" highlight ALEErrorSign guifg=#FF0000
highlight ALEWarningSign guifg=#FFA500

let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint'],
\   'javascript.jsx': ['eslint'],
\   'json': ['prettier']
\}

let g:ale_linters = {
\   'javascript': ['eslint'],
\   'javascript.jsx': ['eslint'],
\   'ruby': ['rubocop'],
\}

nmap <Leader>l :ALEFix<CR>

" autoclose loclist when close buffer
augroup CloseLoclistWindowGroup
  autocmd!
  autocmd QuitPre * if empty(&buftype) | lclose | endif
augroup END

"scrooloose/nerdcommenter

let NERDDefaultAlign="left"
let NERDSpaceDelims=1

" mhinz/vim-startify

let g:startify_custom_header = [
            \ '                                  ',
            \ '            __                  ',
            \ '    __  __ /\_\    ___ ___       ',
            \ '   /\ \/\ \\/\ \ /'' __` __`\  ',
            \ '   \ \ \_/ |\ \ \/\ \/\ \/\ \    ',
            \ '    \ \___/  \ \_\ \_\ \_\ \_\    ',
            \ '     \/__/    \/_/\/_/\/_/\/_/    ',
            \ ]

"liuchengxu/vista.vim
let g:vista_default_executive = 'coc'
nmap <Leader>v :Vista!!<CR>

" Buffers management

nnoremap <C-m> :bnext<CR>
nnoremap <C-n> :bprevious<CR>
nnoremap <C-b> :bd<CR>
nnoremap <Leader>l :vnew<CR>
nnoremap <Leader>k :new<CR>

" Floaterm
let g:floaterm_position = 'bottomleft'
let g:floaterm_background = '#282A36'
let g:floaterm_winblend = 5

nnoremap <Leader>t :FloatermToggle<CR>

" BufOnly.vim  -  Delete all the buffers except the current/named buffer.
"
" Copyright November 2003 by Christian J. Robinson <infynity@onewest.net>
"
" Distributed under the terms of the Vim license.  See ":help license".
"
" Usage:
"
" :Bonly / :BOnly / :Bufonly / :BufOnly [buffer]
"
" Without any arguments the current buffer is kept.  With an argument the
" buffer name/number supplied is kept.

command! -nargs=? -complete=buffer -bang Bonly
    \ :call BufOnly('<args>', '<bang>')
command! -nargs=? -complete=buffer -bang BOnly
    \ :call BufOnly('<args>', '<bang>')
command! -nargs=? -complete=buffer -bang Bufonly
    \ :call BufOnly('<args>', '<bang>')
command! -nargs=? -complete=buffer -bang BufOnly
    \ :call BufOnly('<args>', '<bang>')

function! BufOnly(buffer, bang)
	if a:buffer == ''
		" No buffer provided, use the current buffer.
		let buffer = bufnr('%')
	elseif (a:buffer + 0) > 0
		" A buffer number was provided.
		let buffer = bufnr(a:buffer + 0)
	else
		" A buffer name was provided.
		let buffer = bufnr(a:buffer)
	endif

	if buffer == -1
		echohl ErrorMsg
		echomsg "No matching buffer for" a:buffer
		echohl None
		return
	endif

	let last_buffer = bufnr('$')

	let delete_count = 0
	let n = 1
	while n <= last_buffer
		if n != buffer && buflisted(n)
			if a:bang == '' && getbufvar(n, '&modified')
				echohl ErrorMsg
				echomsg 'No write since last change for buffer'
							\ n '(add ! to override)'
				echohl None
			else
				silent exe 'bdel' . a:bang . ' ' . n
				if ! buflisted(n)
					let delete_count = delete_count+1
				endif
			endif
		endif
		let n = n+1
	endwhile

	if delete_count == 1
		echomsg delete_count "buffer deleted"
	elseif delete_count > 1
		echomsg delete_count "buffers deleted"
	endif

endfunction

" Start autocompletion after 4 chars
let g:ycm_min_num_of_chars_for_completion = 3
let g:ycm_min_num_identifier_candidate_chars = 3
let g:ycm_enable_diagnostic_highlighting = 0
" Don't show YCM's preview window [ I find it really annoying ]
set completeopt-=preview
let g:ycm_add_preview_to_completeopt = 0

nmap <Leader>x :Bonly<CR>

nnoremap <Leader>s :<C-u>call gitblame#echo()<CR>

" Set clipboard to main computer clipboard
set clipboard=unnamedplus

" Set case insensitive by default
set ic

" Set delete to d and null buffer
nnoremap x "_x
nnoremap d "_d
nnoremap D "_D
vnoremap d "_d

" Set cut to leader+d
nnoremap <leader>d ""d
nnoremap <leader>D ""D

nnoremap , 10j
nnoremap . 10k

" Copy current file path to clipboard
nnoremap <Leader>c :let @+=expand('%:p')<CR>

" Resize
nmap <silent> <Leader>0 :vertical resize -5<CR>
nmap <silent> <Leader>7 :vertical resize +5<CR>
nmap <silent> <Leader>9 :resize -5<CR>
nmap <silent> <Leader>8 :resize +5<CR>

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

let @q = 'macro contents'
