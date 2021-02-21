colors ir_black

call plug#begin()
Plug 'preservim/NERDTree'
call plug#end()

" some common helpful settings "
set nomodeline
set nocompatible
set history=50
set wildmode=list:longest,full
set notitle
set number
set showmode
set showcmd
set ruler
" set ls=2
set incsearch
set ignorecase
set smartcase
set gdefault

set tabstop=2
set shiftwidth=2
set shiftround
set expandtab
set autoindent

set dictionary=/usr/share/dict/words
map <F7> :set complete+=k<CR>
map <S-F7> :set complete-=k<CR>

if &term == "xterm-color"
  fixdel
endif

"stop recording accidentally"
nmap q :

" normally don't automatically format `text' as it is typed, IE only do this "
" with comments, at 79 characters: "
set formatoptions-=t
set textwidth=0

filetype on
autocmd!

" in human-language files, automatically format everything at 72 chars: "
autocmd FileType make set noexpandtab shiftwidth=4

" when using list, keep tabs at their full width and display 'arrows': "
execute 'set listchars+=tab:' . nr2char(187) . nr2char(183)

" Wrap visual selections with chars "
:vnoremap ( "zdi^V(<C-R>z)<ESC>
:vnoremap { "zdi^V{<C-R>z}<ESC>
:vnoremap [ "zdi^V[<C-R>z]<ESC>
:vnoremap ' "zdi'<C-R>z'<ESC>
:vnoremap " "zdi^V"<C-R>z^V"<ESC>

" * Keystrokes -- Formatting "
" have Q reformat the current paragraph (or selected text if there is any): "
nnoremap Q gqap
vnoremap Q gq
" have the usual indentation keystrokes still work in visual mode: "
vnoremap <C-T> >
vnoremap <C-D> <LT>
vmap <Tab> <C-T>
vmap <S-Tab> <C-D>
" have Y behave analogously to D and C rather than to dd and cc "
noremap Y y$

" * Keystrokes -- Insert Mode "
" allow <BkSpc> to delete line breaks, beyond the start of the current insertion, and over indentations: "
set backspace=eol,start,indent
" have <Tab> (and <Shift>+<Tab> where it works) change the level of indentation: "
" inoremap <Tab> <C-T>
" inoremap <S-Tab> <C-D>
" [<Ctrl>+V <Tab> still inserts an actual tab character.] "


" abbreviations / spelling errors "
abbreviate wierd weird
abbreviate restaraunt restaurant
iabbrev hse he/she

syntax on

if $VIM_CRONTAB == "true"
set nobackup
set nowritebackup
endif

