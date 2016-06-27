" load pathogen stuff
execute pathogen#infect()
filetype plugin indent on

syntax on           " enable syntax highlighting
set number          " enable line numbers
set colorcolumn=80  " highlight column 80

set incsearch       " enable incremental search
set hlsearch        " enable search highlighting
set ignorecase      " case-insensitive searches
set smartcase       " use smart-case for searches

set hidden          " allow 'background'ing of unwritten buffers
set backspace=2     " allow 'backspace' to cross line breaks, indent, etc
set nofoldenable    " disable code folding
set nobackup        " don't backup files
set nowritebackup   " don't create backups on write
set noswapfile      " don't use swapfiles

set winwidth=90     " minimum width (columns) for active pane
set winminwidth=15  " minimum width (columns) for inactive pane
set scrolloff=5     " offset scroll to show at least 5 lines around cursor

set laststatus=2    " always show status line
set ruler           " show 'ruler' in bottom-right (line, col, %)

" show tabs and trailing whitespace
set list listchars=tab:»\ ,trail:·

" set tabs to be 2 spaces by default
set textwidth=0 tabstop=2 shiftwidth=2 softtabstop=2
set smartindent expandtab

autocmd Filetype swift setlocal noexpandtab " use tabs for Swift files

" insert key bindings: Ctrl-L for =>, Ctrl-K for ->
imap <C-L> <SPACE>=><SPACE>
imap <C-K> ->

" comma or backslash as leader
nmap , \

" bind captal-Y as 'yank to end of line'
map Y y$

" bind g/ to bring up a git grep prompt
nmap g/ :Ggrep<space>
" bind g* to git grep the current word
nmap g* :Ggrep <C-R><C-W>
" bind gn and gp to traverse the quickfix pane
nmap gn :cnext<CR>
nmap gp :cprev<CR>
" bind gq to close and gl to open the quickfix pane
nmap gq :ccl<CR>
nmap gl :cwindow<CR>>
autocmd QuickFixCmdPost *grep* cwindow

" trim trailing whitespace
function TrimWhitespace()
  %s/\s*$//
  ''
endfunction

command -nargs=0 TrimWhitespace :call TrimWhitespace()
nnoremap <silent> <Leader>W :TrimWhitespace<CR>
nnoremap <silent> <Leader>N :EasyTree<CR>

" themes
let g:airline_powerline_fonts = 1
colorscheme bp-light

"" plugins and plugin options
" " " " " "
" CTRL-P
" " " " " "

" bring up ctrl-p file-finder with ctrl-f
let g:ctrlp_map = '<c-f>'

" fuzzy window controls: ctrl-j/k for history and ctrl-n/p for selection
let g:ctrlp_prompt_mappings = {
      \ 'PrtSelectMove("j")':   ['<c-n>', '<down>'],
      \ 'PrtSelectMove("k")':   ['<c-p>', '<up>'],
      \ 'PrtHistory(-1)':       ['<c-j>'],
      \ 'PrtHistory(1)':        ['<c-k>']}

" use git ls-files, if present, for speed
let g:ctrlp_user_command = [
      \ '.git',
      \ 'cd %s && git ls-files . -co --exclude-standard',
      \ 'find %s -type f']
