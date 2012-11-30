" Filetypes
au BufRead,BufNewFile *.pde set filetype=arduino
au BufRead,BufNewFile *.ino set filetype=arduino

" Use the below highlight group when displaying bad whitespace is desired
highlight BadWhitespace ctermbg=red guibg=red

" Automatically indent based on file type: ``filetype indent on``
filetype plugin indent on

set autoindent
syntax on
set incsearch
set hlsearch
set number
if has('mouse')
  set mouse=a
  set ttymouse=xterm2
endif
set ts=2
set sw=2
set nowrap
set smartindent
set autoindent
set cindent
set cursorline
set expandtab
set wildmenu
set showmatch   " Show matching parens as they come up
set ruler       " Show the column number in the status bar
set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)
set shortmess+=A " ignore annoying swapfile messagesÂ
set shortmess+=I " no splash screen
colorscheme elflord

if exists('+colorcolumn')
  set cc=80 " character color after 80 characters
endif

" switch tabs
map <c-j> gT
map <c-k> gt
map <c-h> gT
map <c-l> gt

" quick edit mode escape
imap jj <Esc>
set backspace=2 " make the backspace key work

" turn off highlight when hitting return
:nnoremap <CR> :nohlsearch<cr>

" Insert a hash rocket with <c-l>
imap <c-l> <space>=><space>

let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=1

let g:CommandTMaxFiles = 30000

nnoremap <F8> :call ToggleMouse()<CR>
function! ToggleMouse()
  if &mouse == 'a'
    set mouse=
    echo "Mouse usage disabled"
  else
    set mouse=a
    echo "Mouse usage enabled"
  endif
endfunction
nnoremap <F7> :set nu!<CR>

set backupdir=/tmp
set directory=/tmp

" pathogen stuff
call pathogen#infect()

" common pressed-shift-too-long typos
cabbrev Q q
cabbrev Wq wq
cabbrev W w
cabbrev Qa qa
cabbrev Wqa wqa
cabbrev Set set

" wean myself off the sauce
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MULTIPURPOSE TAB KEY
" Indent if we're at the beginning of a line. Else, do completion.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction
inoremap <tab> <c-r>=InsertTabWrapper()<cr>
inoremap <s-tab> <c-n>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" RENAME CURRENT FILE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! RenameFile()
    let old_name = expand('%')
    let new_name = input('New file name: ', expand('%'), 'file')
    if new_name != '' && new_name != old_name
        exec ':saveas ' . new_name
        exec ':silent !rm ' . old_name
        redraw!
    endif
endfunction
map <leader>n :call RenameFile()<cr>

autocmd FileType markdown set smartindent
autocmd FileType markdown set tabstop=2
autocmd FileType markdown set shiftwidth=2
autocmd FileType markdown set textwidth=80

nmap <leader>rh :%s/\v(:)@<!:([a-zA-Z_][a-zA-Z_0-9]*)(\s*)\=\>\s?/\2:\3/gc<cr>
