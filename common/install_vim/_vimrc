"----------------------------------------------------------------------------
" .vimrc
"
" Version: 1.0 - 25 NOV 2012
" Maintainer: Luke Ekkizogloy
"
"----------------------------------------------------------------------------
" History:
"   v1.0    - Luke Ekkizogloy
"             Ported from old working .vimrc
""             And including some of http://amix.dk
"----------------------------------------------------------------------------


set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'

" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}


Plugin 'google/vim-colorscheme-primary'

Plugin 'rafi/awesome-vim-colorschemes'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line




"----------------------------------------------------------------------------
"  Configurations
"----------------------------------------------------------------------------
syntax enable



"behave xterm                            " BEHAVE sets xterm behavior
"(set above with Vundle)
"set nocompatible                        " nocompatible: use Vim defaults (do this first)
"filetype plugin on
"filetype indent on

set path=$PWD/**                        " Set vim search path to current directory and all subdirectories.

set shell=bash                          " shell: execute commands with the specific shell
set history=700                         " history: lines of command line history
set autoread                            " autoread: reread a file that was changed externally

set tags=TAGS,../TAGS,../../TAGS,../../../TAGS,../../../../TAGS,~/arch/TAGS   " TAGS: Sets files used to look for TAGS
set virtualedit=all                     " virtualedit: Allows cursor to be positioned where there is no character
set wildmode=longest,list               " wildmode: complete longest common string, then list alternatives
set diffopt=icase,iwhite,filler,context:8   " diffopt: diff options
set list
set listchars=tab:»·,trail:·,extends:>,precedes:<,conceal:x,nbsp:~ " listchars: displays tab as a >>. and trailing chars as .
set esckeys                             " esckeys: Allows <ESC> keys to work in insert mode
set hidden                              " hidden: Allow hidden Buffers
set showcmd                             " showcmd: Shows partial commands
set wildmenu                            " wildmenu: Allows advanced command completion
set noerrorbells                        " noerrorbells: disable error bells
set nostartofline                       " nostartofline:
set suffixes=.bak,~,.o,.h,.info,.swp,.obj,.orig,.old,.new,.pyc " suffixes: ignore these suffixes when auto completion
set wildignore=*.o,*~,*.pyc
set shortmess=at                        " shortmess: shorten message to minimize scrolling
set whichwrap+=<,>,h,l                  " whichwrap: allow h,l and arrows to line wrap
set nowrap                              " nowrap: turn off line wrapping
set tabstop=4                           " tabstop: number of spaces a tab generates
set shiftwidth=4                        " shiftwidth: number of spaces for autoindent, <<, & >>
set softtabstop=0                       " softtabstop: turned off
set expandtab                           " expandtab: expand tab to spaces
set nosmarttab                          " nosmarttab: only insert tabstop or softtabstop blanks
set smartindent                         " smartindent: automatically indents in code
set autoindent                          " autoindent: always set autoindenting on
set backspace=indent,eol,start          " backspace: allow backspacing over everything in insert mode
set nobackup                            " nobackup: don't keep a backup file
set writebackup                         " writebackup: backup file only when writing
set viminfo=%,'50,<1000,:100,h          " viminfo: keep viminfo file
set lines=75                            " lines: display 75 lines on the screen
set ignorecase                          " ignorecase: ignores case in searches
set smartcase                           " smartcase: ignores case in searches except if there is a capital letter
set hlsearch                            " hlsearch: Enables search highlighting
set incsearch                           " incsearch: Shows where the pattern matches
set showmatch                           " showmatch: show matching brackets
set matchtime=2                         " matchtime: number of tenths of a second to show match
set scrolloff=7                         " Sets the number of lines to keep above/below cursor
set textwidth=80                        " textwidth: Number of columns

" Display Options "
set ruler                               " ruler: show the cursor position all the time
set statusline=\ %{HasPaste()}%<%F\ %h%m%r%w%=%12.(%l/%L%)\ %4v " Status line without percentage
set formatoptions=tcqn                  " formatoptions: Sets default options for automatically formatting
set laststatus=2                        " laststatus: always display status line
set titlestring=%t%=\ \ \ \ \ \ (%n,%{bufnr('$')})\ \ <%{expand('%:p:h')==getcwd()}>%<\ \ %{expand('%:p:h')}
set guicursor=a:blinkon0                " guicursor: turn off blinking
set isfname=@,32,48-57,/,.,-,_,+,,,$,:,@-@,!,\\,~   " isfname: defines what a file name is
set sessionoptions=buffers,winsize,options,help,blank,resize


" GUI Options "
"set guifont=SourceCodePro-Medium        " guifont: Sets the font that we want to use
"
if has('unix')
    set guifont="Source Code Pro Medium 10"  " guifont: Sets the font that we want to use
else
    set guifont=SourceCodePro-Medium        " guifont: Sets the font that we want to use
endif

set guioptions=agimLrte                  " guioptions:
set mousefocus
set mousehide
set mouse=nv


"----------------------------------------------------------------------------
"  KEY MAPPINGS
"----------------------------------------------------------------------------

" Map a leader character to build key mappings
let mapleader = ","
let g:mapleader = ","

" vimrc editing shortcuts
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :source $MYVIMRC<CR>

" Make p in Visual mode replace the selected text with the "" register.
vnoremap <leader>p <Esc>:let current_reg = @"<CR>gvdi<C-R>=current_reg<CR><Esc>

" pressing * or # searches for the current selection
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>

" Move up and down screen lines (useful when wrap is on)
map j gj
map k gk

" Close a buffer
map <leader>bd :Bclose<CR>
" Close all buffers
map <leader>ba :1,1000 bd!<CR>
map <leader>n bn<CR>
map <leader>d :bp\|bd #<CR>


" Disable highlighting when <leader><CR> is pressed
map <silent> <leader><CR> :nohl<CR>

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Tab Mappings
map <leader>tn :tabnew<CR>
map <leader>to :tabonly<CR>
map <leader>tc :tabclose<CR>
map <leader>tm :tabmove

" Makes tab navigation like firefox (keep C-t for tags)
nnoremap <C-S-tab>  :tabprevious<CR>
nnoremap <C-tab>    :tabnext<CR>
nnoremap <C-t>      :tabnew<CR>
inoremap <C-S-tab>  :tabprevious<CR>i
inoremap <C-tab>    :tabnext<CR>i
inoremap <C-r>      :tabnew<CR>

map <C-[> :pop<CR>

" Buffer Navigation
nnoremap <M-N>    :bn<CR>
nnoremap <M-P>    :bp<CR>
nnoremap <M-D>    :bp\|bd #<CR>
if has("mac") || has("macunix")
    nmap <D-N> <M-N>
    nmap <D-D> <M-D>
    nmap <D-P> <M-P>
endif

" Opens a new tab with current buffer's path
map <leader>te :tabedit <c-r>=expand("%:p:h")<CR>/

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<CR>:pwd<CR>


" Specify behavior when switching between buffers
try
    set switchbuf=useopen,usetab,newtab
    set stal=2
catch
endtry

" Autocmd to edit last position when opening a file
autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

" File Write Mapping
" Cleanup file by removing trailing whitespace and retabing the file
map <leader>w :set et<CR>:retab<CR>mw:%s/[\t ]*$//<CR>:nohl<CR>'w:w<CR>

" Move a line of text using ALT+[jk]
nmap <M-j> mz:m+<CR>`z
nmap <M-k> mz:m-2<CR>`z
vmap <M-j> :m'>+<CR>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<CR>`>my`<mzgv`yo`z

if has("mac") || has("macunix")
    nmap <D-j> <M-j>
    nmap <D-k> <M-k>
    vmap <D-j> <M-j>
    vmap <D-k> <M-k>
endif

" Comment a visually selected block of data
"TODO: set this for any comment char ? HOW
"vnoremap <leader>cl :s/^/\"/<CR>:nohl<CR>
"vnoremap <leader>ul :s/^\(\s*\)\"/\1/<CR>:nohl<CR>


" Toggles spell checking
map <leader>ss :setlocal spell!<CR>

" Toggles paste mode
map <leader>pp :setlocal paste!<CR>

" Quickly opens a buffer to scribble on
map <leader>q :e ~/buffer<CR>

" Toggle line numbers
map <leader>ln :setlocal number!<CR>



" insert 1 space
map <C-i> i 

" convert tabs to spaces
map <F1> :set et<CR>:retab<CR>

" convert spaces to tabs
map <F2> :set noet<CR>:retab!<CR>

" Remove trailing whitespace
map <F4> mw:%s/[\t ]*$//<CR>:nohlsearch<CR>'w


"----------------------------------------------------------------------------
" Added Pluggins
"----------------------------------------------------------------------------

" Toggle AutoComplPop
"map <leader>A :AcpDisable<CR>
"map <leader>a :AcpEnable<CR>


" Set colorscheme TODO Insert a toggling function
if has('gui_running')
    set background=dark
    set t_Co=256
    colorscheme PaperColor
else
    set background=dark
endif


"----------------------------------------------------------------------------
" AUTOCMDs
"
" :au[tocmd] [group] {event} {pat} [nested] {cmd}
" Only do this part when compiled with support for autocommands.
"
"----------------------------------------------------------------------------
if has("autocmd")

    " a 3-line comment field and position the cursor on the 2nd
    autocmd BufNewFile,BufRead *.c,*.h,*.C,*.H  imap com<CR> /*<CR>**<CR>*/kA
    " a comment continuation line
    autocmd BufNewFile,BufRead *.c,*.h,*.C,*.H  imap cc<CR>  <CR>**

    " a 3-line comment field and position the cursor on the 2nd
    autocmd BufNewFile,BufRead *.vhd            imap com<CR> --<CR>--<CR>--kA
    " a comment continuation line
    autocmd BufNewFile,BufRead *.vhd            imap cc<CR>  <CR>--

    " Specific
    autocmd BufNewFile,BufRead SConstruct       setf=python
    autocmd BufNewFile,BufRead SConstruct.*     setf=python

    " Text file options
"    autocmd BufNewFile,BufRead *.txt            set spell
"    autocmd BufNewFile,BufRead *.txt            AcpDisable

endif " has("autocmd")


"----------------------------------------------------------------------------
" FUNCTIONS
"----------------------------------------------------------------------------
function! CmdLine(str)
    exe "menu Foo.Bar :" . a:str
    emenu Foo.Bar
    unmenu Foo
endfunction

function! VisualSelection(direction) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", '\\/.*$^~[]')
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'b'
        execute "normal ?" . l:pattern . "^M"
    elseif a:direction == 'gv'
        call CmdLine("vimgrep " . '/'. l:pattern . '/' . ' **/*.')
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    elseif a:direction == 'f'
        execute "normal /" . l:pattern . "^M"
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction

" Returns true if paste mode is enabled.
function! HasPaste()
    if &paste
        return '[PASTE]  '
    en
    return ''
endfunction


" Don't close window, when deleting a buffer
command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
   let l:currentBufNum = bufnr("%")
   let l:alternateBufNum = bufnr("#")

   if buflisted(l:alternateBufNum)
     buffer #
   else
     bnext
   endif

   if bufnr("%") == l:currentBufNum
     new
   endif

   if buflisted(l:currentBufNum)
     execute("bdelete! ".l:currentBufNum)
   endif
endfunction

"-----------------------------------
" Commenting Functions
"-----------------------------------

autocmd FileType * let b:bcb="/* " | let b:ecb=" */" | let b:linec="// "

noremap <leader>cbh <ESC>:call CommentBlock(line("'<"),col("'<"),line("'>"),col("'>"),b:bcb,b:ecb)<CR>
noremap <leader>clh <ESC>:call CommentLines(line("'<"),line("'>"),col("'<"),b:linec)<CR>
noremap <leader>cbs <ESC>:call CommentBlockStart(line("'<"),col("'<"),line("'>"),col("'>"),b:bcb,b:ecb)<CR>
noremap <leader>cls <ESC>:call CommentLinesStart(line("'<"),line("'>"),col("'<"),b:linec)<CR>


" CommentBlock() : Comments a block of text using block commenting
"       cb = Beginning comment string
"       ce = Ending comment string
"   The location for inserting the comments are:
"       fl = First Line
"       fc = First Column
"       ll = Last Line
"       lc = Last Column
function! CommentBlock(fl,fc,ll,lc,cb,ce)
    call cursor(a:ll,a:lc)
    exe "normal!i".a:ce
    call cursor(a:fl,a:fc)
    exe "normal!i".a:cb
endfunction
function! CommentBlockStart(fl,fc,ll,lc,cb,ce)
    call CommentBlock(a:fl,1,a:ll,1,a:cb,a:ce)
endfunction

" CommentLines() : Comments a block of lines at a particular column
"       cc = Comment character
"   The location for inserting the comments are:
"       fl = First line
"       ll = Last line
"       col = Column number (Allows block visual of comments adjacent to code
function! CommentLines(fl,ll,col,cc)
    let i=a:fl
    while i<=a:ll
        call cursor(i,a:col)
        exe "normal!i".a:cc
        let i=i+1
    endwhile
endfunction
function! CommentLinesStart(fl,ll,col,cc)
    call CommentLines(a:fl,a:ll,1,a:cc)
endfunction


" UnCommentBlock() : UnComments out a block of text
"   Looks through the block and removes all occurances of the start comment
"   string or end comment string
" FIXME: Not using the column identifiers
" XXX: Should I only remove the first Beginning comment and the last ending?
"function! UnCommentBlock(fl,fc,ll,lc,cb,ce)
function! UnCommentBlock(fl,ll,cb,ce)
    execute ":".a:fl.",".a:ll."s/".escape(a:cb,"/@")."//g"
    execute ":".a:fl.",".a:ll."s/".escape(a:ce,"/@")."//g"
endfunction


" UnCommentLines() : Removes first line comment characters from the specified lines
"   starting with the specified column.
"       cc = Comment character string
"       fl = First Line
"       ll = Last Line
"       col = Column number
function! UnCommentLines(fl,ll,col,cc)
    let cn=a:col-1
    execute ":".a:fl.",".a:ll."s/\\%>".cn."c".escape(a:cc,"/@")."//"
endfunction

" Set syntax
au BufRead,BufNewFile *.ino set syn=cpp
